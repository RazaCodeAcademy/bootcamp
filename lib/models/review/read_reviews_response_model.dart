import 'dart:convert';

ReadReviewsResponseModel readReviewsResponseJson(String str) =>
    ReadReviewsResponseModel.fromJson(json.decode(str));

class ReadReviewsResponseModel {
  bool? success;
  int? count;
  List<Data>? data;

  ReadReviewsResponseModel({
    this.success,
    this.count,
    this.data,
  });

  ReadReviewsResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'] as bool?;
    count = json['count'] as int?;
    data = (json['data'] as List?)?.map((dynamic e) => Data.fromJson(e as Map<String,dynamic>)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['success'] = success;
    json['count'] = count;
    json['data'] = data?.map((e) => e.toJson()).toList();
    return json;
  }
}

class Data {
  String? id;
  String? title;
  String? text;
  int? rating;
  String? bootcamp;
  User? user;
  String? createdAt;
  int? v;

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

  Data.fromJson(Map<String, dynamic> json) {
    id = json['_id'] as String?;
    title = json['title'] as String?;
    text = json['text'] as String?;
    rating = json['rating'] as int?;
    bootcamp = json['bootcamp'] as String?;
    user = (json['user'] as Map<String,dynamic>?) != null ? User.fromJson(json['user'] as Map<String,dynamic>) : null;
    createdAt = json['createdAt'] as String?;
    v = json['__v'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['_id'] = id;
    json['title'] = title;
    json['text'] = text;
    json['rating'] = rating;
    json['bootcamp'] = bootcamp;
    json['user'] = user?.toJson();
    json['createdAt'] = createdAt;
    json['__v'] = v;
    return json;
  }
}

class User {
  String? role;
  String? id;
  String? name;
  String? email;
  String? createdAt;
  int? v;

  User({
    this.role,
    this.id,
    this.name,
    this.email,
    this.createdAt,
    this.v,
  });

  User.fromJson(Map<String, dynamic> json) {
    role = json['role'] as String?;
    id = json['_id'] as String?;
    name = json['name'] as String?;
    email = json['email'] as String?;
    createdAt = json['createdAt'] as String?;
    v = json['__v'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['role'] = role;
    json['_id'] = id;
    json['name'] = name;
    json['email'] = email;
    json['createdAt'] = createdAt;
    json['__v'] = v;
    return json;
  }
}