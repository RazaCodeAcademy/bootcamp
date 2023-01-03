import 'package:devcamper/browser_bootcamps/browser_bootcamps_model.dart';
import 'package:devcamper/config.dart';
import 'package:devcamper/controllers/bootcamp/bootcamp.dart';
import 'package:devcamper/controllers/login/login_shared_service.dart';
import 'package:devcamper/login/login.dart';
import 'package:devcamper/login/manage_account.dart';
import 'package:devcamper/manage_bootcamps/manage_bootcamp.dart';
import 'package:devcamper/manage_review/bootcamp_info.dart';
import 'package:devcamper/manage_review/manage_review.dart';
import 'package:devcamper/register.dart';
import 'package:flutter/material.dart';

import '../models/bootcamp/bootcamps_response_model.dart';

class BrowserBootcamps extends StatefulWidget {
  const BrowserBootcamps({super.key});

  @override
  State<BrowserBootcamps> createState() => _BrowserBootcampsState();
}

class _BrowserBootcampsState extends State<BrowserBootcamps> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBootcamps();
  }


  BootcampsResponseModel? bootcamps;
  void getBootcamps() async {
    bootcamps = await BootcampService.getBootcamps();
  
    setState(() {});
  }

  final _milesformcontroller = TextEditingController();
  final _zipcodecontroller = TextEditingController();
  var dropdownvalue;

  // List of items in our dropdown menu
  var rating = [
    'any',
    '9+',
    '8+',
    '7+',
    '6+',
    '5+',
    '4+',
    '3+',
    '2+',
  ];
  var budgetdropdownvaluse;
  var budget = [
    'any',
    "20,000",
    '15,000',
    '10,000',
    '8,000',
    '6,000',
    '4,000',
    '2,000',
  ];

  GlobalKey _ratingkey = GlobalKey();
  GlobalKey _budgetkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Browse Bootcamps',
          style: TextStyle(fontSize: size.height * 0.025),
        ),
        backgroundColor: Color(0xffE05433),
        elevation: 0,
        centerTitle: true,
      ),
      drawer: Drawer(
          child: Column(
        children: [
          Container(
            height: size.height * 0.2,
            decoration: BoxDecoration(
              color: Color(0xffE05433),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.2, right: size.width * 0.2),
              child: Row(
                children: [
                  Icon(
                    Icons.laptop_windows_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Text(
                    'DevCamper',
                    style: TextStyle(
                        fontSize: size.height * 0.025,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.02,
                right: size.width * 0.02,
                top: size.height * 0.02),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => LoginPage())));
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.login,
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                            fontSize: size.height * 0.025,
                            color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Register())));
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.group_add,
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      Text(
                        'Register',
                        style: TextStyle(
                            fontSize: size.height * 0.025,
                            color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => BrowserBootcamps())));
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/image/browser_icon.png',
                        color: Colors.grey.shade400,
                        scale: 2,
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      Text(
                        'Browse Bootcamps',
                        style: TextStyle(
                            fontSize: size.height * 0.025,
                            color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ManageBootcapm())));
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.laptop_windows_rounded,
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      Text(
                        'Manage Bootcamps',
                        style: TextStyle(
                            fontSize: size.height * 0.025,
                            color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ManageReview())));
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/image/feedback.png',
                        color: Colors.grey.shade400,
                        scale: 23,
                      ),
                      SizedBox(
                        width: size.width * 0.015,
                      ),
                      Text(
                        'Manage Reviews',
                        style: TextStyle(
                            fontSize: size.height * 0.025,
                            color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => ManageAccount())));
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/image/user.png',
                        color: Colors.grey.shade400,
                        scale: 23,
                      ),
                      SizedBox(
                        width: size.width * 0.015,
                      ),
                      Text(
                        'Manage Account',
                        style: TextStyle(
                            fontSize: size.height * 0.025,
                            color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                InkWell(
                  onTap: () {
                    LoginSharedService.logout(context);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.login,
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      Text(
                        'Logout',
                        style: TextStyle(
                            fontSize: size.height * 0.025,
                            color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
      body: Padding(
        padding: EdgeInsets.only(
            left: size.width * 0.02,
            right: size.width * 0.02,
            top: size.height * 0.01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    _bylocationModalBottomSheet(context);
                  },
                  child: Container(
                    height: size.height * 0.06,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                      color: Color(0xffE05433),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                      'By Location',
                      style: TextStyle(
                          fontSize: size.height * 0.025, color: Colors.white),
                    )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _filterModalBottomSheet(context);
                  },
                  child: Container(
                    height: size.height * 0.06,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                      color: Color(0xffE05433),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                      'Filter',
                      style: TextStyle(
                          fontSize: size.height * 0.025, color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            bootcamps != null
                ? Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      // physics: NeverScrollableScrollPhysics(),
                      itemCount: bootcamps!.count,
                      itemBuilder: (BuildContext context, int index) {
                        return bootcamps!.bootcampData != null
                            ? Container(
                                margin:
                                    EdgeInsets.only(top: size.height * 0.01),
                                // height: size.height * 0.1,
                                // width: size.width,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Image.network(
                                          Config.imageUrl +
                                              bootcamps!
                                                  .bootcampData![index].photo
                                                  .toString(),
                                          height: size.height * 0.1,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              width: size.width * 0.5,
                                              child: InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: ((context) =>
                                                              BootcampInfo(
                                                                  bootcampId: bootcamps!
                                                                      .bootcampData![
                                                                          index]
                                                                      .id
                                                                      .toString()))));
                                                },
                                                child: Text(
                                                  bootcamps!
                                                      .bootcampData![index].name
                                                      .toString(),
                                                  style: TextStyle(
                                                    fontSize:
                                                        size.height * 0.020,
                                                    color: Color(0xffE05433),
                                                  ),
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
                                                bootcamps!.bootcampData![index]
                                                            .averageRating !=
                                                        null
                                                    ? bootcamps!
                                                        .bootcampData![index]
                                                        .averageRating
                                                        .toString()
                                                    : 0.0.toString(),
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                            bootcamps!.bootcampData != null ? bootcamps!.bootcampData![index].careers!.join(",") : '',
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
                                          child: Text(
                                              bootcamps!.bootcampData![index]
                                                  .description
                                                  .toString(),
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
                              )
                            : Text('no list');
                      },
                    ),
                  )
                : Text('')
          ],
        ),
      ),
    );
  }

  void _bylocationModalBottomSheet(context) {
    var size = MediaQuery.of(context).size;
    showModalBottomSheet(
        backgroundColor: Colors.grey.shade300,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        context: context,
        builder: (BuildContext bc) {
          return StatefulBuilder(
            builder: (context, setSte) {
              return Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.02,
                    right: size.width * 0.02,
                    top: size.height * 0.02),
                child: Wrap(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'By Location',
                          style: TextStyle(
                              fontSize: size.height * 0.025,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        TextFormField(
                          controller: _milesformcontroller,
                          decoration: InputDecoration(
                            hintText: 'Miles From',
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding: EdgeInsets.only(
                                left: size.width * 0.02,
                                right: size.width * 0.02),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
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
                          keyboardType: TextInputType.number,
                          controller: _zipcodecontroller,
                          decoration: InputDecoration(
                            hintText: 'Enter Zipcode',
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding: EdgeInsets.only(
                                left: size.width * 0.02,
                                right: size.width * 0.02),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0),
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
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
                        Container(
                          height: size.height * 0.06,
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Color(0xffE05433),
                          ),
                          child: Center(
                              child: Text(
                            'Find Bootcamps',
                            style: TextStyle(
                                fontSize: size.height * 0.025,
                                color: Colors.white),
                          )),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        });
  }

  void _filterModalBottomSheet(context) {
    var size = MediaQuery.of(context).size;
    showModalBottomSheet(
        // backgroundColor: Colors.grey.shade300,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        context: context,
        builder: (BuildContext bc) {
          return StatefulBuilder(
            builder: (context, setSte) {
              return Padding(
                padding: EdgeInsets.only(
                    left: size.width * 0.02,
                    right: size.width * 0.02,
                    top: size.height * 0.02),
                child: Wrap(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Filter',
                          style: TextStyle(
                              fontSize: size.height * 0.025,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Text(
                          'Rating',
                          style: TextStyle(
                            fontSize: size.height * 0.022,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        //       icon: Icon(Icons.arrow_drop_down),
                        //       items: rating.map((String ratingitems) {
                        // return DropdownMenuItem(
                        //   value: ratingitems,
                        //   child: Text(ratingitems),
                        //       );
                        //   }).toList(),
                        //       onChanged: ((String? value) {
                        //         setState(() {
                        //           dropdownvalue=value!;
                        //         });
                        //       })),
                        DropdownButtonFormField(
                          key: _ratingkey,
                          elevation: 0,
                          dropdownColor: Colors.white,
                          iconEnabledColor: Colors.grey,
                          iconDisabledColor: Colors.grey,
                          iconSize: size.height * 0.04,
                          style: TextStyle(
                            fontSize: size.height * 0.023,
                            color: Colors.black,
                          ),
                          hint: Text(
                            'any',
                            style: TextStyle(
                                fontSize: size.height * 0.022,
                                color: Colors.grey),
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
                              borderRadius:
                                  BorderRadius.circular(size.height * 0.01),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(size.height * 0.01),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(size.height * 0.01),
                              borderSide: BorderSide(
                                color: Colors.grey,
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
                          items: rating.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),

                          onChanged: (String? newvalue) {
                            setState(() {
                              dropdownvalue = newvalue!;
                            });
                          },
                        ),

                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Text(
                          'Budget',
                          style: TextStyle(fontSize: size.height * 0.022),
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        DropdownButtonFormField(
                          key: _budgetkey,
                          elevation: 0,
                          dropdownColor: Colors.white,
                          iconEnabledColor: Colors.grey,
                          iconDisabledColor: Colors.grey,
                          iconSize: size.height * 0.04,
                          style: TextStyle(
                            fontSize: size.height * 0.023,
                            color: Colors.black,
                          ),
                          hint: Text(
                            'any',
                            style: TextStyle(
                                fontSize: size.height * 0.022,
                                color: Colors.grey),
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
                              borderRadius:
                                  BorderRadius.circular(size.height * 0.01),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(size.height * 0.01),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(size.height * 0.01),
                              borderSide: BorderSide(
                                color: Colors.grey,
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
                          items: budget.map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),

                          onChanged: (String? newvalue) {
                            setState(() {
                              budgetdropdownvaluse = newvalue!;
                            });
                          },
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        Container(
                          height: size.height * 0.06,
                          width: size.width,
                          decoration: BoxDecoration(
                            color: Color(0xffE05433),
                          ),
                          child: Center(
                              child: Text(
                            'Find Bootcamps',
                            style: TextStyle(
                                fontSize: size.height * 0.025,
                                color: Colors.white),
                          )),
                        ),
                        SizedBox(
                          height: size.height * 0.03,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        });
  }
}
