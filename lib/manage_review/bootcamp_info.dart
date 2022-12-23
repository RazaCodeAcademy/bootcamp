import 'package:devcamper/manage_review/edit_review.dart';
import 'package:devcamper/manage_review/submit_review.dart';
import 'package:flutter/material.dart';

class BootcampInfo extends StatefulWidget {
  BootcampInfo({Key? key}) : super(key: key);

  @override
  State<BootcampInfo> createState() => _BootcampInfoState();
}

class _BootcampInfoState extends State<BootcampInfo> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Bootcamp Info',style: TextStyle(fontSize: size.height*0.025),),
        centerTitle: true,
        elevation: 0,
        backgroundColor:  Color(0xffE05433),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.only(left: size.width*0.02,right: size.width*0.02,top: size.height*0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('DevWorks Bootcamp',style: TextStyle(fontSize: size.height*0.025,fontWeight: FontWeight.bold),),
                  Container(width: size.width*0.17,),
                  CircleAvatar(
                    backgroundColor: Color(0xff28a745),
                    child: Text('8.8',style: TextStyle(fontSize: size.height*0.022,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(width: size.width*0.015,),
                  Text('Rating',style: TextStyle(fontSize: size.height*0.025,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: size.height*0.02,),
              Text('Devworks is a full stack JavaScript Bootcamp located in the heart of Boston that focuses on the technologies you need to get a high paying job as a web developer',style: TextStyle(fontSize: size.height*0.020),),
              SizedBox(height: size.height*0.02,),
              RichText(
                  text:TextSpan(text: 'Average Course Cost:',style: TextStyle(fontSize: size.height*0.020,color: Colors.black),
                  children: [
                    TextSpan(text: ' \$10,000',style: TextStyle(fontSize: size.height*0.022,color: Color(0xff28a745),),),
                  ]
                  ), 
                  ),
                  SizedBox(height: size.height*0.02,),
                Container(
                  height: size.height*0.55,
                  width: size.width,
                  decoration: BoxDecoration(
                    color:  Colors.white,
                    border: Border.all(color: Colors.grey.shade400),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: size.height*0.07,
                        width: size.width,
                        decoration: BoxDecoration(
                          color:  Color(0xffE05433),
                        ),
                        child: Padding(
                          padding:EdgeInsets.only(left: size.width*0.04,top: size.height*0.02),
                          child: Text('Front End Web Development',style: TextStyle(fontSize: size.height*0.025,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                        ),
                       
                        SizedBox(height: size.height*0.02,),
                         Padding(
                           padding: EdgeInsets.only(left: size.width*0.04,right: size.width*0.04),
                           child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               RichText(
                  text:TextSpan(text: 'Duration:',style: TextStyle(fontSize: size.height*0.022,color: Colors.black,fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(text: ' 8 Weeks',style: TextStyle(fontSize: size.height*0.022,color: Colors.black,),),
                  ]
                  ), 
                  ),
                  SizedBox(height: size.height*0.02,),
                  Text('This course will provide you with all of the essentials to become a successful frontend web developer. You will learn to master HTML, CSS and front end JavaScript, along with tools like Git, VSCode and front end frameworks like Vue',style: TextStyle(fontSize: size.height*0.020),),
                  SizedBox(height: size.height*0.02,),
                  Container(
                    height: size.height*0.22,
                    width: size.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: size.height*0.02,right: size.width*0.02,top: size.height*0.02),
                           child: RichText(
                  text:TextSpan(text: 'Cost:',style: TextStyle(fontSize: size.height*0.022,color: Colors.black,),
                  children: [
                    TextSpan(text: ' \$8,000 USD',style: TextStyle(fontSize: size.height*0.022,color: Colors.black,),),
                  ]
                  ), 
                  ),
                         ),
                         SizedBox(height: size.height*0.01,),
                         Divider(color: Colors.grey.shade400,),
                         Padding(
                           padding: EdgeInsets.only(left: size.height*0.02,right: size.width*0.02,top: size.height*0.02),
                           child: RichText(
                  text:TextSpan(text: 'Skill Required:',style: TextStyle(fontSize: size.height*0.022,color: Colors.black,),
                  children: [
                    TextSpan(text: ' Beginner',style: TextStyle(fontSize: size.height*0.022,color: Colors.black,),),
                  ]
                  ), 
                  ),
                         ),
                         SizedBox(height: size.height*0.01,),
                         Divider(color: Colors.grey.shade400,),
                         Padding(
                           padding: EdgeInsets.only(left: size.height*0.02,right: size.width*0.02,top: size.height*0.01),
                           child:  Row(
                             children: [
                               Text('Scholarship Available:',style: TextStyle(fontSize: size.height*0.022,color: Colors.black,),),
                               Icon(Icons.check_sharp,color: Color(0xff28a745),size: 20,),
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
                  ),
                  
                  SizedBox(height: size.height*0.02,),
                   Container(
                  height: size.height*0.51,
                  width: size.width,
                  decoration: BoxDecoration(
                    color:  Colors.white,
                    border: Border.all(color: Colors.grey.shade400),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: size.height*0.07,
                        width: size.width,
                        decoration: BoxDecoration(
                          color:  Color(0xffE05433),
                        ),
                        child: Padding(
                          padding:EdgeInsets.only(left: size.width*0.04,top: size.height*0.02),
                          child: Text('Full Stack Web Development',style: TextStyle(fontSize: size.height*0.025,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                        ),
                       
                        SizedBox(height: size.height*0.02,),
                         Padding(
                           padding: EdgeInsets.only(left: size.width*0.04,right: size.width*0.04),
                           child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               RichText(
                  text:TextSpan(text: 'Duration:',style: TextStyle(fontSize: size.height*0.022,color: Colors.black,fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(text: ' 12 Weeks',style: TextStyle(fontSize: size.height*0.022,color: Colors.black,),),
                  ]
                  ), 
                  ),
                  SizedBox(height: size.height*0.02,),
                  Text('In this course you will learn full stack web development, first learning all about the frontend with HTML/CSS/JS/Vue and then the backend with Node.js/Express/MongoDB',style: TextStyle(fontSize: size.height*0.020),),
                  SizedBox(height: size.height*0.02,),
                  Container(
                    height: size.height*0.22,
                    width: size.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                         Padding(
                           padding: EdgeInsets.only(left: size.height*0.02,right: size.width*0.02,top: size.height*0.02),
                           child: RichText(
                  text:TextSpan(text: 'Cost:',style: TextStyle(fontSize: size.height*0.022,color: Colors.black,),
                  children: [
                    TextSpan(text: ' \$10,000 USD',style: TextStyle(fontSize: size.height*0.022,color: Colors.black,),),
                  ]
                  ), 
                  ),
                         ),
                         SizedBox(height: size.height*0.01,),
                         Divider(color: Colors.grey.shade400,),
                         Padding(
                           padding: EdgeInsets.only(left: size.height*0.02,right: size.width*0.02,top: size.height*0.02),
                           child: RichText(
                  text:TextSpan(text: 'Skill Required:',style: TextStyle(fontSize: size.height*0.022,color: Colors.black,),
                  children: [
                    TextSpan(text: ' Intermediate',style: TextStyle(fontSize: size.height*0.022,color: Colors.black,),),
                  ]
                  ), 
                  ),
                         ),
                         SizedBox(height: size.height*0.01,),
                         Divider(color: Colors.grey.shade400,),
                         Padding(
                           padding: EdgeInsets.only(left: size.height*0.02,right: size.width*0.02,top: size.height*0.01),
                           child:  Row(
                             children: [
                               Text('Scholarship Available:',style: TextStyle(fontSize: size.height*0.022,color: Colors.black,),),
                               Icon(Icons.close,color: Colors.red,size: 20,),
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
                  ),
                  SizedBox(height: size.height*0.02,),
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
                  Icon(Icons.chat,color: Colors.white,),
                  SizedBox(width: size.width*0.005,),
                  Text(
                    ' Read Reviews',
                    style: TextStyle(
                        fontSize: size.height * 0.022, color: Colors.white),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => SubmitReview())));
              },
            ),
            SizedBox(height: size.height*0.02,),
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
                  Icon(Icons.edit,color: Colors.black,),
                  SizedBox(width: size.width*0.005,),
                  Text(
                    'Write a Review',
                    style: TextStyle(
                        fontSize: size.height * 0.022, color: Colors.black),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => EditReview())));
              },
            ),
            SizedBox(height: size.height*0.02,),
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
                  Icon(Icons.account_circle_rounded,color: Colors.white,),
                  SizedBox(width: size.width*0.005,),
                  Text(
                    'Visit Website',
                    style: TextStyle(
                        fontSize: size.height * 0.022, color: Colors.white),
                  ),
                ],
              ),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: ((context) => EditReview())));
              },
            ),
            SizedBox(height: size.height*0.03,),
             Divider(color: Colors.grey.shade400,),
             SizedBox(height: size.height*0.01,),
            Row(
              children: [
                Icon(Icons.check,color: Color(0xff28a745),),
                Text('Housing',style: TextStyle(fontSize: size.height*0.022),),
              ],
            ),
            SizedBox(height: size.height*0.01,),
            Divider(color: Colors.grey.shade400,),
            SizedBox(height: size.height*0.01,),
            Row(
              children: [
                Icon(Icons.check,color: Color(0xffdc3545),),
                Text('Job Assistance',style: TextStyle(fontSize: size.height*0.022),),
              ],
            ),
            SizedBox(height: size.height*0.01,),
            Divider(color: Colors.grey.shade400,),
            SizedBox(height: size.height*0.01,),
            Row(
              children: [
                Icon(Icons.close,color: Color(0xff28a745),),
                Text('Job Guarantee',style: TextStyle(fontSize: size.height*0.022),),
              ],
            ),
            SizedBox(height: size.height*0.01,),
             Divider(color: Colors.grey.shade400,),
             SizedBox(height: size.height*0.01,),
            Row(
              children: [
                Icon(Icons.check,color: Color(0xff28a745),),
                Text('Accepts GI Bill',style: TextStyle(fontSize: size.height*0.022),),
              ],
            ),
            SizedBox(height: size.height*0.01,),
            Divider(color: Colors.grey.shade400,),
      
             SizedBox(height: size.height*0.03,),
             ],
          ),
        ),
      ),
    );
  }
}