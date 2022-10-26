import '../services/location.dart';
import '../services/networking.dart';
import '../utilities/constants.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class WeatherModel {
  Future<Map<String, dynamic>> getLocationWeather() async{
    Location location = Location();
    await location.getCurrentPosition();

    ExternalConnection connection = ExternalConnection(
        url: '${kOpenWeatherMapURL}?lat=${location.latitude}&lon=${location.longitude}&appid=${dotenv.env['APIKEY']}&units=metric'
    );

    return await connection.getData();
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
