import 'package:devcamper/manage_bootcamps/add_bootcamp_courses.dart';
import 'package:devcamper/manage_bootcamps/manage_bootcamp.dart';
import 'package:flutter/material.dart';

class ManageCourse extends StatefulWidget {
  const ManageCourse({super.key});

  @override
  State<ManageCourse> createState() => _ManageCourseState();
}

class _ManageCourseState extends State<ManageCourse> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Courses',style: TextStyle(fontSize: size.height*0.025),),
        centerTitle: true,
        backgroundColor: Color(0xffE05433),
        elevation: 0,
      ),
      body: Padding(
        padding:EdgeInsets.only(left: size.width*0.02,right: size.width*0.02,top: size.height*0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Manage Courses',style: TextStyle(fontSize: size.height*0.025,fontWeight: FontWeight.bold),),
            SizedBox(height: size.height*0.02,),
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
                      Image.asset(
                        'assets/image/image1.jpg',
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
                              'Devworks Bootcamp',
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
                              '8.8',
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
                          'Boston, MA',
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
                        child:
                            Text('Web Development, UI/UX, Mobile Development',
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
           SizedBox(height: size.height*0.02,),
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
               Navigator.push(context, MaterialPageRoute(builder: ((context) => AddBootcampCourse())));
              },
            ),
            SizedBox(height: size.height*0.02,),
            Divider(
              color: Colors.grey.shade400,
            ),
            SizedBox(height: size.height*0.01,),
            Text('Title',style: TextStyle(fontSize: size.height*0.025,fontWeight: FontWeight.bold),),
            SizedBox(height: size.height*0.01,),
            // Divider(color: Colors.grey.shade400,),
            Container(
              height: size.height*0.1,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
              child: Padding(
                padding:EdgeInsets.only(left: size.width*0.02,right: size.width*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Front End Web Development',style: TextStyle(fontSize: size.height*0.022),),
                    Row(
                      
                      children: [
                        Container(
                          height: size.height*0.05,
                          width: size.width*0.12,
                          decoration: BoxDecoration(
                            color: Color(0xff6c757d)
                          ),
                          child: IconButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => AddBootcampCourse())));
                            }, icon:Icon(Icons.edit,color: Colors.white,)),
                        ),
                        SizedBox(width: size.width*0.015,),
                         Container(
                          height: size.height*0.05,
                          width: size.width*0.12,
                          decoration: BoxDecoration(
                            color: Color(0xffdc3545),
                          ),
                          child: IconButton(
                            onPressed: (){}, icon:Icon(Icons.close,color: Colors.white,)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height*0.1,
              width: size.width,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding:EdgeInsets.only(left: size.width*0.02,right: size.width*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Front Stack Web Development',style: TextStyle(fontSize: size.height*0.022),),
                    Row(
                      
                      children: [
                        Container(
                          height: size.height*0.05,
                          width: size.width*0.12,
                          decoration: BoxDecoration(
                            color: Color(0xff6c757d)
                          ),
                          child: IconButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: ((context) => AddBootcampCourse())));
                            }, icon:Icon(Icons.edit,color: Colors.white,)),
                        ),
                        SizedBox(width: size.width*0.015,),
                         Container(
                          height: size.height*0.05,
                          width: size.width*0.12,
                          decoration: BoxDecoration(
                            color: Color(0xffdc3545),
                          ),
                          child: IconButton(
                            onPressed: (){}, icon:Icon(Icons.close,color: Colors.white,)),
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
    );
  }
}