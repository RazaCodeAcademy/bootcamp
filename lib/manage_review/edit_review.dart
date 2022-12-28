import 'package:devcamper/config.dart';
import 'package:devcamper/controllers/reviews/review.dart';
import 'package:devcamper/homepage.dart';
import 'package:devcamper/manage_review/bootcamp_info.dart';
import 'package:devcamper/manage_review/submit_review.dart';
import 'package:devcamper/models/review/review_request_model.dart';
import 'package:devcamper/models/review/review_response_model.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

class EditReview extends StatefulWidget {
  String? bootcampTitle;
  String? bootcampId;
  String? bootcampRating;
  EditReview({this.bootcampTitle, this.bootcampId, this.bootcampRating});

  @override
  State<EditReview> createState() => _EditReviewState();
}

class _EditReviewState extends State<EditReview> {
  int _slidervalue = 2;
  final _title = TextEditingController();
  final _text = TextEditingController();

  bool ishover = false;
  bool isAPIcallProcess = false;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Review',
          style: TextStyle(fontSize: size.height * 0.025),
        ),
        elevation: 0,
        backgroundColor: Color(0xffE05433),
        centerTitle: true,
      ),
      body: ProgressHUD(
        inAsyncCall: isAPIcallProcess,
        opacity: 0.3,
        key: UniqueKey(),
        child: Form(
          key: globalFormKey,
          child: _reviewUi(context),
        ),
      ),
    );
  }

  Widget _reviewUi(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            left: size.width * 0.02,
            right: size.width * 0.02,
            top: size.height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.bootcampTitle.toString(),
              style: TextStyle(
                  fontSize: size.height * 0.025, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              height: size.height * 0.7,
              width: size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade400,
                  )),
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.02,
                    right: size.width * 0.02,
                    top: size.height * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => BootcampInfo())));
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.grey.shade400,
                          ),
                          Text(
                            'Bootcamp Info',
                            style: TextStyle(
                                fontSize: size.height * 0.022,
                                color: Colors.grey.shade400),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Write a Review',
                      style: TextStyle(
                          fontSize: size.height * 0.025,
                          color: Color(0xffE05433)),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'You must have attended and graduated this bootcamp to review',
                      style: TextStyle(
                          fontSize: size.height * 0.020,
                          color: Colors.grey.shade400),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'Rating:',
                          style: TextStyle(
                              fontSize: size.height * 0.020,
                              color: Colors.black),
                          children: [
                            TextSpan(
                              text: '$_slidervalue',
                              style: TextStyle(
                                fontSize: size.height * 0.020,
                                color: Color(0xffE05433),
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Color(0xffE05433),
                        inactiveTrackColor: Colors.grey.shade200,
                        thumbColor: Color(0xffE05433),
                        overlayColor: Color(0xffE05433).withAlpha(20),
                        activeTickMarkColor: Colors.transparent,
                        inactiveTickMarkColor: Colors.transparent,
                        overlayShape: SliderComponentShape.noThumb,
                      ),
                      child: Slider(
                        max: 10,
                        min: 2,
                        divisions: 10,
                        // activeColor:Color(0xffE05433),
                        // thumbColor:Color(0xffE05433),
                        // inactiveColor: Colors.grey.shade200,
                        value: _slidervalue.toDouble(),
                        onChanged: ((value) {
                          setState(() {
                            _slidervalue = value.round();
                          });
                        }),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextFormField(
                      controller: _title,
                      decoration: InputDecoration(
                        hintText: 'Review title',
                        contentPadding: EdgeInsets.only(
                            left: size.width * 0.02, right: size.width * 0.02),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: BorderSide(
                            color: Color(0xff495057),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff495057),
                          ),
                          borderRadius: BorderRadius.circular(0),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: BorderSide(color: Color(0xff495057)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffE05433).withOpacity(0.4),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextFormField(
                      maxLines: 8,
                      controller: _text,
                      decoration: InputDecoration(
                        hintText: 'Your review',
                        contentPadding: EdgeInsets.only(
                            left: size.width * 0.02,
                            right: size.width * 0.02,
                            top: size.height * 0.02),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: BorderSide(
                            color: Color(0xff495057),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff495057),
                          ),
                          borderRadius: BorderRadius.circular(0),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: BorderSide(color: Color(0xff495057)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffE05433).withOpacity(0.4),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff343a40),
                        minimumSize: const Size.fromHeight(50),
                        shadowColor: Color(0xffE05433),
                        // foregroundColor: Colors.grey.shade400,
                        elevation: 0,
                      ),
                      child: Text(
                        'Submit Review',
                        style: TextStyle(
                            fontSize: size.height * 0.022, color: Colors.white),
                      ),
                      onPressed: () {
                        if (validateAndSave()) {
                          setState(() {
                            isAPIcallProcess = true;

                            ReviewRequestModel model = ReviewRequestModel(
                              title: _title.text,
                              rating: _slidervalue,
                              text: _text.text,
                            );
                            ReviewService.postBootcampReview(
                                    model, widget.bootcampId)
                                .then((response) => {
                                      setState(() {
                                        isAPIcallProcess = false;
                                      }),
                                      if (response.success == true)
                                        {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: ((context) =>
                                                      SubmitReview(
                                                          bootcampTitle: widget
                                                              .bootcampTitle,
                                                          bootcampId:
                                                              widget.bootcampId,
                                                          bootcampRating:
                                                              '${widget.bootcampRating}'))))
                                        }
                                      else
                                        {
                                          FormHelper.showSimpleAlertDialog(
                                              context,
                                              Config.appName,
                                              "User role publisher is not authorized to access this rout",
                                              "OK", () {
                                            Navigator.pop(context);
                                          })
                                        }
                                    });
                          });
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      return true;
    }
    return false;
  }
}
