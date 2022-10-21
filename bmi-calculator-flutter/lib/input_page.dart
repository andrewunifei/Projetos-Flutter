import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'reusable_card_content.dart';
import 'constants.dart';
import 'RoundIconButton.dart';
import 'results_page.dart';

enum Gender {
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      cardColor: selectedGender == Gender.male ? kActiveColor : kSexCardColor,
                      cardChild: ReusableCardContent(
                        contentIcon: Icon(
                          FontAwesomeIcons.mars,
                          size: kIconSize,
                        ),
                        contentText: Text('MALE',
                            style: kLabelTextStyle,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      cardColor: selectedGender == Gender.female ? kActiveColor : kSexCardColor,
                      cardChild: ReusableCardContent(
                        contentIcon: Icon(
                              FontAwesomeIcons.venus,
                              size: kIconSize,
                        ),
                        contentText: Text('FEMALE',
                            style: kLabelTextStyle,
                        ),
                      )
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: ReusableCard(
                  cardColor: Colors.teal[600],
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'HEIGHT',
                          style: kLabelTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: kCardFontStyle,
                          ),
                          Text(
                            'cm',
                            style: kLabelTextStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                            thumbShape: RoundSliderThumbShape(
                              enabledThumbRadius: 10.0,
                            ),
                            overlayShape: RoundSliderOverlayShape(
                              overlayRadius: 20.0,
                            ),
                            thumbColor: Colors.teal[900],
                            activeTrackColor: Colors.teal[900],
                            inactiveTrackColor: Colors.teal[100],
                            overlayColor: Color(0x29004d40),
                        ),
                        child: Slider(
                          onChanged: (double newHeight) {
                            setState(() {
                              height = newHeight.toInt();
                            });
                          },
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                        ),
                      )
                    ]
                  ),
                ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                          cardColor: Color(0xff455a64),
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'WEIGHT',
                                style: kLabelTextStyle,
                              ),
                              Text(
                                weight.toString(),
                                style: kCardFontStyle,
                              ),
                              SizedBox(
                                height: 10
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconButton(
                                    contentIcon: Icon(
                                        FontAwesomeIcons.plus
                                    ),
                                    functionality: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 10
                                  ),
                                  RoundIconButton(
                                    contentIcon: Icon(
                                        FontAwesomeIcons.minus
                                    ),
                                    functionality: () {
                                      setState(() {
                                        weight--;
                                      });
                                    }
                                  )
                                ],
                              )
                            ],
                          )
                      ),
                  ),
                  Expanded(
                      child: ReusableCard(
                          cardColor: Color(0xff455a64),
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'AGE',
                                style: kLabelTextStyle,
                              ),
                              Text(
                                age.toString(),
                                style: kCardFontStyle,
                              ),
                              SizedBox(
                                  height: 10
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundIconButton(
                                    contentIcon: Icon(
                                        FontAwesomeIcons.plus
                                    ),
                                    functionality: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                      width: 10
                                  ),
                                  RoundIconButton(
                                    contentIcon: Icon(
                                        FontAwesomeIcons.minus
                                    ),
                                    functionality: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                  )
                                ],
                              )
                            ],
                          )
                      ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultsPage())
                  );
                },
                child: Ink(
                  color: kSexCardColor,
                  width: double.infinity,
                  height: kBottomContainerHeight,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'CALCULATE',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

