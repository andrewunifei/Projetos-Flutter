import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Eu sou rico"),
          backgroundColor: Colors.purple[700],
        ),
        backgroundColor: Colors.purple[100],
        body: const Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ), // Esqueleto
    ),
  );
}
