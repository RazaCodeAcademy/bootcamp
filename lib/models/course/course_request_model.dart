class CourseRequestModel {
  String? title;
  String? description;
  int? weeks;
  int? tuition;
  String? minimumSkill;
  bool? scholcarshipAvailable;

  CourseRequestModel({
    this.title,
    this.description,
    this.weeks,
    this.tuition,
    this.minimumSkill,
    this.scholcarshipAvailable,
  });

  CourseRequestModel.fromJson(Map<String, dynamic> json) {
    title = json['title'] as String?;
    description = json['description'] as String?;
    weeks = json['weeks'] as int?;
    tuition = json['tuition'] as int?;
    minimumSkill = json['minimumSkill'] as String?;
    scholcarshipAvailable = json['scholcarshipAvailable'] as bool?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['title'] = title;
    json['description'] = description;
    json['weeks'] = weeks;
    json['tuition'] = tuition;
    json['minimumSkill'] = minimumSkill;
    json['scholcarshipAvailable'] = scholcarshipAvailable;
    return json;
  }
}