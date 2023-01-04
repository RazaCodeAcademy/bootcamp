class UpdatePasswordRequestModel {
  String? currentPassword;
  String? newPassword;

  UpdatePasswordRequestModel({
    this.currentPassword,
    this.newPassword,
  });

  UpdatePasswordRequestModel.fromJson(Map<String, dynamic> json) {
    currentPassword = json['currentPassword'] as String?;
    newPassword = json['newPassword'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['currentPassword'] = currentPassword;
    json['newPassword'] = newPassword;
    return json;
  }
}