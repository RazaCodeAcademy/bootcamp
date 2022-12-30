import 'package:devcamper/config.dart';
import 'package:devcamper/controllers/login/login.dart';
import 'package:devcamper/homepage.dart';
import 'package:devcamper/login/resetpassword.dart';
import 'package:devcamper/models/login/login_request_model.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:html';
import 'dart:ui' as ui;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool ishover = false;
  bool isAPIcallProcess = false;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffE05433),
        title: Text(
          'Login',
          style: TextStyle(fontSize: size.height * 0.025),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ProgressHUD(
        inAsyncCall: isAPIcallProcess,
        opacity: 0.3,
        key: UniqueKey(),
        child: Form(
          key: globalFormKey,
          child: _loginUI(context),
        ),
      ),
    );
  }

  Widget _loginUI(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding:
          EdgeInsets.only(left: size.width * 0.02, right: size.width * 0.02),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text(
            'Login',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: size.height * 0.030, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
            'Log in to list your bootcamp or rate, review and favorite bootcamps',
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: size.height * 0.020),
          ),
          WebView(
            initialUrl: Uri.dataFromString('<html><body><iframe src="https://www.youtube.com/embed/abc"></iframe></body></html>', mimeType: 'text/html').toString(),
            javascriptMode: JavascriptMode.unrestricted,
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Text(
            'Email Address',
            style: TextStyle(
              fontSize: size.height * 0.022,
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          TextFormField(
            controller: _email,
            decoration: InputDecoration(
              hintText: 'Enter email',
              contentPadding: EdgeInsets.only(
                  left: size.width * 0.02, right: size.width * 0.02),
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
                borderSide: BorderSide(color: Color(0xff495057)),
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
            height: size.height * 0.02,
          ),
          Text(
            'Password',
            style: TextStyle(
              fontSize: size.height * 0.022,
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          TextFormField(
            controller: _password,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Enter password',
              contentPadding: EdgeInsets.only(
                  left: size.width * 0.02, right: size.width * 0.02),
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
                borderSide: BorderSide(color: Color(0xff495057)),
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
            height: size.height * 0.02,
          ),
          InkWell(
            hoverColor: Colors.amber,
            onHover: (value) {
              setState(() {
                ishover = value;
              });
            },
            onTap: () {
              if (validateAndSave()) {
                setState(() {
                  isAPIcallProcess = true;
                  email = _email.text;
                  password = _password.text;

                  LoginRequestModel model =
                      LoginRequestModel(email: email, password: password);
                  LoginService.login(model).then((response) => {
                        setState(() {
                          isAPIcallProcess = false;
                        }),
                        if (response)
                          {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => HomePage())))
                          }
                        else
                          {
                            FormHelper.showSimpleAlertDialog(
                                context,
                                Config.appName,
                                "Invalid Email/Password !",
                                "OK", () {
                              Navigator.pop(context);
                            })
                          }
                      });
                });
              }
            },
            child: Container(
              height: size.height * 0.06,
              width: size.width,
              decoration: BoxDecoration(
                color: Color(0xffE05433),
                borderRadius: BorderRadius.circular(0),
              ),
              child: Center(
                  child: Text(
                'Login',
                style: TextStyle(
                    fontSize: size.height * 0.025, color: Colors.white),
              )),
            ),
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          RichText(
            text: TextSpan(
                text: 'Forgot Password?',
                style: TextStyle(
                    fontSize: size.height * 0.020, color: Colors.black),
                children: [
                  TextSpan(
                      text: ' Reset Password',
                      style: TextStyle(
                        fontSize: size.height * 0.020,
                        color: Color(0xffE05433),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResetPassword(),
                              ));
                        }),
                ]),
          ),
        ],
      ),
    );
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      return true;
    }
    return false;
  }
}
