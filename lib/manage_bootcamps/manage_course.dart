import 'package:devcamper/config.dart';
import 'package:devcamper/controllers/bootcamp/bootcamp.dart';
import 'package:devcamper/controllers/course/course.dart';
import 'package:devcamper/manage_bootcamps/add_bootcamp_courses.dart';
import 'package:devcamper/manage_bootcamps/edit_bootcamp_courses.dart';
import 'package:devcamper/manage_bootcamps/manage_bootcamp.dart';
import 'package:devcamper/models/bootcamp/bootcamp_response_model.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class ManageCourse extends StatefulWidget {
  String? bootcampId;
  ManageCourse({this.bootcampId});

  @override
  State<ManageCourse> createState() => _ManageCourseState();
}

class _ManageCourseState extends State<ManageCourse> {
  void initState() {
    // TODO: implement initState
    super.initState();
    getBootcamp();
  }

  String? photo;
  String? careers;
  bool isAPIcallProcess = false;

  BootcampResponseModel? bootcamp;
  void getBootcamp() async {
    bootcamp = await BootcampService.getBootcamp(widget.bootcampId);
    careers = bootcamp!.data != null ? bootcamp!.data!.careers!.join(",") : '';
    photo = bootcamp!.data != null ? bootcamp!.data!.photo : "";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Manage Courses',
          style: TextStyle(fontSize: size.height * 0.025),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffE05433),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: size.width * 0.02,
            right: size.width * 0.02,
            top: size.height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Manage Courses',
              style: TextStyle(
                  fontSize: size.height * 0.025, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.01),
              // height: size.height * 0.1,
              // width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.network(
                        Config.imageUrl + photo.toString(),
                        height: size.height * 0.1,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: size.width * 0.5,
                            child: Text(
                              bootcamp!.data!.name.toString(),
                              style: TextStyle(
                                fontSize: size.height * 0.020,
                                color: Color(0xffE05433),
                              ),
                            ),
                          ),
                          Container(
                            height: size.height * 0.03,
                            width: size.width * 0.09,
                            decoration: BoxDecoration(
                              color: Color(0xff28a745),
                            ),
                            child: Center(
                                child: Text(
                              bootcamp!.data!.averageRating != null
                                  ? bootcamp!.data!.averageRating.toString()
                                  : '0.0',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.005,
                      ),
                      Container(
                        height: size.height * 0.022,
                        width: size.width * 0.23,
                        decoration: BoxDecoration(
                          color: Color(0xff343a40),
                        ),
                        child: Center(
                            child: Text(
                          "${bootcamp!.data!.location!.city.toString()}, ${bootcamp!.data!.location!.country.toString()}",
                          style: TextStyle(
                              fontSize: size.height * 0.018,
                              color: Colors.white),
                        )),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Container(
                        width: size.width * 0.6,
                        child: Text(careers.toString(),
                            style: TextStyle(
                              fontSize: size.height * 0.013,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffE05433),
                minimumSize: const Size.fromHeight(50),
                shadowColor: Colors.grey,
                foregroundColor: Colors.grey.shade400,
                elevation: 0,
              ),
              child: Text(
                'Add Bootcamp Course',
                style: TextStyle(
                    fontSize: size.height * 0.022, color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) =>
                            AddBootcampCourse(bootcampId: widget.bootcampId))));
              },
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Divider(
              color: Colors.grey.shade400,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Text(
              'Title',
              style: TextStyle(
                  fontSize: size.height * 0.025, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            // Divider(color: Colors.grey.shade400,),
            bootcamp!.data!.courses!.length > 0
                ? Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        // physics: NeverScrollableScrollPhysics(),
                        itemCount: bootcamp!.data!.courses?.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            height: size.height * 0.1,
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
                                    bootcamp!.data!.courses![index].title
                                        .toString(),
                                    style: TextStyle(
                                        fontSize: size.height * 0.022),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: size.height * 0.05,
                                        width: size.width * 0.12,
                                        decoration: BoxDecoration(
                                            color: Color(0xff6c757d)),
                                        child: IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: ((context) =>
                                                          EditBootcampCourse(
                                                              courseId:
                                                                  bootcamp!
                                                                      .data!
                                                                      .courses![
                                                                          index]
                                                                      .id))));
                                            },
                                            icon: Icon(
                                              Icons.edit,
                                              color: Colors.white,
                                            )),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.015,
                                      ),
                                      Container(
                                        height: size.height * 0.05,
                                        width: size.width * 0.12,
                                        decoration: BoxDecoration(
                                          color: Color(0xffdc3545),
                                        ),
                                        child: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                isAPIcallProcess = true;
                                              });
                                              CourseService.removeCourse(
                                                      bootcamp!.data!
                                                          .courses![index].id)
                                                  .then((response) => {
                                                        setState(() {
                                                          isAPIcallProcess =
                                                              false;
                                                        }),
                                                        if (response == true)
                                                          {
                                                            Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder: ((context) =>
                                                                        ManageCourse(
                                                                            bootcampId:
                                                                                widget.bootcampId))))
                                                          }
                                                        else
                                                          {
                                                            FormHelper
                                                                .showSimpleAlertDialog(
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
                                            icon: Icon(
                                              Icons.close,
                                              color: Colors.white,
                                            )),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        }))
                : Text('')
          ],
        ),
      ),
    );
  }
}
