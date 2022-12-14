import '../services/location.dart';
import '../services/networking.dart';
import '../utilities/constants.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class WeatherModel {

  Future<Map<String, dynamic>> getCityWeather(String cityName) async {
    ExternalConnection connection = ExternalConnection(
        url: '$kOpenWeatherMapURL?q=$cityName&appid=${dotenv.env['APIKEY']}&units=metric'
    );

    return await connection.getData();
  }

  Future<Map<String, dynamic>> getLocationWeather() async{
    Location location = Location();
    await location.getCurrentPosition();

    ExternalConnection connection = ExternalConnection(
        url: '$kOpenWeatherMapURL?lat=${location.latitude}&lon=${location.longitude}&appid=${dotenv.env['APIKEY']}&units=metric'
    );

    return await connection.getData();
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 20) {
      return 'Time for shorts and ๐';
    } else if (temp < 10) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }
}
