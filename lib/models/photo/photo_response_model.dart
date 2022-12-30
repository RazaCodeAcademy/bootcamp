import 'dart:convert';
PhotoResponseModel photoResponseJson(String str) =>
    PhotoResponseModel.fromJson(json.decode(str));

class PhotoResponseModel {
  final bool? success;
  final String? data;

  PhotoResponseModel({
    this.success,
    this.data,
  });

  PhotoResponseModel.fromJson(Map<String, dynamic> json)
    : success = json['success'] as bool?,
      data = json['data'] as String?;

  Map<String, dynamic> toJson() => {
    'success' : success,
    'data' : data
  };
}