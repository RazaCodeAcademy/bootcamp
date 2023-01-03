class Config {
  // images base url
  static const String imageUrl = "http://192.168.100.191:5000/uploads/";

  // app base url and name
  static const String appName = "Bootcamp App";
  static const String apiURL = "http://192.168.100.191:5000/api/v1";

  // auth apis
  static const String loginAPI = "/auth/login";
  static const String registerAPI = "/auth/register";
  static const String userProfileAPI = "/auth/me";

  // bootcamp apis
  static const String bootcampsAPI = "/bootcamps";
  static const String userBootcampAPI = "/bootcamps/user/bootcamp";

  // course apis
  static const String coursesAPI = "/courses";

  // course apis
  static const String reviewsAPI = "/reviews";
  static const String userReviewsAPI = "/reviews/by-user";
}
