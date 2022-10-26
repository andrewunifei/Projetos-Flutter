import 'package:geolocator/geolocator.dart';

class Location{
  double latitude, longitude;

  Future<void> getCurrentPosition() async{
    try {
      await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

      this.latitude = position.latitude;
      this.longitude = position.longitude;
    }
    catch(e) {
      print(e);
    }
  }
}