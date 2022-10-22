import 'dart:math';
import 'package:flutter/material.dart';

class Brain{
  Brain({this.height, this.weight});

  int height;
  int weight;

  double _calculateBMI(){
    return weight/pow(height/100, 2);
  }

  Map getResults(){
    Map data;

    double _bmi = _calculateBMI();

    if(_bmi >= 25){
      data = {
        'status': 'OVERWEIGHT',
        'interpretation': 'You have a higher than normal body weight. Try to exercise more.',
        'color': Color(0xffff0000),
        'bmi': _bmi.toStringAsFixed(1)
      };

      return data;
    }
    else if(_bmi > 18.5){
      data = {
        'status': 'NORMAL',
        'interpretation': 'You have a normal body weight. Good job!',
        'color': Color(0xff24d876),
        'bmi': _bmi.toStringAsFixed(1)
      };

      return data;
    }
    else{
      data = {
        'status': 'UNDERWEIGHT',
        'interpretation': 'You have a lower than normal body weight. You can eat a bit more.',
        'color': Color(0xffff0000),
        'bmi': _bmi.toStringAsFixed(1)
      };

      return data;
    }
  }
}