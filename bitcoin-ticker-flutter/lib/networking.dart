import 'dart:convert';

import 'package:http/http.dart' as http;

class APIConnection {
  APIConnection({this.url});

  final String url;

  Future<Map<String, dynamic>> getData() async {
    http.Response res = await http.get(Uri.parse(this.url));
    int statusCode = res.statusCode;
    Map<String, dynamic> decoded;

    if(statusCode == 200){
      decoded = jsonDecode(res.body);
      decoded['statusCode'] = statusCode;

      return decoded;
    }
    else{
      return {'statusCode': statusCode};
    }
  }
}