import 'package:flutter/material.dart';

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
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff1d1e33),
                        ),
                        margin: EdgeInsets.all(15),
                    ),
                  ),
                  Expanded(
                    child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff1d1e33),
                    ),
                    margin: EdgeInsets.all(15),
                    ),
                  )
                ],
              ),
            ),
            Expanded(child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff1d1e33),
              ),
              margin: EdgeInsets.all(15),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff1d1e33),
                        ),
                        margin: EdgeInsets.all(15),
                      )
                  ),
                  Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff1d1e33),
                        ),
                        margin: EdgeInsets.all(15),
                      ))
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}