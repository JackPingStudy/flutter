

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ParentWidget extends StatefulWidget{

  @override
  State createState() {
    return ParentWidgetState();
  }
}

class ParentWidgetState extends State<ParentWidget>{
  bool active = true;

  void handleTapBoxChanged(bool newValue){
    setState(() {
      active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TapBox_B(
        active: active,
        onChanged: handleTapBoxChanged,
      ),
    );
  }
}

class TapBox_B extends StatelessWidget{
  TapBox_B({Key? key,this.active = false,required this.onChanged}):super(key: key){
    print("TapBox_B construct active $active");
  }

  final bool active;
  final ValueChanged<bool> onChanged;

  void handleTap(){
    onChanged(!active);
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: handleTap,
      child: Container(
        child: Center(
          child: Text(
            active? "active":"inactive",
            style: TextStyle(fontSize: 32,color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: active?Colors.lightGreen[700]:Colors.grey[600]
        ),
      )

    );
  }
}