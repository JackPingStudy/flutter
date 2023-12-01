import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  NewRoute({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("New route"),
        ),
        body: Column(
          children: [
            Text("text:$text"),
            ElevatedButton(
                onPressed: () => Navigator.pop(context, "back_value"),
                child: Text("back"))
          ],
        ));
  }
}

class NewRoutePage extends StatelessWidget {
  Future<void> toNext(BuildContext context) async {
    var newRoute =  Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return NewRoute(
            text: "a_value",
          );
        },
        maintainState: true,
        fullscreenDialog: true));
    var value = await newRoute;
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:
            TextButton(onPressed: () => {toNext(context)}, child: Text("NEXT")),
      ),
    );
  }
}
