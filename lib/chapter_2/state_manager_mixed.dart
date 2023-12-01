
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ParentWidgetC extends StatefulWidget{

  @override
  State createState() {
    return ParentWidgetCState();
  }
}

class ParentWidgetCState extends State<ParentWidgetC>{

  bool active = false;

  void handleTapBoxChanged(bool newValue){
    setState(() {
      active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
          child: TapBoxC(active: active,onChanged: handleTapBoxChanged),
    );
  }
}

class TapBoxC extends StatefulWidget{

  TapBoxC({Key? key,this.active = false,required this.onChanged}):super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;

  @override
  TapBoxCState createState() {
    return TapBoxCState();
  }
}

class TapBoxCState extends State<TapBoxC>{
  bool highLight = false;

  void handleTapDown(TapDownDetails details){
    setState(() {
      highLight = true;
    });
  }

  void handleTapUp(TapUpDetails details){
    setState(() {
      highLight = false;
    });
  }

  void handleTapCancel(){
    setState(() {
      highLight = false;
    });
  }

  void handleTap(){
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
        onTapDown: handleTapDown,
        onTapUp: handleTapUp,
        onTapCancel: handleTapCancel,
        onTap: handleTap,
        child: Container(
          child: Center(
            child: Text(
              widget.active?"active":"inactive",
              style: TextStyle(color: Colors.white,fontSize: 32.0),
            ),
          ),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
            border: highLight?Border.all(color: Colors.teal, width: 10.0,):null
          ),
        ),

      );
  }
}