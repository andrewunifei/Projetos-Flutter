import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, this.text});

  final Function onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: InkWell(
        onTap: onTap,
        child: Ink(
          color: kDefaultCardColor,
          width: double.infinity,
          height: kBottomContainerHeight,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600
              ),
            ),
          ),
        ),
      ),
    );
  }
}
