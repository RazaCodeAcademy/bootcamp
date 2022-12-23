import 'package:devcamper/manage_review/bootcamp_info.dart';
import 'package:devcamper/manage_review/submit_review.dart';
import 'package:flutter/material.dart';

class EditReview extends StatefulWidget {
  const EditReview({super.key});

  @override
  State<EditReview> createState() => _EditReviewState();
}

class _EditReviewState extends State<EditReview> {
  int _slidervalue=2;
  final _reviewtitlecontroller=TextEditingController();
  final _yourreviewcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size; 
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Review',style: TextStyle(fontSize: size.height*0.025),),
        elevation: 0,
        backgroundColor: Color(0xffE05433),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02,top: size.height*0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('DevWorks Bootcamp',style: TextStyle(fontSize: size.height*0.025,fontWeight: FontWeight.bold),),
              SizedBox(height: size.height*0.02,),
              Container(
                height: size.height*0.7,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey.shade400,
                  )
                ),
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
                          children: [
                            Icon(Icons.arrow_back_ios_new,color: Colors.grey.shade400,),
                            Text('Bootcamp Info',style: TextStyle(fontSize: size.height*0.022,color: Colors.grey.shade400),),
                          ],
                        ),
                      ),
                      SizedBox(height: size.height*0.02,),
                      Text('Write a Review',style: TextStyle(fontSize: size.height*0.025,color: Color(0xffE05433)),),
                      SizedBox(height: size.height*0.02,),
                      Text('You must have attended and graduated this bootcamp to review',style: TextStyle(fontSize: size.height*0.020,color: Colors.grey.shade400),),
                      SizedBox(height: size.height*0.02,),
                       RichText(
                text:TextSpan(text: 'Rating:',style: TextStyle(fontSize: size.height*0.020,color: Colors.black),
                children: [
                  TextSpan(text: ' 8',style: TextStyle(fontSize: size.height*0.020,color: Color(0xffE05433),),),
                ]
                ), 
                ),
                SizedBox(height: size.height*0.01,),
             SliderTheme(
              data: SliderTheme.of(context).copyWith(
                 activeTrackColor: Color(0xffE05433),
                 inactiveTrackColor: Colors.grey.shade200,
                 thumbColor: Color(0xffE05433),
                 overlayColor:  Color(0xffE05433).withAlpha(20),
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
                         _slidervalue=value.round();
                       });
                     }),
                     ),
                ),
                SizedBox(height: size.height*0.02,),
                TextFormField(
                  controller: _reviewtitlecontroller,
                  decoration:InputDecoration(
                    hintText: 'Review title',
                    contentPadding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02),
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
                     borderSide: BorderSide(color:  Color(0xff495057)),
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
                  maxLines: 8,
                  controller: _yourreviewcontroller,
                  decoration:InputDecoration(
                    hintText: 'Your review',
                    contentPadding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02,top: size.height*0.02),
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
                     borderSide: BorderSide(color:  Color(0xff495057)),
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
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => SubmitReview())));
                },
              ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}