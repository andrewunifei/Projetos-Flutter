import 'package:flutter/material.dart';
import '../services/location.dart';
import '../services/networking.dart';
import '../utilities/constants.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Future<void> getData() async {
    try {
      Location location = Location();
      await location.getCurrentPosition();

      ExternalConnection connection = ExternalConnection(
          url: 'https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&lon=${location.longitude}&appid=${kAPIKey}&units=metric'
      );

      Map <String, dynamic> data = await connection.getData();

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LocationScreen(
          weatherData: data,
        ))
      );
    }
    catch(e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();

    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SpinKitSpinningLines(
            color: Colors.white,
            size: 50.0,
          ),
        ),
      );
  }
}
