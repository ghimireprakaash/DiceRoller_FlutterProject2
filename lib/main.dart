import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Dice Roller",
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dice Roller"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
              child: Image.asset(
            "assets/$diceNumber.png",
            width: 250,
            height: 250,
          )),
          MaterialButton(
            onPressed: rollDice,
            color: Colors.cyan.shade400,
            child: const Text(
              "Roll",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Text(
            "Rolled Number is "+ diceNumber.toString(),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
