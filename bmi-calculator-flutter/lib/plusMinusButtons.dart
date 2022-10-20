import 'package:flutter/material.dart';

Widget plusMinusButtons = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.teal[600]
    ),
    SizedBox(
        width: 10,
    ),
    FloatingActionButton(
        child: Icon(
          Icons.remove,
          color: Colors.white,
        ),
        backgroundColor: Colors.teal[600]
    ),
  ]
);