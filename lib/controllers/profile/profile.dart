import 'dart:async';
import 'dart:convert';

import 'package:devcamper/config.dart';
import 'package:devcamper/controllers/login/login_shared_service.dart';
import 'package:devcamper/models/profile/profile_response_model.dart';
import 'package:devcamper/models/profile/update_password_request_model.dart';
import 'package:devcamper/models/profile/update_profile_request_model.dart';
import 'package:devcamper/models/register/register_response_model.dart';
import 'package:http/http.dart' as http;

class ProfileService {
  static var client = http.Client();

  static Future<ProfileResponseModel> getProfile() async {
    var loginDetails = await LoginSharedService.loginDetails();
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": true.toString(),
      "Authorization": "Bearer ${loginDetails[0]}"
    };

    var url = Uri.parse(Config.apiURL + Config.userProfileAPI);

    var response = await client.get(url, headers: requestHeaders);

    return profileResponseJson(response.body);
  }

  static Future<ProfileResponseModel> updateProfile(
      UpdateProfileRequestModel model) async {
    var loginDetails = await LoginSharedService.loginDetails();
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": true.toString(),
      "Authorization": "Bearer ${loginDetails[0]}"
    };

    var url = Uri.parse(Config.apiURL + Config.userProfileUpdateAPI);

    var response = await client.put(url,
        headers: requestHeaders, body: jsonEncode(model.toJson()));

    return profileResponseJson(response.body);
  }

  static Future<RegisterResponseModel> updatePassword(
      UpdatePasswordRequestModel model) async {
    var loginDetails = await LoginSharedService.loginDetails();
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": true.toString(),
      "Authorization": "Bearer ${loginDetails[0]}"
    };

    var url = Uri.parse(Config.apiURL + Config.userPasswordUpdateAPI);

    var response = await client.post(url,
        headers: requestHeaders, body: jsonEncode(model.toJson()));

    return registerResponseJson(response.body);
  }
}
