import 'package:devcamper/controllers/login/login_shared_service.dart';
import 'package:devcamper/homepage.dart';
import 'package:devcamper/login/login.dart';
import 'package:flutter/material.dart';



Widget _defaultHome = LoginPage();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool result = await LoginSharedService.isLoggedIn();
  if (result) {
    _defaultHome = const HomePage();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //  theme: ThemeData(
      //   primaryColor:  Color(0xffE05433),
      //  ),
      home: _defaultHome,
    );
  }
}
