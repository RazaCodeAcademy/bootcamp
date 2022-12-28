import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

class AddBootcampCourse extends StatefulWidget {
  const AddBootcampCourse({super.key});

  @override
  State<AddBootcampCourse> createState() => _AddBootcampCourseState();
}

class _AddBootcampCourseState extends State<AddBootcampCourse> {
  final _titlecontroller=TextEditingController();
  final _duration=TextEditingController();
  final _tuitioncontroller=TextEditingController();
  final _courcesummary=TextEditingController();
  bool scholarship=false;
  var skillvalue;
  var skill=[
    'Beginner (Any)',
    'Intermediate',
    'Advance',
  ];
  final _skillkey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Bootcamp Course',style:TextStyle(fontSize: size.height*0.025)),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xffE05433),
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
                height: size.height*0.93,
                width: size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02,top: size.height*0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Add Course',style: TextStyle(fontSize: size.height*0.025,color:Color(0xffE05433),fontWeight: FontWeight.bold),),
                      SizedBox(height: size.height*0.02,),
                      Text('Course Title',style: TextStyle(fontSize: size.height*0.022,),),
                      SizedBox(height: size.height*0.01,),
                      TextFormField(
                controller: _titlecontroller,
                decoration:InputDecoration(
                  hintText: 'Title',
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
                   borderSide: BorderSide(color:  Color.fromARGB(255, 116, 167, 218)),
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
                height: size.height*0.02,
              ),
              Text('Duration',style: TextStyle(fontSize: size.height*0.022),),
              SizedBox(height: size.height*0.01,),
              NumberInputWithIncrementDecrement(
                buttonArrangement: ButtonArrangement.rightEnd,
                initialValue: 0,
                style: TextStyle(color:Color(0xff6c757d),),
                incIconColor: Color(0xff6c757d),
                decIconColor:  Color(0xff6c757d),
                incDecBgColor:  Color(0xff6c757d),
                max: double.maxFinite,
                min: -10000000000,
                textAlign: TextAlign.left,
                autovalidateMode: AutovalidateMode.always,
                numberFieldDecoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: size.width*0.02,),
                  border: InputBorder.none,
                ),
                widgetContainerDecoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  border: Border.all(color:  Color(0xff6c757d),),
                ) ,
                controller: TextEditingController(),
                ),
              SizedBox(height: size.height*0.01,),
              Text('Enter number of weeks course lasts',style: TextStyle(fontSize: size.height*0.018,color: Colors.grey.shade400),),
              SizedBox(height: size.height*0.01,),
              Text('Course Tuition',style: TextStyle(fontSize: size.height*0.022,),),
              SizedBox(height: size.height*0.01,),
              NumberInputWithIncrementDecrement(
                buttonArrangement: ButtonArrangement.rightEnd,
                initialValue: 0,
                style: TextStyle(color:Color(0xff6c757d),),
                incIconColor: Color(0xff6c757d),
                decIconColor:  Color(0xff6c757d),
                incDecBgColor:  Color(0xff6c757d),
                max: double.maxFinite,
                min: -10000000000,
                textAlign: TextAlign.left,
                autovalidateMode: AutovalidateMode.always,
                numberFieldDecoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: size.width*0.02,),
                  border: InputBorder.none,
                ),
                widgetContainerDecoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  border: Border.all(color:  Color(0xff6c757d),),
                ) ,
                controller: TextEditingController(),
                ),
              SizedBox(height: size.height*0.01,),
              Text('USD Currency',style: TextStyle(fontSize: size.height*0.018,color: Colors.grey.shade400),),
                SizedBox(height: size.height*0.01,),
                Text('Minimum Skill Required',style: TextStyle(fontSize: size.height*0.022),),
                SizedBox(height: size.height*0.01,),
                DropdownButtonFormField(
                          key: _skillkey,
                          elevation: 0,
                          dropdownColor: Colors.grey.shade200,
                          iconEnabledColor:  Color(0xff6c757d),
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
                                color:  Color(0xff6c757d),),
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
                                  BorderRadius.circular(size.height * 0),
                              borderSide: BorderSide(
                                color:  Color(0xff6c757d),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(size.height * 0),
                              borderSide: BorderSide(
                                color:  Color(0xff6c757d),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(size.height * 0),
                              borderSide: BorderSide(
                                color:  Color(0xff6c757d),
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
                        SizedBox(height: size.height*0.02,),
                        TextFormField(
                          maxLines: 5,
                          maxLength: 500,
                controller: _courcesummary,
                decoration:InputDecoration(
                  hintText: 'Course descripition summary',
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
              // SizedBox(height: size.height*0.01,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Checkbox( 
                 materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                 visualDensity: VisualDensity.compact,
                 activeColor:Color(0xffE05433) , 
                   value:scholarship,  
                   onChanged: (bool? value) {  
                     setState(() {  
                       scholarship = value!;  
                     });  
                   },  
                 ),  
                 Text('Scholarship Available',style: TextStyle(fontSize: size.height*0.022,color:Color(0xff6c757d),),),
                ],
              ),
              SizedBox(height: size.height*0.02,),
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