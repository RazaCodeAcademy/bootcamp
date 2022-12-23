import 'package:devcamper/manage_review/edit_review.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ManageReview extends StatefulWidget {
  const ManageReview({super.key});

  @override
  State<ManageReview> createState() => _ManageReviewState();
}

class _ManageReviewState extends State<ManageReview> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Review',style: TextStyle(fontSize: size.height*0.025),),
        backgroundColor: Color(0xffE05433),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02,top: size.height*0.02),
        child: Column(
          children: [
            Container(
              height: size.height*0.4,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02,top: size.height*0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Manage Reviews',style: TextStyle(fontSize: size.height*0.025,fontWeight: FontWeight.bold),),
                    SizedBox(height: size.height*0.03,),
                    Divider(
                      color: Colors.grey.shade400,
                    ),
                    SizedBox(height: size.height*0.01,),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: size.width*0.02),
                          child: Text('Bootcamp',style: TextStyle(fontSize: size.height*0.022,fontWeight: FontWeight.bold),),
                        ),
                        Container(width: size.width*0.32,),
                         Text('Rating',style: TextStyle(fontSize: size.height*0.022,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(height: size.height*0.02,),
                    Container(
                      height: size.height*0.07,
                      width: size.width,
                      decoration: BoxDecoration(
                       color: Colors.grey.shade200,
                      ),
                      child: Padding(
                padding:EdgeInsets.only(left: size.width*0.02,right: size.width*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('DevWorks Bootcamp',style: TextStyle(fontSize: size.height*0.020),),
                    // Container(width: size.width*0.02,),
                    Text('10',style: TextStyle(fontSize: size.height*0.020),),
                    Row(
                      
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: ((context) => EditReview())));
                          },
                          child: Container(
                            height: size.height*0.03,
                            width: size.width*0.07,
                            decoration: BoxDecoration(
                              color: Color(0xff6c757d)
                            ),
                            child: Icon(Icons.edit,color: Colors.white,size: 14,),
                          ),
                        ),
                        SizedBox(width: size.width*0.015,),
                         Container(
                          height: size.height*0.03,
                          width: size.width*0.07,
                          decoration: BoxDecoration(
                            color: Color(0xffdc3545),
                          ),
                          child:Icon(Icons.close,color: Colors.white,size: 14,),
                        ),
                        
                      ],
                    ),
                  ],
                ),
              ),
                    ),
                  Container(
                      height: size.height*0.07,
                      width: size.width,
                      decoration: BoxDecoration(
                       color: Colors.white,
                      ),
                      child: Padding(
                padding:EdgeInsets.only(left: size.width*0.02,right: size.width*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('DevWorks Bootcamp',style: TextStyle(fontSize: size.height*0.020),),
                    // Container(width: size.width*0.02,),
                    Text('10',style: TextStyle(fontSize: size.height*0.020),),
                    Row(
                      
                      children: [
                        InkWell(
                          onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: ((context) => EditReview())));
                          },
                          child: Container(
                            height: size.height*0.03,
                            width: size.width*0.07,
                            decoration: BoxDecoration(
                              color: Color(0xff6c757d)
                            ),
                            child: Icon(Icons.edit,color: Colors.white,size: 14,),
                          ),
                        ),
                        SizedBox(width: size.width*0.015,),
                         Container(
                          height: size.height*0.03,
                          width: size.width*0.07,
                          decoration: BoxDecoration(
                            color: Color(0xffdc3545),
                          ),
                          child:Icon(Icons.close,color: Colors.white,size: 14,),
                        ),
                        
                      ],
                    ),
                  ],
                ),
              ),
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
}