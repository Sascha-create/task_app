import 'package:flutter/material.dart';

class S4523 extends StatefulWidget {
  const S4523({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => MyNameWidget();
}

class MyNameWidget extends State<S4523> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name),
        ElevatedButton(
          onPressed: () {
            name = "Sascha";
            setState(() {});
          },
          child: const Text("Name anzeigen"),
        )
      ],
    );
  }
}
