import 'package:devcamper/config.dart';
import 'package:devcamper/controllers/profile/profile.dart';
import 'package:devcamper/homepage.dart';
import 'package:devcamper/models/profile/update_password_request_model.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

class UpdatePassword extends StatefulWidget {
  UpdatePassword({Key? key}) : super(key: key);

  @override
  State<UpdatePassword> createState() => _UpdatePasswordState();
}

class _UpdatePasswordState extends State<UpdatePassword> {
  final _currentpassword = TextEditingController();
  final _newpassword = TextEditingController();
  final _confirmnewpassword = TextEditingController();
  bool isAPIcallProcess = false;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Password',
            style: TextStyle(fontSize: size.height * 0.025)),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xffE05433),
      ),
      body: ProgressHUD(
        inAsyncCall: isAPIcallProcess,
        opacity: 0.3,
        key: UniqueKey(),
        child: Form(
          key: globalFormKey,
          child: _passwordUI(context),
        ),
      ),
    );
  }

  Widget _passwordUI(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(
          left: size.width * 0.02,
          right: size.width * 0.02,
          top: size.height * 0.02),
      child: Column(
        children: [
          Container(
            height: size.height * 0.55,
            width: size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade400),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                  left: size.width * 0.02,
                  right: size.width * 0.02,
                  top: size.height * 0.02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Update Password',
                    style: TextStyle(
                        fontSize: size.height * 0.025,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    'Current Password',
                    style: TextStyle(fontSize: size.height * 0.022),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  TextFormField(
                    controller: _currentpassword,
                    decoration: InputDecoration(
                      hintText: 'Current Password',
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
                    'New Password',
                    style: TextStyle(fontSize: size.height * 0.022),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  TextFormField(
                    controller: _newpassword,
                    decoration: InputDecoration(
                      hintText: 'New Password',
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
                    'Confirm New Password',
                    style: TextStyle(fontSize: size.height * 0.022),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  TextFormField(
                    controller: _confirmnewpassword,
                    decoration: InputDecoration(
                      hintText: 'Confirm New Password',
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
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff343a40),
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
                      if (validateAndSave()) {
                        setState(() {
                          isAPIcallProcess = true;
                          UpdatePasswordRequestModel model =
                              UpdatePasswordRequestModel(
                                  currentPassword: _currentpassword.text,
                                  newPassword: _newpassword.text);
                          ProfileService.updatePassword(model)
                              .then((response) => {
                                    setState(() {
                                      isAPIcallProcess = false;
                                    }),
                                    if (response.success == true)
                                      {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: ((context) =>
                                                    HomePage())))
                                      }
                                    else
                                      {
                                        FormHelper.showSimpleAlertDialog(
                                            context,
                                            Config.appName,
                                            "Something went wrong!",
                                            "OK", () {
                                          Navigator.pop(context);
                                        })
                                      }
                                  });
                        });
                      } else {
                        FormHelper.showSimpleAlertDialog(context,
                            Config.appName, "Confirm password does not match with current password!", "OK", () {
                          Navigator.pop(context);
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool validateAndSave() {
    if (_newpassword.text == _confirmnewpassword.text && _newpassword.text != ''  && _currentpassword.text != ''  && _confirmnewpassword.text != '') {
      return true;
    }
    return false;
  }
}
