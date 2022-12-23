
import 'package:devcamper/login/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
 MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
    //  theme: ThemeData(
    //   primaryColor:  Color(0xffE05433),
    //  ),
     home: LoginPage(),
    );
  }
}