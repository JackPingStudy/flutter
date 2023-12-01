
import 'package:flutter/material.dart';
import 'package:flutter_example/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
      // routes: MyRoute.routes,
      onGenerateRoute:(settings){
        String name = settings.name!;
        return MaterialPageRoute(builder: MyRoute.routes[name]!);
      } ,
    );
  }
}

class Home extends StatelessWidget {
  toNewPage(BuildContext context) {
    // MyRoute().next(context,"NewRoutePage");
    print("12344321");
    Navigator.of(context).pushNamed("NewRoute",arguments: "3344");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HOME")),
      body: Center(
        child: TextButton(
          onPressed:() { toNewPage(context);},
          child: Text("NEXT"),
        ),
      ),
    );
  }
}

