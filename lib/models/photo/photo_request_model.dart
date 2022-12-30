import 'dart:io';

class PhotoRequestModel {
  final File? file;

  PhotoRequestModel({
    this.file,
  });

  PhotoRequestModel.fromJson(Map<File, dynamic> json)
    : file = json['file'] as File?;

  Map<String, dynamic> toJson() => {
    'file' : file
  };
}