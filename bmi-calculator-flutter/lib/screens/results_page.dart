import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottomButton.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.data});

  final Map data;

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
                        data['status'],
                        style: TextStyle(
                            color: data['color'],
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold
                        )
                      ),
                      Text(
                        data['bmi'],
                        style: kBMITextStyle
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          data['interpretation'],
                          textAlign: TextAlign.center,
                          style: kBodyTextStyle
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: BottomButton(
                  text: 'RE-CALCULATE',
                  onTap: () {
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
