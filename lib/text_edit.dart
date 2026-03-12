import 'package:flutter/material.dart';

class TextEdit extends StatelessWidget {
  const TextEdit(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 255), fontSize: 28),
    );
  }
}
