

import 'package:flutter/material.dart';
import 'package:flutter_example/chapter_2/count.dart';
import 'package:flutter_example/chapter_2/route_demo.dart';
import 'package:flutter_example/chapter_2/state_manager_father.dart';
import 'package:flutter_example/chapter_2/state_manager_me.dart';
import 'package:flutter_example/chapter_2/state_manager_mixed.dart';



class MyRoute{
  static Map<String,WidgetBuilder> routes = {
    "TabX_A":(context)=>TabX_A(),
    "CountWidget":(context)=>CountWidget(),
    "ParentWidget":(context)=>ParentWidget(),
    "ParentWidgetC":(context)=>ParentWidgetC(),
    "NewRoutePage":(context)=>NewRoutePage(),
    "NewRoute":(context)=>NewRoute(text: ModalRoute.of(context)!.settings.arguments!.toString(),),
  };

  Future next(BuildContext context,String name){
    return Navigator.push(context, MaterialPageRoute(builder: getNewPage(name)));
  }

  WidgetBuilder getNewPage(String name){
    return routes[name]!;
  }
}