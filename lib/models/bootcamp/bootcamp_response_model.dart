import 'dart:convert';

BootcampResponseModel bootcampResponseJson(String str) =>
    BootcampResponseModel.fromJson(json.decode(str));

class BootcampResponseModel {
  final bool? success;
  final Data? data;

  BootcampResponseModel({
    this.success,
    this.data,
  });

  BootcampResponseModel.fromJson(Map<String, dynamic> json)
      : success = json['success'] as bool?,
        data = (json['data'] as Map<String, dynamic>?) != null
            ? Data.fromJson(json['data'] as Map<String, dynamic>)
            : null;

  Map<String, dynamic> toJson() => {'success': success, 'data': data?.toJson()};
}

class Data {
  final Location? location;
  final List<String>? careers;
  final String? photo;
  final bool? housing;
  final bool? jobAssistance;
  final bool? jobGuarantee;
  final bool? acceptGi;
  final String? id;
  final String? user;
  final String? name;
  final String? description;
  final String? website;
  final String? phone;
  final String? email;
  final String? createdAt;
  final String? slug;
  final int? v;
  final int? averageCost;
  final double? averageRating;
  final List<Courses>? courses;

  Data({
    this.location,
    this.careers,
    this.photo,
    this.housing,
    this.jobAssistance,
    this.jobGuarantee,
    this.acceptGi,
    this.id,
    this.user,
    this.name,
    this.description,
    this.website,
    this.phone,
    this.email,
    this.createdAt,
    this.slug,
    this.v,
    this.averageCost,
    this.averageRating,
    this.courses,
  });

  Data.fromJson(Map<String, dynamic> json)
      : location = (json['location'] as Map<String, dynamic>?) != null
            ? Location.fromJson(json['location'] as Map<String, dynamic>)
            : null,
        careers = (json['careers'] as List?)
            ?.map((dynamic e) => e as String)
            .toList(),
        photo = json['photo'] as String?,
        housing = json['housing'] as bool?,
        jobAssistance = json['jobAssistance'] as bool?,
        jobGuarantee = json['jobGuarantee'] as bool?,
        acceptGi = json['acceptGi'] as bool?,
        id = json['_id'] as String?,
        user = json['user'] as String?,
        name = json['name'] as String?,
        description = json['description'] as String?,
        website = json['website'] as String?,
        phone = json['phone'] as String?,
        email = json['email'] as String?,
        createdAt = json['createdAt'] as String?,
        slug = json['slug'] as String?,
        v = json['__v'] as int?,
        averageCost = json['averageCost'] as int?,
        averageRating = json['averageRating'] as double?,
        courses = (json['courses'] as List?)
            ?.map((dynamic e) => Courses.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() => {
        'location': location?.toJson(),
        'careers': careers,
        'photo': photo,
        'housing': housing,
        'jobAssistance': jobAssistance,
        'jobGuarantee': jobGuarantee,
        'acceptGi': acceptGi,
        '_id': id,
        'user': user,
        'name': name,
        'description': description,
        'website': website,
        'phone': phone,
        'email': email,
        'createdAt': createdAt,
        'slug': slug,
        '__v': v,
        'averageCost': averageCost,
        'averageRating': averageRating,
        'courses': courses?.map((e) => e.toJson()).toList(),
        'id': id
      };
}

class Location {
  final List<double>? coordinates;
  final String? type;
  final String? formattedAddress;
  final String? street;
  final String? city;
  final String? state;
  final String? zipcode;
  final String? country;

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

  Location.fromJson(Map<String, dynamic> json)
      : coordinates = (json['coordinates'] as List?)
            ?.map((dynamic e) => e as double)
            .toList(),
        type = json['type'] as String?,
        formattedAddress = json['formattedAddress'] as String?,
        street = json['street'] as String?,
        city = json['city'] as String?,
        state = json['state'] as String?,
        zipcode = json['zipcode'] as String?,
        country = json['country'] as String?;

  Map<String, dynamic> toJson() => {
        'coordinates': coordinates,
        'type': type,
        'formattedAddress': formattedAddress,
        'street': street,
        'city': city,
        'state': state,
        'zipcode': zipcode,
        'country': country
      };
}

class Courses {
  final bool? scholcarshipAvailable;
  final String? id;
  final String? title;
  final String? description;
  final String? weeks;
  final int? tuition;
  final String? minimumSkill;
  final String? bootcamp;
  final String? user;
  final int? v;

  Courses({
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

  Courses.fromJson(Map<String, dynamic> json)
      : scholcarshipAvailable = json['scholcarshipAvailable'] as bool?,
        id = json['_id'] as String?,
        title = json['title'] as String?,
        description = json['description'] as String?,
        weeks = json['weeks'] as String?,
        tuition = json['tuition'] as int?,
        minimumSkill = json['minimumSkill'] as String?,
        bootcamp = json['bootcamp'] as String?,
        user = json['user'] as String?,
        v = json['__v'] as int?;

  Map<String, dynamic> toJson() => {
        'scholcarshipAvailable': scholcarshipAvailable,
        '_id': id,
        'title': title,
        'description': description,
        'weeks': weeks,
        'tuition': tuition,
        'minimumSkill': minimumSkill,
        'bootcamp': bootcamp,
        'user': user,
        '__v': v
      };
}
