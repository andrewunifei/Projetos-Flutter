import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottomButton.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR')
      ),
      body:
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Your result',
                    style: kTitleTextStyle
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: ReusableCard(
                  cardColor: Color(0xff455a64),
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Normal',
                        style: kResultTextStyle
                      ),
                      Text(
                        '18.3',
                        style: kBMITextStyle
                      ),
                      Text(
                        'Your BMI result is quite low, you should eat more!',
                        textAlign: TextAlign.center,
                        style: kBodyTextStyle
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: BottomButton(
                  text: 'RE-CALCULATE',
                  route: () {
                    Navigator.pop(
                        context
                    );
                  },
                ),
              ),
            ],
          ),
        )
    );
  }
}
