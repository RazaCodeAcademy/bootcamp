import 'package:devcamper/browser_bootcamps/browser_bootcamps.dart';
import 'package:devcamper/login/manage_account.dart';
import 'package:devcamper/manage_bootcamps/manage_bootcamp.dart';
import 'package:devcamper/manage_review/manage_review.dart';
import 'package:devcamper/register.dart';
import 'package:flutter/material.dart';

import 'login/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _milescontroller=TextEditingController();
  final _zipcodecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return 
    Scaffold(
      appBar: AppBar(
        title: Text('Homepage',style: TextStyle(fontSize: size.height*0.025),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffE05433),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: size.height*0.2,
              decoration: BoxDecoration(
                color: Color(0xffE05433),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: size.width*0.2,right: size.width*0.2),
                child: Row(
                  children: [
                    Icon(Icons.laptop_windows_rounded,color: Colors.white,),
                    SizedBox(width: size.width*0.02,),
                    Text('DevCamper',style: TextStyle(fontSize: size.height*0.025,color: Colors.white,fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02,top: size.height*0.02),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => LoginPage())));
                    },
                    child: Row(
                        children: [
                     Icon(Icons.login,color: Colors.grey.shade400,),
                     SizedBox(width: size.width*0.01,),
                     Text('Login',style: TextStyle(fontSize: size.height*0.025,color: Colors.grey.shade400),),
                        ],
                      ),
                  ),
                  SizedBox(height: size.height*0.01,),
                     Divider(
                        color: Colors.grey.shade300,
                      ),
                      SizedBox(height: size.height*0.01,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => Register())));
                      },
                      child: Row(
                        children: [
                          Icon(Icons.group_add,color: Colors.grey.shade400,),
                          SizedBox(width: size.width*0.01,),
                          Text('Register',style: TextStyle(fontSize: size.height*0.025,color: Colors.grey.shade400),),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height*0.01,),
                     Divider(
                        color: Colors.grey.shade300,
                      ),
                      SizedBox(height: size.height*0.01,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => BrowserBootcamps())));
                      },
                      child: Row(
                        children: [
                          Image.asset('assets/image/browser_icon.png',color: Colors.grey.shade400,scale: 2,),
                          SizedBox(width: size.width*0.01,),
                          Text('Browse Bootcamps',style: TextStyle(fontSize: size.height*0.025,color: Colors.grey.shade400),),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height*0.01,),
                     Divider(
                        color: Colors.grey.shade300,
                      ),
                      SizedBox(height: size.height*0.01,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => ManageBootcapm())));
                      },
                      child: Row(
                          children: [
                            Icon(Icons.laptop_windows_rounded,color: Colors.grey.shade400,),
                            SizedBox(width: size.width*0.01,),
                            Text('Manage Bootcamps',style: TextStyle(fontSize: size.height*0.025,color: Colors.grey.shade400),),
                          ],
                        ),
                    ),
                      SizedBox(height: size.height*0.01,),
                       Divider(
                        color: Colors.grey.shade300,
                      ),
                      SizedBox(height: size.height*0.01,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => ManageReview())));
                      },
                      child: Row(
                          children: [
                            Image.asset('assets/image/feedback.png',color: Colors.grey.shade400,scale: 23,),
                            SizedBox(width: size.width*0.015,),
                            Text('Manage Reviews',style: TextStyle(fontSize: size.height*0.025,color: Colors.grey.shade400),),
                          ],
                        ),
                    ),
                      SizedBox(height: size.height*0.01,),
                        Divider(
                        color: Colors.grey.shade300,
                      ),
                      SizedBox(height: size.height*0.01,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => ManageAccount())));
                      },
                      child: Row(
                          children: [
                            Image.asset('assets/image/user.png',color: Colors.grey.shade400,scale: 23,),
                            SizedBox(width: size.width*0.015,),
                            Text('Manage Account',style: TextStyle(fontSize: size.height*0.025,color: Colors.grey.shade400),),
                          ],
                        ),
                    ),
                      SizedBox(height: size.height*0.01,),
                       Divider(
                        color: Colors.grey.shade300,
                      ),
                      SizedBox(height: size.height*0.01,),
                    Row(
                        children: [
                          Icon(Icons.login,color: Colors.grey.shade400,),
                          SizedBox(width: size.width*0.01,),
                          Text('Logout',style: TextStyle(fontSize: size.height*0.025,color: Colors.grey.shade400),),
                        ],
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.9), BlendMode.dstATop),
              image: AssetImage('assets/image/bg_homepage.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Find a Code Bootcamp',style: TextStyle(fontSize: size.height*0.030,color: Colors.white,),),
                SizedBox(height: size.height*0.02,),
                Text('Find, rate and read reviews on coding bootcamps',style: TextStyle(fontSize: size.height*0.020,color: Colors.white),),
                SizedBox(height: size.height*0.02,),
              TextFormField(
              controller: _milescontroller,
              decoration:InputDecoration(
                hintText: 'Miles From',
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02),
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
            SizedBox(height: size.height*0.02,),
             TextFormField(
              keyboardType: TextInputType.number,
              controller: _zipcodecontroller,
              decoration:InputDecoration(
                hintText: 'Enter Zipcode',
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02),
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
            SizedBox(height: size.height*0.02,),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => BrowserBootcamps())));
              },
              child: Container(
                  height: size.height*0.06,
                  width: size.width,
                  decoration: BoxDecoration(
                    color:Color(0xffE05433),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Center(child: Text('Find Bootcamps',style: TextStyle(fontSize: size.height*0.025,color: Colors.white),)),
                ),
            ),
              ],
            ),
          ),
      ),
    );
  }
}