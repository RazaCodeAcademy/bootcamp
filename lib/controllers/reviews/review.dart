import 'dart:async';
import 'dart:convert';

import 'package:devcamper/config.dart';
import 'package:devcamper/controllers/login/login_shared_service.dart';
import 'package:devcamper/models/review/review_request_model.dart';
import 'package:devcamper/models/review/review_response_model.dart';
import 'package:devcamper/models/review/reviews_response_model.dart';
import 'package:http/http.dart' as http;

class ReviewService {
  static var client = http.Client();

  static Future<ReviewResponseModel> postBootcampReview(ReviewRequestModel model, bootcampId) async {
    var loginDetails = await LoginSharedService.loginDetails();
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": true.toString(),
      "Authorization": "Bearer ${loginDetails[0]}"
    };

    var url = Uri.parse('${Config.apiURL + Config.bootcampReviewsAPI + bootcampId}/reviews');

    var response = await client.post(url, headers: requestHeaders, body: jsonEncode(model));

    return reviewResponseJson(response.body);
  }

  static Future<ReviewsResponseModel> getBootcampReviews(bootcampId) async {
    Map<String, String> requestHeaders = {
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials": true.toString(),
    };

    var url = Uri.parse('${Config.apiURL + Config.bootcampReviewsAPI + bootcampId}/reviews');

    var response = await client.get(url, headers: requestHeaders);

    return reviewsResponseJson(response.body);
  }
}
