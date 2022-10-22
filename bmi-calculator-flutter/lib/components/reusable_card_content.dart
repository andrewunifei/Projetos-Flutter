import 'package:flutter/material.dart';

class ReusableCardContent extends StatelessWidget {
  ReusableCardContent({this.contentIcon, this.contentText});

  final Icon contentIcon;
  final Text contentText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        contentIcon,
        SizedBox(
          height: 15,
        ),
        contentText,
      ],
    );
  }
}