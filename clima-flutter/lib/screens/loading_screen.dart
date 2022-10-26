import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  WeatherModel model = WeatherModel();

  Future<void> getData() async {
    try {
      Map<String, dynamic> data = await this.model.getLocationWeather();

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
