import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  void setDiceFace(){
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children:[
          Expanded(
            child: TextButton(
              onPressed: (){
                this.setDiceFace();
              },
              child: Image.asset('images/dice$leftDice.png'),),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                setState(() {
                  this.setDiceFace();
                });
              },
              child: Image.asset('images/dice$rightDice.png'),),
          ),
        ],
      ),
    );
  }
}
