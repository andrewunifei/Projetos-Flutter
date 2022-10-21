import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.contentIcon, @required this.functionality});

  final Widget contentIcon;
  final Function functionality;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: functionality,
      shape: CircleBorder(),
      fillColor: Colors.teal[600],
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      child: contentIcon,
    );
  }
}
