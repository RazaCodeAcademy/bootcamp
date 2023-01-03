import 'dart:convert';

CourseResponseModel courseResponseJson(String str) =>
    CourseResponseModel.fromJson(json.decode(str));

class CourseResponseModel {
  bool? success;
  Data? data;

  CourseResponseModel({
    this.success,
    this.data,
  });

  CourseResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'] as bool?;
    data = (json['data'] as Map<String,dynamic>?) != null ? Data.fromJson(json['data'] as Map<String,dynamic>) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['success'] = success;
    json['data'] = data?.toJson();
    return json;
  }
}

class Data {
  bool? scholcarshipAvailable;
  String? id;
  String? title;
  String? description;
  String? weeks;
  int? tuition;
  String? minimumSkill;
  Bootcamp? bootcamp;
  String? user;
  int? v;

  Data({
    this.scholcarshipAvailable,
    this.id,
    this.title,
    this.description,
    this.weeks,
    this.tuition,
    this.minimumSkill,
    this.bootcamp,
    this.user,
    this.v,
  });

  Data.fromJson(Map<String, dynamic> json) {
    scholcarshipAvailable = json['scholcarshipAvailable'] as bool?;
    id = json['_id'] as String?;
    title = json['title'] as String?;
    description = json['description'] as String?;
    weeks = json['weeks'] as String?;
    tuition = json['tuition'] as int?;
    minimumSkill = json['minimumSkill'] as String?;
    bootcamp = (json['bootcamp'] as Map<String,dynamic>?) != null ? Bootcamp.fromJson(json['bootcamp'] as Map<String,dynamic>) : null;
    user = json['user'] as String?;
    v = json['__v'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['scholcarshipAvailable'] = scholcarshipAvailable;
    json['_id'] = id;
    json['title'] = title;
    json['description'] = description;
    json['weeks'] = weeks;
    json['tuition'] = tuition;
    json['minimumSkill'] = minimumSkill;
    json['bootcamp'] = bootcamp?.toJson();
    json['user'] = user;
    json['__v'] = v;
    return json;
  }
}

class Bootcamp {
  String? id;
  String? name;
  String? description;

  Bootcamp({
    this.id,
    this.name,
    this.description,
  });

  Bootcamp.fromJson(Map<String, dynamic> json) {
    id = json['_id'] as String?;
    name = json['name'] as String?;
    description = json['description'] as String?;
    id = json['id'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['_id'] = id;
    json['name'] = name;
    json['description'] = description;
    json['id'] = id;
    return json;
  }
}