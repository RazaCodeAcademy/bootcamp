import 'package:devcamper/config.dart';
import 'package:devcamper/controllers/reviews/review.dart';
import 'package:devcamper/manage_review/edit_review.dart';
import 'package:devcamper/models/review/user_reviews_response_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class ManageReview extends StatefulWidget {
  const ManageReview({super.key});

  @override
  State<ManageReview> createState() => _ManageReviewState();
}

class _ManageReviewState extends State<ManageReview> {
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserReviews();
  }

  // List<dynamic>? courses = [];

  UserReviewsResponseModel? reviews;
  void getUserReviews() async {
    reviews = await ReviewService.getUserReviews();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Manage Review',
          style: TextStyle(fontSize: size.height * 0.025),
        ),
        backgroundColor: Color(0xffE05433),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: size.width * 0.02,
            right: size.width * 0.02,
            top: size.height * 0.02),
        child: Column(
          children: [
            Container(
              height: size.height * 0.4,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.02,
                    right: size.width * 0.02,
                    top: size.height * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Manage Reviews',
                      style: TextStyle(
                          fontSize: size.height * 0.025,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Divider(
                      color: Colors.grey.shade400,
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: size.width * 0.02),
                          child: Text(
                            'Bootcamp',
                            style: TextStyle(
                                fontSize: size.height * 0.022,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          width: size.width * 0.32,
                        ),
                        Text(
                          'Rating',
                          style: TextStyle(
                              fontSize: size.height * 0.022,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    reviews != null
                        ? Container(
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: reviews!.count,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: size.height * 0.07,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width * 0.02,
                                        right: size.width * 0.02),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          reviews!.data![index].bootcamp!.name
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: size.height * 0.020),
                                        ),
                                        // Container(width: size.width*0.02,),
                                        Text(
                                          reviews!.data![index].rating
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: size.height * 0.020),
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: ((context) => EditReview(
                                                            bootcampTitle:
                                                                reviews!
                                                                    .data![
                                                                        index]
                                                                    .bootcamp!
                                                                    .name,
                                                            reviewId: reviews!
                                                                .data![index]
                                                                .id,
                                                            reviewRating:
                                                                reviews!
                                                                    .data![
                                                                        index]
                                                                    .rating
                                                                    .toString(),
                                                            reviewTitle:
                                                                reviews!
                                                                    .data![
                                                                        index]
                                                                    .title
                                                                    .toString(),
                                                            reviewText: reviews!
                                                                .data![index]
                                                                .text
                                                                .toString()))));
                                              },
                                              child: Container(
                                                height: size.height * 0.03,
                                                width: size.width * 0.07,
                                                decoration: BoxDecoration(
                                                    color: Color(0xff6c757d)),
                                                child: Icon(
                                                  Icons.edit,
                                                  color: Colors.white,
                                                  size: 14,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: size.width * 0.015,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                ReviewService.removeReview(
                                                        reviews!
                                                            .data![index].id)
                                                    .then((response) => {
                                                          if (response == true)
                                                            {
                                                              Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                      builder:
                                                                          ((context) =>
                                                                              ManageReview())))
                                                            }
                                                          else
                                                            {
                                                              FormHelper.showSimpleAlertDialog(
                                                                  context,
                                                                  Config
                                                                      .appName,
                                                                  "Something went wrong!",
                                                                  "OK", () {
                                                                Navigator.pop(
                                                                    context);
                                                              })
                                                            }
                                                        });
                                              },
                                              child: Container(
                                                height: size.height * 0.03,
                                                width: size.width * 0.07,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffdc3545),
                                                ),
                                                child: Icon(
                                                  Icons.close,
                                                  color: Colors.white,
                                                  size: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        : Text(''),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
