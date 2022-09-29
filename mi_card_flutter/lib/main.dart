import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/profile.jpeg'),
              ),
              Text(
                'Andrew Enrique',
                style: TextStyle(
                    fontFamily: 'Righteous',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'Computer Scientist',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 25.0,
                    color: Colors.blueGrey[800],
                ),
              ),
              Column(
                  children: [
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Row(
                        children: [
                          Icon(
                              Icons.phone,
                              color: Colors.teal
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                              '+55 99 9 9999-9999',
                              style: TextStyle(
                                color: Colors.blueGrey[900],
                                fontFamily: 'SourceSansPro',
                                fontSize: 20.0,
                              )
                          )
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                      padding: EdgeInsets.symmetric(vertical:10, horizontal: 15),
                      child: Row(
                        children: [
                          Icon(
                            Icons.mail,
                            color: Colors.teal
                          ),
                          SizedBox(
                            width: 10.0
                          ),
                          Text(
                            'andrewunifei@gmail.com',
                            style: TextStyle(
                              color: Colors.blueGrey[900],
                              fontFamily: 'SourceSansPro',
                              fontSize: 20.0
                            )
                          )
                        ],
                      )
                    )
                  ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
