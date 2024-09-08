import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceIndex = 1;

  void diceRoll() {
    setState(() {
      diceIndex = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/image/dice-$diceIndex.png',
          width: 250,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: diceRoll,
          style: TextButton.styleFrom(
            backgroundColor: Colors.grey.withOpacity(.25),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
            child: Text('Roll Dice'),
          ),
        ),
      ],
    );
  }
}
