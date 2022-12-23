import 'package:devcamper/login/login.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});
  final  _emailcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Resetpassword',style: TextStyle(fontSize: size.height*0.025),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xffE05433),
      ),
      body: Padding(
        padding:EdgeInsets.only(left: size.width*0.02,right: size.width*0.02,top: size.height*0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) => LoginPage())));
              },
              child: Text('Back to login',style: TextStyle(fontSize: size.height*0.022,color:Color(0xffE05433),),)),
            SizedBox(
              height: size.height*0.02,
            ),
            Text('Reset Password',style: TextStyle(fontSize: size.height*0.028,fontWeight: FontWeight.bold),),
            SizedBox(height: size.height*0.02,),
            Text('Use this form to reset your password using the registered email address.',style: TextStyle(fontSize: size.height*0.022,),),
            SizedBox(height: size.height*0.02,),
            Text('Enter Email',style: TextStyle(fontSize: size.height*0.022,),),
            SizedBox(height: size.height*0.02,),
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
            Container(
              height: size.height*0.06,
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0xff343a40),
              ),
              child: Center(child: Text('Reset Password',style:TextStyle(fontSize: size.height*0.025,color: Colors.white))),
            ),
          ],
        ),
      ),
    );
  }
}