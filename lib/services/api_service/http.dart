import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class HttpService {
  static Future<http.Response?> getAPi({required String url}) async {
    try {
      if (kDebugMode) {
        print("Url====> $url");
      }
      return await http.get(Uri.parse(url));
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}
