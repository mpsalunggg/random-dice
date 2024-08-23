import 'package:flutter/material.dart';
import 'package:random_dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [
          Color.fromARGB(255, 255, 255, 255),
          Color.fromARGB(255, 195, 195, 195),
        ]),
      ),
    ),
  );
}