import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _Dicerollerstate();
  }
}

class _Dicerollerstate extends State<DiceRoller> {
  var currentdice = 2;

  void rolldice() {
    setState(() {
      currentdice = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentdice.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                textStyle: const TextStyle(
                    fontSize: 28, color: Color.fromARGB(255, 255, 255, 255))),
            child: const Text(
              "Roll dice",
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
            ))
      ],
    );
  }
}
