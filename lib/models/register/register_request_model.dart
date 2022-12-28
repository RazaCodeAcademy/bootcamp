class RegisterRequestModel {
  final String? name;
  final String? email;
  final String? password;
  final String? role;

  RegisterRequestModel({
    this.name,
    this.email,
    this.password,
    this.role,
  });

  RegisterRequestModel.fromJson(Map<String, dynamic> json)
    : name = json['name'] as String?,
      email = json['email'] as String?,
      password = json['password'] as String?,
      role = json['role'] as String?;

  Map<String, dynamic> toJson() => {
    'name' : name,
    'email' : email,
    'password' : password,
    'role' : role
  };
}