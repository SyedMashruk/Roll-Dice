import 'package:flutter/material.dart';

import 'package:roll_dice/gradient_container.dart';

void main() {
  List<Color> clr = [
    const Color.fromARGB(255, 47, 0, 100),
    const Color.fromARGB(255, 55, 0, 117),
    const Color.fromARGB(255, 69, 0, 148),
  ];
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(clr),
      ),
    ),
  );
}
