import 'package:devcamper/config.dart';
import 'package:devcamper/controllers/profile/profile.dart';
import 'package:devcamper/homepage.dart';
import 'package:devcamper/login/update_password.dart';
import 'package:devcamper/models/profile/profile_response_model.dart';
import 'package:devcamper/models/profile/update_profile_request_model.dart';
import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';

class ManageAccount extends StatefulWidget {
  const ManageAccount({super.key});

  @override
  State<ManageAccount> createState() => _ManageAccountState();
}

class _ManageAccountState extends State<ManageAccount> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  bool isAPIcallProcess = false;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();

  void initState() {
    // TODO: implement initState
    super.initState();
    getBootcamp();
  }

  ProfileResponseModel? user;
  void getBootcamp() async {
    user = await ProfileService.getProfile();
    setState(() {
      _name.text = user!.data!.name.toString();
      _email.text = user!.data!.email.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Manage Account',
          style: TextStyle(fontSize: size.height * 0.025),
        ),
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
          child: _ProfileUI(context),
        ),
      ),
     );
  }

  Widget _ProfileUI(BuildContext context){
    var size = MediaQuery.of(context).size;
    return  Padding(
        padding: EdgeInsets.only(
            left: size.width * 0.02,
            right: size.width * 0.02,
            top: size.height * 0.02),
        child: Column(
          children: [
            Container(
              height: size.height * 0.52,
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
                      'Manage Account',
                      style: TextStyle(
                          fontSize: size.height * 0.025,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Name',
                      style: TextStyle(
                        fontSize: size.height * 0.022,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    TextFormField(
                      controller: _name,
                      decoration: InputDecoration(
                        hintText: 'John Doe',
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
                      'Email',
                      style: TextStyle(fontSize: size.height * 0.022),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    TextFormField(
                      controller: _email,
                      decoration: InputDecoration(
                        hintText: 'Jdoe@gmail.com',
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
                        if (validateAndSave()) {
                          setState(() {
                            isAPIcallProcess = true;
                            UpdateProfileRequestModel model =
                                UpdateProfileRequestModel(
                                    email: _email.text, name: _name.text);
                            ProfileService.updateProfile(model)
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
                        }
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => UpdatePassword())));
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
    final form = globalFormKey.currentState;
    // if (form!.validate()) {
    //   return true;
    // }
    return true;
  }
}
