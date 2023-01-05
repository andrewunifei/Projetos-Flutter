import 'package:flutter/material.dart';
import 'package:flash_chat/constants.dart';

class InputField extends StatelessWidget {
  InputField({
    this.obscureText = false,
    required this.hintText,
    required this.onChanged
  });

  final bool obscureText;
  final String hintText;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.black),
      onChanged: onChanged,
      decoration: kInputDecoration.copyWith(
        hintText: hintText,
      ),
    );
  }
}