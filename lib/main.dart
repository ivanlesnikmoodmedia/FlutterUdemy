import 'package:flutter/material.dart';
import 'dice_roller.dart';


void main() {
  runApp(
    MaterialApp(
    home: Scaffold(
      body: GradientContainer()
      )
      )
      );
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  void rollDice() {

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 45, 7, 98),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DiceRoller(),
          ],
        ),
      ),
    );
  }
}