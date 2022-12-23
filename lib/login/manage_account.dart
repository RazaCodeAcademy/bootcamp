import 'package:devcamper/login/update_password.dart';
import 'package:flutter/material.dart';

class ManageAccount extends StatefulWidget {
  const ManageAccount({super.key});

  @override
  State<ManageAccount> createState() => _ManageAccountState();
}

class _ManageAccountState extends State<ManageAccount> {
final _namecontroller=TextEditingController();
final _emailcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Account',style: TextStyle(fontSize: size.height*0.025),),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xffE05433),
      ),
      body: Padding(
        padding:EdgeInsets.only(left: size.width*0.02,right: size.width*0.02,top: size.height*0.02),
        child: Column(
          children: [
            Container(
              height: size.height*0.52,
              width: size.width,
              decoration: BoxDecoration(  
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade400),
              ),
              child: Padding(
                padding:EdgeInsets.only(left: size.width*0.02,right: size.width*0.02,top: size.height*0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Manage Account',style: TextStyle(fontSize: size.height*0.025,fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: size.height*0.02,
                    ),
                    Text('Name',style: TextStyle(fontSize: size.height*0.022,),),
                    SizedBox(height: size.height*0.01,),
                    TextFormField(
              controller: _namecontroller,
              decoration:InputDecoration(
                hintText: 'John Doe',
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
            Text('Email',style: TextStyle(fontSize: size.height*0.022),),
            SizedBox(height: size.height*0.01,),
            TextFormField(
              controller: _emailcontroller,
              decoration:InputDecoration(
                hintText: 'Jdoe@gmail.com',
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
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff28a745),
                minimumSize: const Size.fromHeight(50),
                shadowColor: Colors.grey,
                foregroundColor: Colors.grey.shade400,
                elevation: 0,
              ),
              child: Text(
                'Save',
                style: TextStyle(
                    fontSize: size.height * 0.022, color: Colors.white),
              ),
              onPressed: () {
              
              },
            ),
            SizedBox(height: size.height*0.02,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff6c757d),
                minimumSize: const Size.fromHeight(50),
                shadowColor: Colors.grey,
                foregroundColor: Colors.grey.shade400,
                elevation: 0,
              ),
              child: Text(
                'Update Password',
                style: TextStyle(
                    fontSize: size.height * 0.022, color: Colors.white),
              ),
              onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: ((context) => UpdatePassword())));
              },
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