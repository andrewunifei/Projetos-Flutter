import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';

class InputField extends StatelessWidget {
  InputField({
    this.obscureText = false,
    this.hintText,
    @required this.onChanged
  });

  final bool obscureText;
  final String hintText;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: this.obscureText,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black),
      onChanged: this.onChanged,
      decoration: kInputDecoration.copyWith(
        hintText: this.hintText,
      ),
    );
  }
}