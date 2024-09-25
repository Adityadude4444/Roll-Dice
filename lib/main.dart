import 'package:flutter/material.dart';
import 'package:first_app/gradiant_container.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
          body: GradiantContainer(
    colors: [
      Color.fromARGB(176, 107, 27, 200),
      Color.fromARGB(245, 60, 7, 144)
    ],
  ))));
}
