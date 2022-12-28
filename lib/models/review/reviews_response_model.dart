import 'dart:convert';

ReviewsResponseModel reviewsResponseJson(String str) =>
    ReviewsResponseModel.fromJson(json.decode(str));

class ReviewsResponseModel {
  final bool? success;
  final int? count;
  final List<Data>? data;

  ReviewsResponseModel({
    this.success,
    this.count,
    this.data,
  });

  ReviewsResponseModel.fromJson(Map<String, dynamic> json)
    : success = json['success'] as bool?,
      count = json['count'] as int?,
      data = (json['data'] as List?)?.map((dynamic e) => Data.fromJson(e as Map<String,dynamic>)).toList();

  Map<String, dynamic> toJson() => {
    'success' : success,
    'count' : count,
    'data' : data?.map((e) => e.toJson()).toList()
  };
}

class Data {
  final String? id;
  final String? title;
  final String? text;
  final int? rating;
  final String? bootcamp;
  final User? user;
  final String? createdAt;
  final int? v;

  Data({
    this.id,
    this.title,
    this.text,
    this.rating,
    this.bootcamp,
    this.user,
    this.createdAt,
    this.v,
  });

  Data.fromJson(Map<String, dynamic> json)
    : id = json['_id'] as String?,
      title = json['title'] as String?,
      text = json['text'] as String?,
      rating = json['rating'] as int?,
      bootcamp = json['bootcamp'] as String?,
      user = (json['user'] as Map<String,dynamic>?) != null ? User.fromJson(json['user'] as Map<String,dynamic>) : null,
      createdAt = json['createdAt'] as String?,
      v = json['__v'] as int?;

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'title' : title,
    'text' : text,
    'rating' : rating,
    'bootcamp' : bootcamp,
    'user' : user?.toJson(),
    'createdAt' : createdAt,
    '__v' : v
  };
}

class User {
  final String? role;
  final String? id;
  final String? name;
  final String? email;
  final String? createdAt;
  final int? v;

  User({
    this.role,
    this.id,
    this.name,
    this.email,
    this.createdAt,
    this.v,
  });

  User.fromJson(Map<String, dynamic> json)
    : role = json['role'] as String?,
      id = json['_id'] as String?,
      name = json['name'] as String?,
      email = json['email'] as String?,
      createdAt = json['createdAt'] as String?,
      v = json['__v'] as int?;

  Map<String, dynamic> toJson() => {
    'role' : role,
    '_id' : id,
    'name' : name,
    'email' : email,
    'createdAt' : createdAt,
    '__v' : v
  };
}