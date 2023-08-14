import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mudra_yojana/services/api_service/http.dart';

class HomeScreenApi {
  static Future getData() async {
    try {
      http.Response? response = await HttpService.getAPi(
          url:
              "https://gist.githubusercontent.com/AndroidRL/4bd0b6ac5b9d3b26fdc2e6e7fa9307a7/raw/LoanMudra");
      if (response != null && response.statusCode == 200) {
        print(response.body);
        return jsonEncode(response.body);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
