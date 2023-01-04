class UpdateProfileRequestModel {
  String? name;
  String? email;

  UpdateProfileRequestModel({
    this.name,
    this.email,
  });

  UpdateProfileRequestModel.fromJson(Map<String, dynamic> json) {
    name = json['name'] as String?;
    email = json['email'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['name'] = name;
    json['email'] = email;
    return json;
  }
}