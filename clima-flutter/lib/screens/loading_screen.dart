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

  double longitude;
  double latitude;

  Future<void> getData() async {
    try {
      Location location = Location();
      await location.getCurrentPosition();

      this.longitude = location.longitude;
      this.latitude = location.latitude;

      ExternalConnection connection = ExternalConnection(
          url: 'https://api.openweathermap.org/data/2.5/weather?lat=${this.latitude}&lon=${this.longitude}&appid=${kAPIKey}'
      );

      Map <String, dynamic> parsed = await connection.getData();

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LocationScreen())
      );
      // if(parsed['statusCode'] == 200) {
      //
      // }
      // else{
      //   print(parsed['statusCode']);
      // }
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
