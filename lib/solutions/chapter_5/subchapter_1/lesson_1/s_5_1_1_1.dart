import 'package:flutter/material.dart';

class S5111 extends StatefulWidget {
  const S5111({Key? key}) : super(key: key);

  @override
  State<S5111> createState() => _S5111State();
}

class _S5111State extends State<S5111> {
  @override
  Widget build(BuildContext context) {
    bool light = true;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("Hello World!"),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 48.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            ],
          ),
        ),
        Switch(
            activeTrackColor: Colors.orange.withOpacity(0.5),
            activeColor: Colors.orange,
            value: light,
            onChanged: (bool value) => setState(() {
                  light = value;
                }))
      ],
    );
  }
}
