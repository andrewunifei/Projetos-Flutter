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
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: ListTile(
                    leading: Icon(
                        Icons.phone,
                        color: Colors.teal
                    ),
                    title: Text(
                        '+55 9 9999-9999',
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'SourceSansPro'
                        )
                    )
                  ),
                )
              ),
              Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.teal
                      ),
                      title: Text(
                          'andrewunifei@gmail.com',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'SourceSansPro'
                          )
                      )
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
