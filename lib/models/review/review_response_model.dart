import 'dart:convert';

ReviewResponseModel reviewResponseJson(String str) =>
    ReviewResponseModel.fromJson(json.decode(str));

class ReviewResponseModel {
  final bool? success;
  final Data? data;

  ReviewResponseModel({
    this.success,
    this.data,
  });

  ReviewResponseModel.fromJson(Map<String, dynamic> json)
    : success = json['success'] as bool?,
      data = (json['data'] as Map<String,dynamic>?) != null ? Data.fromJson(json['data'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'success' : success,
    'data' : data?.toJson()
  };
}

class Data {
  final String? id;
  final String? title;
  final String? text;
  final int? rating;
  final String? bootcamp;
  final String? user;
  final String? createdAt;
  final int? v;
  final String? error;

  Data({
    this.id,
    this.title,
    this.text,
    this.rating,
    this.bootcamp,
    this.user,
    this.createdAt,
    this.v,
    this.error,
  });

  Data.fromJson(Map<String, dynamic> json)
    : id = json['_id'] as String?,
      title = json['title'] as String?,
      text = json['text'] as String?,
      rating = json['rating'] as int?,
      bootcamp = json['bootcamp'] as String?,
      user = json['user'] as String?,
      createdAt = json['createdAt'] as String?,
      error = json['error'] as String?,
      v = json['__v'] as int?;

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'title' : title,
    'text' : text,
    'rating' : rating,
    'bootcamp' : bootcamp,
    'user' : user,
    'createdAt' : createdAt,
    '__v' : v
  };
}