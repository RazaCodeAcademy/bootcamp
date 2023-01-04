import 'package:devcamper/config.dart';
import 'package:devcamper/controllers/course/course.dart';
import 'package:devcamper/manage_bootcamps/manage_course.dart';
import 'package:devcamper/models/course/course_request_model.dart';
import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

class AddBootcampCourse extends StatefulWidget {
  String? bootcampId;
  AddBootcampCourse({this.bootcampId});

  @override
  State<AddBootcampCourse> createState() => _AddBootcampCourseState();
}

class _AddBootcampCourseState extends State<AddBootcampCourse> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  final _title = TextEditingController();
  final _duration = TextEditingController();
  final _tuition = TextEditingController();
  final _description = TextEditingController();
  bool scholarship = false;
  bool isAPIcallProcess = false;
  var skillvalue;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  var skill = [
    'beginner', 'intermediate', 'advanced'
  ];
  final _skillkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Bootcamp Course',
              style: TextStyle(fontSize: size.height * 0.025)),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Color(0xffE05433),
        ),
        body: ProgressHUD(
          inAsyncCall: isAPIcallProcess,
          opacity: 0.3,
          key: UniqueKey(),
          child: Form(
            key: globalFormKey,
            child: _courseUI(context),
          ),
        ));
  }

  Widget _courseUI(BuildContext context) {
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
              'DevWorks Bootcamp',
              style: TextStyle(
                  fontSize: size.height * 0.025, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              height: size.height * 0.93,
              width: size.width,
              decoration: BoxDecoration(
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
                      'Add Course',
                      style: TextStyle(
                          fontSize: size.height * 0.025,
                          color: Color(0xffE05433),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Course Title',
                      style: TextStyle(
                        fontSize: size.height * 0.022,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    TextFormField(
                      controller: _title,
                      decoration: InputDecoration(
                        hintText: 'Title',
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
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 116, 167, 218)),
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
                    Text(
                      'Duration',
                      style: TextStyle(fontSize: size.height * 0.022),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    NumberInputWithIncrementDecrement(
                      buttonArrangement: ButtonArrangement.rightEnd,
                      initialValue: 0,
                      style: TextStyle(
                        color: Color(0xff6c757d),
                      ),
                      incIconColor: Color(0xff6c757d),
                      decIconColor: Color(0xff6c757d),
                      incDecBgColor: Color(0xff6c757d),
                      max: double.maxFinite,
                      min: -10000000000,
                      textAlign: TextAlign.left,
                      autovalidateMode: AutovalidateMode.always,
                      numberFieldDecoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: size.width * 0.02,
                        ),
                        border: InputBorder.none,
                      ),
                      widgetContainerDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        border: Border.all(
                          color: Color(0xff6c757d),
                        ),
                      ),
                      controller: _duration,
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Enter number of weeks course lasts',
                      style: TextStyle(
                          fontSize: size.height * 0.018,
                          color: Colors.grey.shade400),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Course Tuition',
                      style: TextStyle(
                        fontSize: size.height * 0.022,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    NumberInputWithIncrementDecrement(
                      buttonArrangement: ButtonArrangement.rightEnd,
                      initialValue: 0,
                      style: TextStyle(
                        color: Color(0xff6c757d),
                      ),
                      incIconColor: Color(0xff6c757d),
                      decIconColor: Color(0xff6c757d),
                      incDecBgColor: Color(0xff6c757d),
                      max: double.maxFinite,
                      min: -10000000000,
                      textAlign: TextAlign.left,
                      autovalidateMode: AutovalidateMode.always,
                      numberFieldDecoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: size.width * 0.02,
                        ),
                        border: InputBorder.none,
                      ),
                      widgetContainerDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        border: Border.all(
                          color: Color(0xff6c757d),
                        ),
                      ),
                      controller: _tuition,
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'USD Currency',
                      style: TextStyle(
                          fontSize: size.height * 0.018,
                          color: Colors.grey.shade400),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      'Minimum Skill Required',
                      style: TextStyle(fontSize: size.height * 0.022),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    DropdownButtonFormField(
                      key: _skillkey,
                      elevation: 0,
                      dropdownColor: Colors.grey.shade200,
                      iconEnabledColor: Color(0xff6c757d),
                      iconDisabledColor: Colors.grey,
                      iconSize: size.height * 0.04,
                      style: TextStyle(
                        fontSize: size.height * 0.023,
                        color: Colors.grey.shade500,
                      ),
                      hint: Text(
                        'Beginner (Any)',
                        style: TextStyle(
                          fontSize: size.height * 0.022,
                          color: Color(0xff6c757d),
                        ),
                      ),
                      decoration: InputDecoration(
                        // labelText: 'any',
                        // labelStyle: TextStyle(color: Colors.grey,fontSize: size.height*0.023),
                        // floatingLabelBehavior: FloatingLabelBehavior.always,
                        // filled: true,
                        // fillColor: Colors.grey.shade200,
                        // label:Text('Gender',style: TextStyle(fontSize: size.height*23,color: Colors.black),),
                        contentPadding:
                            EdgeInsets.only(left: size.height * 0.01),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(size.height * 0),
                          borderSide: BorderSide(
                            color: Color(0xff6c757d),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(size.height * 0),
                          borderSide: BorderSide(
                            color: Color(0xff6c757d),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(size.height * 0),
                          borderSide: BorderSide(
                            color: Color(0xff6c757d),
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(size.height * 0.01),
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                      ),
                      // value: _dropwownvalue,
                      // validator: (dropdown){
                      //   if(dropdown==null){
                      //     return 'please enter your group';
                      //   }
                      //   return null;
                      // },
                      items: skill.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem),
                        );
                      }).toList(),

                      onChanged: (String? newvalue) {
                        setState(() {
                          skillvalue = newvalue!;
                        });
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    TextFormField(
                      maxLines: 5,
                      maxLength: 500,
                      controller: _description,
                      decoration: InputDecoration(
                        hintText: 'Course descripition summary',
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
                    // SizedBox(height: size.height*0.01,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          visualDensity: VisualDensity.compact,
                          activeColor: Color(0xffE05433),
                          value: scholarship,
                          onChanged: (bool? value) {
                            setState(() {
                              scholarship = value!;
                            });
                          },
                        ),
                        Text(
                          'Scholarship Available',
                          style: TextStyle(
                            fontSize: size.height * 0.022,
                            color: Color(0xff6c757d),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff343a40),
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
                        if (validateAndSave()) {
                          setState(() {
                            isAPIcallProcess = true;
                            CourseRequestModel model = CourseRequestModel(
                              title: _title.text,
                              weeks: int.parse(_duration.text),
                              tuition: int.parse(_tuition.text),
                              minimumSkill: skillvalue,
                              description: _description.text,
                              scholcarshipAvailable: scholarship,
                            );
                            CourseService.addCourse(model, widget.bootcampId)
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
                                                      ManageCourse(bootcampId: widget.bootcampId))))
                                        }
                                      else
                                        {
                                          FormHelper.showSimpleAlertDialog(
                                              context,
                                              Config.appName,
                                              "Something went wrong!",
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
