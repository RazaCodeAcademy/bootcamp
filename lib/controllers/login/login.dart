import 'dart:async';
import 'dart:convert';

import 'package:devcamper/config.dart';
import 'package:devcamper/controllers/login/login_shared_service.dart';
import 'package:devcamper/models/login/login_request_model.dart';
import 'package:devcamper/models/login/login_response_model.dart';
import 'package:http/http.dart' as http;

class LoginService {
  static var client = http.Client();

  static Future<bool> login(LoginRequestModel model) async {
    Map<String, String>? requestHeader = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Credentials": true.toString(),
    };

    var url = Uri.parse(Config.apiURL + Config.loginAPI);

    var response = await client.post(url,
        headers: requestHeader, body: jsonEncode(model.toJson()));

    if (response.statusCode == 200) {
      await LoginSharedService.setLoginDetails(
          loginResponseJson(response.body));
      return true;
    } else {
      return false;
    }
  }
}
