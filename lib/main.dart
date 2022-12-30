import 'package:devcamper/controllers/login/login_shared_service.dart';
import 'package:devcamper/homepage.dart';
import 'package:devcamper/login/login.dart';
import 'package:flutter/material.dart';

import 'dart:html';
import 'dart:ui' as ui;

Widget _defaultHome = LoginPage();
void main() async {
  // ignore: undefined_prefixed_name
  ui.platformViewRegistry.registerViewFactory(
      'hello-world-html',
          (int viewId) => IFrameElement()
        ..width = '640'
        ..height = '360'
        ..src = 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7055533.831096819!2d64.84597594545512!3d30.291645192843063!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38db52d2f8fd751f%3A0x46b7a1f7e614925c!2sPakistan!5e0!3m2!1sen!2s!4v1644913595086!5m2!1sen!2s'
        ..style.border = 'none');

  runApp(Directionality(
    textDirection: TextDirection.ltr,
    child: SizedBox(
      width: 640,
      height: 360,
      child: HtmlElementView(viewType: 'hello-world-html'),
    ),
  ));
  // WidgetsFlutterBinding.ensureInitialized();
  // bool result = await LoginSharedService.isLoggedIn();
  // if (result) {
  //   _defaultHome = const HomePage();
  // }
  // runApp(MyApp());
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
