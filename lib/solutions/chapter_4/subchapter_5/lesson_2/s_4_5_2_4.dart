import 'package:flutter/material.dart';

class S4524 extends StatefulWidget {
  const S4524({Key? key}) : super(key: key);
  @override
  State<S4524> createState() => ShowHideNameWidget();
}

class ShowHideNameWidget extends State<S4524> {
  String nameHide = "";
  String nameButton = "Name anzeigen";
  bool isButtonpressed = false;

  void showHideButton() {
    if (nameHide == "") {
      nameHide = "Sascha";
      nameButton = "Name verstecken";
    } else {
      nameHide = "";
      nameButton = "Name anzeigen";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(nameHide),
        ElevatedButton(
          onPressed: showHideButton,
          child: Text(nameButton),
        )
      ],
    );
  }
}
