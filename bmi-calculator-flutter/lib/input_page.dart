import 'package:flutter/material.dart';

const reusableCardColor = Color(0xff1d1e33);

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xffbe1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(reusableCardColor),
                  ),
                  Expanded(
                    child: ReusableCard(reusableCardColor),
                  )
                ],
              ),
            ),
            Expanded(
                child: ReusableCard(reusableCardColor),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(reusableCardColor),
                  ),
                  Expanded(
                      child: ReusableCard(reusableCardColor),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomContainerColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.cardColor, this.cardChild});

  final Color cardColor;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: cardColor,
        ),
        child: cardChild,
        margin: EdgeInsets.all(15),
    );
  }
}