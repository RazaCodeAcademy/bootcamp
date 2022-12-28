import 'dart:async';
import 'dart:convert';

import 'package:devcamper/config.dart';
import 'package:devcamper/models/register/register_request_model.dart';
import 'package:devcamper/models/register/register_response_model.dart';
import 'package:http/http.dart' as http;

class RegisterService {
  static var client = http.Client();

  static Future<RegisterResponseModel> register(
      RegisterRequestModel model) async {
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": true.toString(),
    };

    var url = Uri.parse(Config.apiURL + Config.registerAPI);

    var response = await client.post(url,
        headers: requestHeaders, body: jsonEncode(model.toJson()));

    return registerResponseJson(response.body);
  }
}
