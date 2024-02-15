import 'package:flutter/material.dart';
import 'package:flutter_mvvvm/res/getx_localization/colors/app_colors.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
class Utils{

  static flutterToast(String message){
    Fluttertoast.showToast(
        msg: message ,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColor.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }


  static flutterToastCenter(String message){
    Fluttertoast.showToast(
        msg: message ,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: AppColor.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  static snackBar(String title, String message){
    Get.snackbar(title, message);
  }




}