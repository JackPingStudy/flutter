
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CountWidget extends StatefulWidget{
  final int initCount = 1;

  @override
  State createState() {
    return CountWidgetState();
  }
}

class CountWidgetState extends State<CountWidget>{
  int count = 0;

  @override
  void initState() {
    super.initState();
    count = widget.initCount;
    print("initState");
  }
  @override
  void didUpdateWidget(CountWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget ");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
      return Scaffold(
        body: Center(
          child: TextButton(
            child: Text('$count'),
            onPressed: (){
              setState(()=>++count);
            },
          ),
        ),
      );
  }
}