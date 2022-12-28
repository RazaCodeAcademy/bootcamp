class ReviewRequestModel {
  final String? title;
  final String? text;
  final int? rating;

  ReviewRequestModel({
    this.title,
    this.text,
    this.rating,
  });

  ReviewRequestModel.fromJson(Map<String, dynamic> json)
    : title = json['title'] as String?,
      text = json['text'] as String?,
      rating = json['rating'] as int?;

  Map<String, dynamic> toJson() => {
    'title' : title,
    'text' : text,
    'rating' : rating
  };
}