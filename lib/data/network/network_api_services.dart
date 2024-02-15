import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_mvvvm/data/app_exceptions.dart';
import 'package:flutter_mvvvm/data/network/base_api_services.dart';
import 'package:http/http.dart'as http;

class NetworkApiServices extends BaseApiServices{
  @override
  ///getApi
  Future<dynamic> getApi(String url) async{
    print(url);
    dynamic responseJson;
    try{
      var response=await http.get(Uri.parse(url));
      responseJson=returnResponse(response);

    }on SocketException{
      throw InternetException('No internet');
    }on RequestTimeout{
      throw RequestTimeout('');
    }
    return responseJson;

  }


  ///postApi
  Future<dynamic> postApi(var data, String url) async{

    if (kDebugMode) {
      print(url);
    }
    dynamic responseJson;
    try{
      var response=await http.post(Uri.parse(url),
        body: (data),
      );
      responseJson=returnResponse(response);

    }on SocketException{
      throw InternetException('No internet');
    }on RequestTimeout{
      throw RequestTimeout('');
    }
    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;

  }
  ///function
  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic responseJson=jsonDecode(response.body);
        return responseJson;
      case 400:
        dynamic responseJson=jsonDecode(response.body);
        return responseJson;
      default:
        throw FetchDataException('');
    }
  }

  }
