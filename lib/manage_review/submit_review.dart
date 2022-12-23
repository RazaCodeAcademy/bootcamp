import 'package:devcamper/manage_review/bootcamp_info.dart';
import 'package:devcamper/manage_review/edit_review.dart';
import 'package:flutter/material.dart';

class SubmitReview extends StatefulWidget {
  const SubmitReview({super.key});

  @override
  State<SubmitReview> createState() => _SubmitReviewState();
}

class _SubmitReviewState extends State<SubmitReview> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Submit Review',style: TextStyle(fontSize: size.height*0.025),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffE05433),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02,top: size.height*0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => BootcampInfo())));
                },
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height*0.05,
                      width: size.width*0.4,
                      decoration: BoxDecoration(
                        color: Color(0xff6c757d),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02),
                        child: Row(
                          children: [
                            Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 15,),
                            Text('Bootcamp Info',style:TextStyle(fontSize: size.height*0.020,color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                    Container(width: size.width*0.27,),
                    CircleAvatar(
                      backgroundColor: Color(0xff28a745),
                      child: Text('8.8',style: TextStyle(fontSize: size.height*0.022,color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(width: size.width*0.015,),
                    Text('Rating',style: TextStyle(fontSize: size.height*0.025,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              SizedBox(height: size.height*0.02,),
              Text('DevWorks Bootcamp Reviews',style: TextStyle(fontSize: size.height*0.025,fontWeight: FontWeight.bold),),
              SizedBox(height: size.height*0.02,),
              Container(
                height: size.height*0.4,
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
                        color: Color(0xff343a40),
                      ),
                      child: Padding(
                        padding:EdgeInsets.only(left: size.width*0.04,top: size.height*0.02),
                        child: Text('Fantastic Bootcamp',style: TextStyle(fontSize: size.height*0.025,color: Colors.white,fontWeight: FontWeight.bold),),
                      ),
                      ),
                      SizedBox(height: size.height*0.02,),
                       Padding(
                         padding: EdgeInsets.only(left: size.width*0.04,right: size.width*0.04),
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             RichText(
                text:TextSpan(text: 'Rating:',style: TextStyle(fontSize: size.height*0.020,color: Colors.black),
                children: [
                  TextSpan(text: ' 10',style: TextStyle(fontSize: size.height*0.022,color: Color(0xff28a745),),),
                ]
                ), 
                ),
                SizedBox(height: size.height*0.02,),
                Text('Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi similique mollitia, praesentium, animi harum officia dolores corporis ex tempore consequuntur dolorem ullam dolorum magnam corrupti quaerat tempora repudiandae! Similique, molestiae. Iste, blanditiis recusandae unde tenetur eius exercitationem rerum a fuga.',style: TextStyle(fontSize: size.height*0.020),),
                SizedBox(height: size.height*0.02,),
                Text('Writtern By Kevin Smith',style: TextStyle(fontSize: size.height*0.022,color: Colors.grey.shade400),),
                           ],
                         ),
                       ),
                  ],
                ),
                ),
                SizedBox(height: size.height*0.02,),
              Container(
                height: size.height*0.4,
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
                        color: Color(0xff343a40),
                      ),
                      child: Padding(
                        padding:EdgeInsets.only(left: size.width*0.04,top: size.height*0.02),
                        child: Text('Learned a Lot',style: TextStyle(fontSize: size.height*0.025,color: Colors.white,fontWeight: FontWeight.bold),),
                      ),
                      ),
                      SizedBox(height: size.height*0.02,),
                       Padding(
                         padding: EdgeInsets.only(left: size.width*0.04,right: size.width*0.04),
                         child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             RichText(
                text:TextSpan(text: 'Rating:',style: TextStyle(fontSize: size.height*0.020,color: Colors.black),
                children: [
                  TextSpan(text: ' 9',style: TextStyle(fontSize: size.height*0.022,color: Color(0xff28a745),),),
                ]
                ), 
                ),
                SizedBox(height: size.height*0.02,),
                Text('Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi similique mollitia, praesentium, animi harum officia dolores corporis ex tempore consequuntur dolorem ullam dolorum magnam corrupti quaerat tempora repudiandae! Similique, molestiae. Iste, blanditiis recusandae unde tenetur eius exercitationem rerum a fuga.',style: TextStyle(fontSize: size.height*0.020),),
                SizedBox(height: size.height*0.02,),
                Text('Writtern By Jill Samson',style: TextStyle(fontSize: size.height*0.022,color: Colors.grey.shade400),),
                           ],
                         ),
                       ),
                  ],
                ),
                ),
                SizedBox(height: size.height*0.03,),
                ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffE05433),
                minimumSize: const Size.fromHeight(50),
                shadowColor: Color(0xffE05433),
                // foregroundColor: Colors.grey.shade400,
                elevation: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.edit,color: Colors.white,),
                  Text(
                    'Review This Bootcamp',
                    style: TextStyle(
                        fontSize: size.height * 0.022, color: Colors.white),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => EditReview())));
              },
            ),
            SizedBox(height: size.height*0.03,),
           
            ],
          ),
        ),
      ),
    );
  }
}