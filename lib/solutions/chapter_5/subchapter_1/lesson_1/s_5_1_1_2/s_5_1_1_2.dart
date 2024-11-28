import 'package:flutter/material.dart';

class S5112 extends StatelessWidget {
  const S5112({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/tasks/lama_diana.png"),
          const Descriptions(title: "Name", description: "Diana das Lama"),
          const Descriptions(title: "Gewicht", description: "120 kg"),
          const Descriptions(title: "Größe", description: "1,80 m"),
          const Descriptions(title: "Lieblingsessen", description: "Gras"),
        ],
      ),
    );
  }
}

class Descriptions extends StatelessWidget {
  const Descriptions({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(style: Theme.of(context).textTheme.headlineMedium, title),
        ),
        Text(style: Theme.of(context).textTheme.bodyMedium, description),
      ],
    );
  }
}

ThemeData profileTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
      centerTitle: false,
      color: Colors.blue,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      )),
  textTheme:
      const TextTheme(headlineMedium: TextStyle(fontWeight: FontWeight.w600)),
);
