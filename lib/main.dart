import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('my name '),
            backgroundColor: const Color.fromARGB(255, 19, 237, 19),
          ),
          body: const GradientContainer(
              Color.fromARGB(255, 0, 55, 255), Color.fromARGB(255, 255, 0, 0))),
    ),
  );
}
