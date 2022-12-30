class BootcampRequestModel {
  final String? name;
  final String? description;
  final String? website;
  final String? phone;
  final String? email;
  final String? address;
  final List<String>? careers;
  final bool? housing;
  final bool? jobAssistance;
  final bool? jobGuarantee;
  final bool? acceptGi;

  BootcampRequestModel({
    this.name,
    this.description,
    this.website,
    this.phone,
    this.email,
    this.address,
    this.careers,
    this.housing,
    this.jobAssistance,
    this.jobGuarantee,
    this.acceptGi,
  });

  BootcampRequestModel.fromJson(Map<String, dynamic> json)
    : name = json['name'] as String?,
      description = json['description'] as String?,
      website = json['website'] as String?,
      phone = json['phone'] as String?,
      email = json['email'] as String?,
      address = json['address'] as String?,
      careers = (json['careers'] as List?)?.map((dynamic e) => e as String).toList(),
      housing = json['housing'] as bool?,
      jobAssistance = json['jobAssistance'] as bool?,
      jobGuarantee = json['jobGuarantee'] as bool?,
      acceptGi = json['acceptGi'] as bool?;

  Map<String, dynamic> toJson() => {
    'name' : name,
    'description' : description,
    'website' : website,
    'phone' : phone,
    'email' : email,
    'address' : address,
    'careers' : careers,
    'housing' : housing,
    'jobAssistance' : jobAssistance,
    'jobGuarantee' : jobGuarantee,
    'acceptGi' : acceptGi
  };
}