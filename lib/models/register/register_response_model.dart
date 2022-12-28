import 'dart:convert';

RegisterResponseModel registerResponseJson(String str) =>
    RegisterResponseModel.fromJson(json.decode(str));

class RegisterResponseModel {
  final bool? success;
  final String? token;

  RegisterResponseModel({
    this.success,
    this.token,
  });

  RegisterResponseModel.fromJson(Map<String, dynamic> json)
    : success = json['success'] as bool?,
      token = json['token'] as String?;

  Map<String, dynamic> toJson() => {
    'success' : success,
    'token' : token
  };
}