import 'package:devcamper/controllers/bootcamp/bootcamp.dart';
import 'package:devcamper/manage_review/add_review.dart';
import 'package:devcamper/manage_review/edit_review.dart';
import 'package:devcamper/manage_review/submit_review.dart';
import 'package:devcamper/models/bootcamp/bootcamp_response_model.dart';
import 'package:flutter/material.dart';

class BootcampInfo extends StatefulWidget {
  final String? bootcampId;
  BootcampInfo({this.bootcampId});

  @override
  State<BootcampInfo> createState() => _BootcampInfoState();
}

class _BootcampInfoState extends State<BootcampInfo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBootcamp();
  }

  // List<dynamic>? courses = [];

  BootcampResponseModel? bootcamp;
  void getBootcamp() async {
    bootcamp = await BootcampService.getBootcamp(widget.bootcampId);
    // courses = bootcamp!.data!.courses;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bootcamp Info',
          style: TextStyle(fontSize: size.height * 0.025),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffE05433),
      ),
      body: bootcamp != null
          ? SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.02,
                    right: size.width * 0.02,
                    top: size.height * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          bootcamp!.data!.name.toString(),
                          style: TextStyle(
                              fontSize: size.height * 0.025,
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          width: size.width * 0.17,
                        ),
                        CircleAvatar(
                          backgroundColor: Color(0xff28a745),
                          child: Text(
                            bootcamp!.data!.averageRating.toString(),
                            style: TextStyle(
                                fontSize: size.height * 0.022,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.015,
                        ),
                        Text(
                          'Rating',
                          style: TextStyle(
                              fontSize: size.height * 0.025,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      bootcamp!.data!.description.toString(),
                      style: TextStyle(fontSize: size.height * 0.020),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    RichText(
                      text: TextSpan(
                          text: 'Average Course Cost:',
                          style: TextStyle(
                              fontSize: size.height * 0.020,
                              color: Colors.black),
                          children: [
                            TextSpan(
                              text:
                                  ' \$${bootcamp!.data!.averageCost ?? "0.0"}',
                              style: TextStyle(
                                fontSize: size.height * 0.022,
                                color: Color(0xff28a745),
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    bootcamp!.data!.courses!.length > 0 ?
                    Container(
                      height: size.height * 0.7,
                      child: ListView.builder(
                        itemCount: bootcamp!.data!.courses!.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(
                                top: size.height * 0.03,
                                bottom: size.height * 0.03),
                            // height: size.height * 0.55,
                            width: size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey.shade400),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(right: 22.0),
                                  height: size.height * 0.07,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    color: Color(0xffE05433),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: size.height * 0.02,
                                        left: size.width * 0.03),
                                    child: Text(
                                      bootcamp!.data!.courses![index].title
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: size.height * 0.025,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * 0.02,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: size.width * 0.04,
                                      right: size.width * 0.04),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                            text: 'Duration:',
                                            style: TextStyle(
                                                fontSize: size.height * 0.022,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold),
                                            children: [
                                              TextSpan(
                                                text:
                                                    ' ${bootcamp!.data!.courses![index].weeks} Weeks',
                                                style: TextStyle(
                                                  fontSize: size.height * 0.022,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ]),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.02,
                                      ),
                                      Text(
                                        bootcamp!
                                            .data!.courses![index].description
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: size.height * 0.020),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.02,
                                      ),
                                      Container(
                                        // height: size.height * 0.22,
                                        margin: EdgeInsets.only(
                                            bottom: size.height * 0.03),
                                        width: size.width,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey.shade400),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: size.height * 0.02,
                                                right: size.width * 0.02,
                                                top: size.height * 0.02,
                                              ),
                                              child: RichText(
                                                text: TextSpan(
                                                    text: 'Cost:',
                                                    style: TextStyle(
                                                      fontSize:
                                                          size.height * 0.022,
                                                      color: Colors.black,
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            ' \$${bootcamp!.data!.courses![index].tuition} USD',
                                                        style: TextStyle(
                                                          fontSize:
                                                              size.height *
                                                                  0.022,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ]),
                                              ),
                                            ),
                                            SizedBox(
                                              height: size.height * 0.01,
                                            ),
                                            Divider(
                                              color: Colors.grey.shade400,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: size.height * 0.02,
                                                  right: size.width * 0.02,
                                                  top: size.height * 0.02),
                                              child: RichText(
                                                text: TextSpan(
                                                    text:
                                                        'Skill Required: ${bootcamp!.data!.courses![index].minimumSkill}',
                                                    style: TextStyle(
                                                      fontSize:
                                                          size.height * 0.022,
                                                      color: Colors.black,
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text: ' Beginner',
                                                        style: TextStyle(
                                                          fontSize:
                                                              size.height *
                                                                  0.022,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ]),
                                              ),
                                            ),
                                            SizedBox(
                                              height: size.height * 0.01,
                                            ),
                                            Divider(
                                              color: Colors.grey.shade400,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: size.height * 0.02,
                                                  right: size.width * 0.02,
                                                  top: size.height * 0.01),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Scholarship Available:',
                                                    style: TextStyle(
                                                      fontSize:
                                                          size.height * 0.022,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Icon(
                                                    bootcamp!
                                                                .data!
                                                                .courses![index]
                                                                .scholcarshipAvailable ==
                                                            true
                                                        ? Icons.check_sharp
                                                        : Icons.close,
                                                    color: bootcamp!
                                                                .data!
                                                                .courses![index]
                                                                .scholcarshipAvailable ==
                                                            true
                                                        ? Color(0xff28a745)
                                                        : Color(0xffdc3545),
                                                    size: 20,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ) : Text(''),
                    
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff343a40),
                        minimumSize: const Size.fromHeight(50),
                        shadowColor: Color(0xffE05433),
                        // foregroundColor: Colors.grey.shade400,
                        elevation: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: size.width * 0.005,
                          ),
                          Text(
                            ' Read Reviews',
                            style: TextStyle(
                                fontSize: size.height * 0.022,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => SubmitReview(
                                  bootcampTitle:bootcamp!.data!.name,
                                  bootcampId:bootcamp!.data!.id,
                                  bootcampRating:bootcamp!.data!.averageRating.toString()
                                ))));
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        minimumSize: const Size.fromHeight(50),
                        shadowColor: Color(0xffE05433),
                        // foregroundColor: Colors.grey.shade400,
                        elevation: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.edit,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: size.width * 0.005,
                          ),
                          Text(
                            'Write a Review',
                            style: TextStyle(
                                fontSize: size.height * 0.022,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => AddReview(
                                  bootcampTitle:bootcamp!.data!.name,
                                  bootcampId:bootcamp!.data!.id,
                                  bootcampRating:bootcamp!.data!.averageRating.toString()
                                  ))));
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff6c757d),
                        minimumSize: const Size.fromHeight(50),
                        shadowColor: Color(0xffE05433),
                        // foregroundColor: Colors.grey.shade400,
                        elevation: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.account_circle_rounded,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: size.width * 0.005,
                          ),
                          Text(
                            'Visit Website',
                            style: TextStyle(
                                fontSize: size.height * 0.022,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: ((context) => EditReview())));
                      },
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
                        Icon(
                          bootcamp!.data!.housing == true
                              ? Icons.check
                              : Icons.close,
                          color: bootcamp!.data!.housing == true
                              ? Color(0xff28a745)
                              : Color(0xffdc3545),
                        ),
                        Text(
                          'Housing',
                          style: TextStyle(fontSize: size.height * 0.022),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Divider(
                      color: Colors.grey.shade400,
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      children: [
                        Icon(
                          bootcamp!.data!.jobAssistance == true
                              ? Icons.check
                              : Icons.close,
                          color: bootcamp!.data!.jobAssistance == true
                              ? Color(0xff28a745)
                              : Color(0xffdc3545),
                        ),
                        Text(
                          'Job Assistance',
                          style: TextStyle(fontSize: size.height * 0.022),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Divider(
                      color: Colors.grey.shade400,
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      children: [
                        Icon(
                          bootcamp!.data!.jobGuarantee == true
                              ? Icons.check
                              : Icons.close,
                          color: bootcamp!.data!.jobGuarantee == true
                              ? Color(0xff28a745)
                              : Color(0xffdc3545),
                        ),
                        Text(
                          'Job Guarantee',
                          style: TextStyle(fontSize: size.height * 0.022),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Divider(
                      color: Colors.grey.shade400,
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Row(
                      children: [
                        Icon(
                          bootcamp!.data!.acceptGi == true
                              ? Icons.check
                              : Icons.close,
                          color: bootcamp!.data!.acceptGi == true
                              ? Color(0xff28a745)
                              : Color(0xffdc3545),
                        ),
                        Text(
                          'Accepts GI Bill',
                          style: TextStyle(fontSize: size.height * 0.022),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Divider(
                      color: Colors.grey.shade400,
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                  ],
                ),
              ),
            )
          : Text(''),
    );
  }
}
