import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:devcamper/globals.dart'as Globals;

class ServicClass{
  Dio dio=Dio(
    BaseOptions(
      baseUrl: Globals.baseUrl!,
      connectTimeout: 60000,
      receiveTimeout: 60000,

    ),
  );
  Future getResponce({required String url})async{
    try{
      final response=await dio.get(url,options: Options());
      if(response.statusCode==200){
        return response.data;
      }
    }
    catch(e){
      log(e.toString());
    }
  }
}