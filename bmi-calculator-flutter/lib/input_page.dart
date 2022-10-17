import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                    child: ReusableCard(
                      cardColor: reusableCardColor,
                      cardChild: ReusableCardContent(
                        contentIcon: Icon(
                          FontAwesomeIcons.mars,
                          size: 80.0
                        ),
                        contentText: Text('MALE',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xff8d8e98)
                            )
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      cardColor: reusableCardColor,
                      cardChild: ReusableCardContent(
                        contentIcon: Icon(
                              FontAwesomeIcons.venus,
                              size: 80.0,
                        ),
                        contentText: Text('FEMALE',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xff8d8e98),
                            ),
                        ),
                      )
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: ReusableCard(
                    cardColor: reusableCardColor
                ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                          cardColor: reusableCardColor
                      ),
                  ),
                  Expanded(
                      child: ReusableCard(
                          cardColor: reusableCardColor
                      ),
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