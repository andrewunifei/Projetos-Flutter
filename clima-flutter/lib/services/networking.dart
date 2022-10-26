import 'package:http/http.dart' as http;
import 'dart:convert';

class ExternalConnection {
  ExternalConnection({this.url});

  final String url;

  Future<Map<String, dynamic>> getData() async {
    http.Response res = await http.get(Uri.parse(this.url));
    int statusCode = res.statusCode;
    Map decoded;

    if(statusCode == 200) {
      decoded = jsonDecode(res.body);
      decoded['statusCode'] = statusCode;

      return decoded;
    }
    else{
      return {'statusCode': statusCode};
    }
  }
}