import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:devcamper/config.dart';
import 'package:devcamper/controllers/login/login_shared_service.dart';
import 'package:devcamper/models/bootcamp/bootcamp_request_model.dart';
import 'package:devcamper/models/bootcamp/bootcamp_response_model.dart';
import 'package:devcamper/models/bootcamp/bootcamps_response_model.dart';
import 'package:devcamper/models/course/course_request_model.dart';
import 'package:devcamper/models/course/course_response_model.dart';
import 'package:http/http.dart' as http;

class CourseService {
  static var client = http.Client();

  static Future<BootcampsResponseModel> getBootcampCourses() async {
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": true.toString(),
    };

    var url = Uri.parse(Config.apiURL + Config.bootcampsAPI);

    var response = await client.get(url, headers: requestHeaders);

    return bootcampsResponseJson(response.body);
  }

  static Future<CourseResponseModel> getCourse(courseId) async {
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": true.toString(),
    };

    var url = Uri.parse("${Config.apiURL}${Config.coursesAPI}/" + courseId);

    var response = await client.get(url, headers: requestHeaders);

    return courseResponseJson(response.body);
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

  static Future<CourseResponseModel> addCourse(
      CourseRequestModel model, bootcampId) async {
    var loginDetails = await LoginSharedService.loginDetails();
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": true.toString(),
      "Authorization": "Bearer ${loginDetails[0]}"
    };

    var url = Uri.parse(
        "${Config.apiURL}${Config.bootcampsAPI}/${bootcampId}/courses");

    var response = await client.post(url,
        headers: requestHeaders, body: jsonEncode(model));

    return courseResponseJson(response.body);
  }

  static Future<CourseResponseModel> updateCourse(
      CourseRequestModel model, courseId) async {
    var loginDetails = await LoginSharedService.loginDetails();
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": true.toString(),
      "Authorization": "Bearer ${loginDetails[0]}"
    };

    var url = Uri.parse("${Config.apiURL}${Config.coursesAPI}/" + courseId);

    var response =
        await client.put(url, headers: requestHeaders, body: jsonEncode(model));

    return courseResponseJson(response.body);
  }

  static Future<bool> removeCourse(courseId) async {
    var loginDetails = await LoginSharedService.loginDetails();
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": true.toString(),
      "Authorization": "Bearer ${loginDetails[0]}"
    };

    var url = Uri.parse("${Config.apiURL}${Config.coursesAPI}/" + courseId);

    var response = await client.delete(url, headers: requestHeaders);

    if (response.statusCode == 200) {
      return true;
    }

    return false;
  }
}
