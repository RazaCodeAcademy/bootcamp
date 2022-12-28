import 'dart:convert';
ProfileResponseModel profileResponseJson(String str) =>
    ProfileResponseModel.fromJson(json.decode(str));

class ProfileResponseModel {
  final bool? success;
  final Data? data;

  ProfileResponseModel({
    this.success,
    this.data,
  });

  ProfileResponseModel.fromJson(Map<String, dynamic> json)
    : success = json['success'] as bool?,
      data = (json['data'] as Map<String,dynamic>?) != null ? Data.fromJson(json['data'] as Map<String,dynamic>) : null;

  Map<String, dynamic> toJson() => {
    'success' : success,
    'data' : data?.toJson()
  };
}

class Data {
  final String? role;
  final String? id;
  final String? name;
  final String? email;
  final String? createdAt;
  final int? v;

  Data({
    this.role,
    this.id,
    this.name,
    this.email,
    this.createdAt,
    this.v,
  });

  Data.fromJson(Map<String, dynamic> json)
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