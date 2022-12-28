import 'dart:convert';

LoginResponseModel loginResponseJson(String str) =>
    LoginResponseModel.fromJson(json.decode(str));

class LoginResponseModel {
  final bool? success;
  final String? token;

  LoginResponseModel({
    this.success,
    this.token,
  });

  LoginResponseModel.fromJson(Map<String, dynamic> json)
      : success = json['success'] as bool?,
        token = json['token'] as String?;

  Map<String, dynamic> toJson() => {'success': success, 'token': token};
}
