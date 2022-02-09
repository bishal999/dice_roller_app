import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice Roller App",
      home: diceApp(),
    );
  }
}

class diceApp extends StatefulWidget {
  const diceApp({Key? key}) : super(key: key);

  @override
  _diceAppState createState() => _diceAppState();
}

class _diceAppState extends State<diceApp> {
  int dicenumber=1;
  changedice()
  {
    setState(() {
      dicenumber=Random().nextInt(6)+1;
     
    });

    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dice Roller"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Image.asset(
              "assets/$dicenumber.jpg",
              height: 250,
              width: 250,
            ),
          ),
          MaterialButton(
              color: Colors.blueAccent,
              child: Text(
                "Roll",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: changedice),
          SizedBox(
            height: 150,
          ),
          Text(
            "#FlutterWithBishalKafle",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
