import 'dart:async';
import 'package:devcamper/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/login/login_response_model.dart';

class LoginSharedService {
  static Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    var isKeyExist = token != null ? true : false;
    return isKeyExist;
  }

  static Future<List> loginDetails() async {
    final prefs = await SharedPreferences.getInstance();
    var success = prefs.getString('success');
    var token = prefs.getString('token');
    var isKeyExist = token != null ? true : false;

    if (success == 'true' && isKeyExist) {
      return [token, success];
      // return loginResponseJson("{success:$success, token:$token}");
    }

    return [];
  }

  static Future<void> setLoginDetails(LoginResponseModel model) async {
    // Obtain shared preferences.
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('success', model.success.toString());
    await prefs.setString('token', model.token.toString());
  }

  static Future<void> logout(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    await prefs.remove('success');
    Navigator.push(
        context, MaterialPageRoute(builder: ((context) => LoginPage())));
  }
}
