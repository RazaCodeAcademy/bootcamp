import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _fullnamecontroller=TextEditingController();
  final _emailcontroller=TextEditingController();
  final _password=TextEditingController();
  final _conformpassword=TextEditingController();
  var _ridiobutton;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Register',style: TextStyle(fontSize: size.height*0.025),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffE05433),
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02,top: size.height*0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           Row(
                children: [
                 Icon(Icons.group_add,color: Colors.black,),
                 SizedBox(width: size.width*0.02,),
                 Text('Register',style: TextStyle(fontSize: size.height*0.025,fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: size.height*0.02,),
              Text('Register to list your bootcamp or rate, review and favorite bootcamps',style: TextStyle(fontSize: size.height*0.020),),
              SizedBox(height: size.height*0.02,),
              Text('Name',style: TextStyle(fontSize: size.height*0.022,),),
              SizedBox(height: size.height*0.01,),
              TextFormField(
                controller: _fullnamecontroller,
                decoration:InputDecoration(
                  hintText: 'Enter full name',
                  contentPadding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                     borderSide: BorderSide(
                    color: Color(0xff495057),
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
              Text('Email Address',style: TextStyle(fontSize: size.height*0.022),),
              SizedBox(height: size.height*0.01,),
              TextFormField(
                controller: _emailcontroller,
                decoration:InputDecoration(
                  hintText: 'Enter email',
                  contentPadding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                     borderSide: BorderSide(
                    color: Color(0xff495057),
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
              Text('Password',style: TextStyle(fontSize: size.height*0.022),),
              SizedBox(height: size.height*0.01,),
              TextFormField(
                controller: _password,
                decoration:InputDecoration(
                  hintText: 'Enter password',
                  contentPadding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                     borderSide: BorderSide(
                    color: Color(0xff495057),
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
              Text('Confirm Password',style: TextStyle(fontSize: size.height*0.022),),
              SizedBox(height: size.height*0.01,),
              TextFormField(
                controller: _conformpassword,
                decoration:InputDecoration(
                  hintText: 'Confirm password',
                  contentPadding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                     borderSide: BorderSide(
                    color: Color(0xff495057),
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
              Container(
                height: size.height*0.2,
                width: size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xff495057).withOpacity(0.6),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: size.width*0.02,right: size.width*0.02,top: size.height*0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('User Role',style: TextStyle(fontSize: size.height*0.025,fontWeight: FontWeight.bold),),
                      SizedBox(height: size.height*0.02,),
                      Row(
                          children: [
                            Radio(
                              activeColor: Color(0xffF16522),
                              value: 'regular', 
                              groupValue: _ridiobutton,
                               onChanged: ( dynamic value){
                                 setState(() {
                                   _ridiobutton=value;
                                 });
                               }
                              ),
                              Text('Regular User (Browse, Write reviews, etc)',style: TextStyle(fontSize: 14),),
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              activeColor: Color(0xffF16522),
                              value: 'bootcamp', 
                              groupValue: _ridiobutton,
                               onChanged: ( dynamic value){
                                 setState(() {
                                   _ridiobutton=value;
                                 });
                               }
                              ),
                              Text('Bootcamp Publisher',style: TextStyle(fontSize: 14),),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height*0.02,),
              Text('* You must be affiliated with the bootcamp in some way in order to add it to DevCamper.',style: TextStyle(fontSize: size.height*0.020,color: Colors.red),),
              SizedBox(height: size.height*0.02,),
              Container(
                height: size.height*0.06,
                width: size.width,
                decoration: BoxDecoration(
                  color: Color(0xffF16522),
                ),
                child: Center(child: Text('Register',style: TextStyle(fontSize: size.height*0.025,color: Colors.white),)),
              ),
              SizedBox(height: size.height*0.02,),
           ],
         ),
        ),
      ),
    );
  }
}