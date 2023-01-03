import 'dart:convert';

UserReviewsResponseModel userReviewsResponseJson(String str) =>
    UserReviewsResponseModel.fromJson(json.decode(str));

class UserReviewsResponseModel {
  bool? success;
  int? count;
  List<Data>? data;

  UserReviewsResponseModel({
    this.success,
    this.count,
    this.data,
  });

  UserReviewsResponseModel.fromJson(Map<String, dynamic> json) {
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
  Bootcamp? bootcamp;
  String? user;
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
    bootcamp = (json['bootcamp'] as Map<String,dynamic>?) != null ? Bootcamp.fromJson(json['bootcamp'] as Map<String,dynamic>) : null;
    user = json['user'] as String?;
    createdAt = json['createdAt'] as String?;
    v = json['__v'] as int?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['_id'] = id;
    json['title'] = title;
    json['text'] = text;
    json['rating'] = rating;
    json['bootcamp'] = bootcamp?.toJson();
    json['user'] = user;
    json['createdAt'] = createdAt;
    json['__v'] = v;
    return json;
  }
}

class Bootcamp {
  Location? location;
  List<String>? careers;
  String? photo;
  bool? housing;
  bool? jobAssistance;
  bool? jobGuarantee;
  bool? acceptGi;
  String? id;
  String? name;
  String? description;
  String? website;
  String? phone;
  String? email;
  String? user;
  String? createdAt;
  String? slug;
  int? v;
  int? averageCost;
  double? averageRating;

  Bootcamp({
    this.location,
    this.careers,
    this.photo,
    this.housing,
    this.jobAssistance,
    this.jobGuarantee,
    this.acceptGi,
    this.id,
    this.name,
    this.description,
    this.website,
    this.phone,
    this.email,
    this.user,
    this.createdAt,
    this.slug,
    this.v,
    this.averageCost,
    this.averageRating,
  });

  Bootcamp.fromJson(Map<String, dynamic> json) {
    location = (json['location'] as Map<String,dynamic>?) != null ? Location.fromJson(json['location'] as Map<String,dynamic>) : null;
    careers = (json['careers'] as List?)?.map((dynamic e) => e as String).toList();
    photo = json['photo'] as String?;
    housing = json['housing'] as bool?;
    jobAssistance = json['jobAssistance'] as bool?;
    jobGuarantee = json['jobGuarantee'] as bool?;
    acceptGi = json['acceptGi'] as bool?;
    id = json['_id'] as String?;
    name = json['name'] as String?;
    description = json['description'] as String?;
    website = json['website'] as String?;
    phone = json['phone'] as String?;
    email = json['email'] as String?;
    user = json['user'] as String?;
    createdAt = json['createdAt'] as String?;
    slug = json['slug'] as String?;
    v = json['__v'] as int?;
    averageCost = json['averageCost'] as int?;
    averageRating = json['averageRating'] as double?;
    id = json['id'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['location'] = location?.toJson();
    json['careers'] = careers;
    json['photo'] = photo;
    json['housing'] = housing;
    json['jobAssistance'] = jobAssistance;
    json['jobGuarantee'] = jobGuarantee;
    json['acceptGi'] = acceptGi;
    json['_id'] = id;
    json['name'] = name;
    json['description'] = description;
    json['website'] = website;
    json['phone'] = phone;
    json['email'] = email;
    json['user'] = user;
    json['createdAt'] = createdAt;
    json['slug'] = slug;
    json['__v'] = v;
    json['averageCost'] = averageCost;
    json['averageRating'] = averageRating;
    json['id'] = id;
    return json;
  }
}

class Location {
  List<double>? coordinates;
  String? type;
  String? formattedAddress;
  String? street;
  String? city;
  String? state;
  String? zipcode;
  String? country;

  Location({
    this.coordinates,
    this.type,
    this.formattedAddress,
    this.street,
    this.city,
    this.state,
    this.zipcode,
    this.country,
  });

  Location.fromJson(Map<String, dynamic> json) {
    coordinates = (json['coordinates'] as List?)?.map((dynamic e) => e as double).toList();
    type = json['type'] as String?;
    formattedAddress = json['formattedAddress'] as String?;
    street = json['street'] as String?;
    city = json['city'] as String?;
    state = json['state'] as String?;
    zipcode = json['zipcode'] as String?;
    country = json['country'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['coordinates'] = coordinates;
    json['type'] = type;
    json['formattedAddress'] = formattedAddress;
    json['street'] = street;
    json['city'] = city;
    json['state'] = state;
    json['zipcode'] = zipcode;
    json['country'] = country;
    return json;
  }
}