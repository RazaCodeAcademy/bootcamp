import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:devcamper/config.dart';
import 'package:devcamper/controllers/login/login_shared_service.dart';
import 'package:devcamper/models/bootcamp/bootcamp_request_model.dart';
import 'package:devcamper/models/bootcamp/bootcamp_response_model.dart';
import 'package:devcamper/models/bootcamp/bootcamps_response_model.dart';
import 'package:devcamper/models/photo/photo_request_model.dart';
import 'package:devcamper/models/photo/photo_response_model.dart';
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

  static Future<BootcampResponseModel> addBootcamp(
      BootcampRequestModel model) async {
    var loginDetails = await LoginSharedService.loginDetails();
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": true.toString(),
      "Authorization": "Bearer ${loginDetails[0]}"
    };

    var url = Uri.parse(Config.apiURL + Config.bootcampAPI);

    var response = await client.post(url,
        headers: requestHeaders, body: jsonEncode(model));

    return bootcampResponseJson(response.body);
  }

  static Future<BootcampResponseModel> updateBootcamp(
      BootcampRequestModel model, bootcampId) async {
    var loginDetails = await LoginSharedService.loginDetails();
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": true.toString(),
      "Authorization": "Bearer ${loginDetails[0]}"
    };

    var url = Uri.parse(Config.apiURL + Config.bootcampAPI + bootcampId);

    var response =
        await client.put(url, headers: requestHeaders, body: jsonEncode(model));

    return bootcampResponseJson(response.body);
  }

  static Future<bool> updateBootcampPhoto(File? file, bootcampId) async {
    // print(file);
    var loginDetails = await LoginSharedService.loginDetails();
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": true.toString(),
      "Authorization": "Bearer ${loginDetails[0]}"
    };

    print('object');
    var stream = http.ByteStream(file!.openRead());
    var length = await file.length();

    var url =
        Uri.parse("${Config.apiURL + Config.bootcampAPI + bootcampId}/photo");

    var request = http.MultipartRequest('put', url);

    request.fields['title'] = 'static title';

    var multiport = http.MultipartFile('file', stream, length);

    request.files.add(multiport);


    var response = await request.send();

    if (response.statusCode == 200) {
      return true;
    } else {
      return true;
    }

    // var response = await client.put(url,
    //     headers: requestHeaders, body: file?.readAsBytesSync());
  }
}
