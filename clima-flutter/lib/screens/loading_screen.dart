import 'package:flutter/material.dart';
import '../services/location.dart';
import 'package:http/http.dart' as htpp;
import '../utilities/constants.dart';
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  void getLocation() async {
    try {
      Location location = Location();
      await location.getCurrentPosition();

      this.getData(location.longitude, location.latitude);
    }
    catch(e) {
      print(e);
    }
  }

  void getData(double longitude, double latitude) async {
    htpp.Response res = await htpp.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$kAPIKey'));
    int statusCode = res.statusCode;

    if(statusCode == 200) {
      final Map<String, dynamic> parsed = jsonDecode(res.body);

      double temp = parsed['main']['temp'];
      int condition = parsed['weather'][0]['id'];
      String cityName = parsed['name'];

      print(temp);
      print(condition);
      print(cityName);
    }
    else{
      print(statusCode);
    }
  }

  @override
  void initState() {
    super.initState();

    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
