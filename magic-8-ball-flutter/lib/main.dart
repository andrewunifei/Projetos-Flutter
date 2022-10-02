import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Me pergunte qualquer coisa'),
          backgroundColor: Colors.purple[900],
      ),
      body: Ball()
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballState = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple[700],
      child: TextButton(
        onPressed: (){
          setState(() {
            ballState = Random().nextInt(5) + 1;
          });
        },
        child: Center(
            child: Image.asset('images/ball$ballState.png')
        ),
      )
    );
  }
}

