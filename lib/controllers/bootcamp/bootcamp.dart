import 'dart:async';

import 'package:devcamper/config.dart';
import 'package:devcamper/controllers/login/login_shared_service.dart';
import 'package:devcamper/models/bootcamp/bootcamp_response_model.dart';
import 'package:devcamper/models/bootcamp/bootcamps_response_model.dart';
import 'package:http/http.dart' as http;

class BootcampService {
  static var client = http.Client();

  static Future<BootcampsResponseModel> getBootcamps() async {
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": true.toString(),
    };

    var url = Uri.parse(Config.apiURL + Config.bootcampsAPI);

    var response = await client.get(url, headers: requestHeaders);

    return bootcampsResponseJson(response.body);
  }

  static Future<BootcampResponseModel> getBootcamp(bootcampId) async {
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": true.toString(),
    };

    var url = Uri.parse(Config.apiURL + Config.bootcampAPI + bootcampId);

    var response = await client.get(url, headers: requestHeaders);

    return bootcampResponseJson(response.body);
  }

  static Future<BootcampResponseModel> getUserBootcamp() async {
    var loginDetails = await LoginSharedService.loginDetails();
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": true.toString(),
      "Authorization": "Bearer ${loginDetails[0]}"

    };

    var url = Uri.parse(Config.apiURL + Config.userBootcampAPI);

    var response = await client.get(url, headers: requestHeaders);

    return bootcampResponseJson(response.body);
  }
}
