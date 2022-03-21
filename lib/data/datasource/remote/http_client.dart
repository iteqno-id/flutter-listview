import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:listview_widget/data/model/base_response.dart';

class HttpClient {
  static Future<BaseResponse> get(String path, Map<String, String> query) async {
    try {
      final response = await http.get(Uri.https('randomuser.me', path, query));
      if (response.statusCode == 200) {
        return BaseResponse.fromJson(jsonDecode(response.body));
      } else {
        return BaseResponse(results: []);
      }
    } catch (e) {
      return BaseResponse(results: []);
    }
  }
}
