import 'package:flutter/cupertino.dart';
import 'package:flutter_mvvvm/repository/login_repository.dart';
import 'package:flutter_mvvvm/utils/utils.dart';
import 'package:get/get.dart';

class LoginViewController extends GetxController{
  final _api=LoginRepository();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController =TextEditingController();
  final bool  loading=false;



void loginApi(){
  loading==true;
  Map data={
   "email":emailController.text.toString(),
    "password":passwordController.text.toString(),
  };
  _api.loginApi(data).then((value) => {
    Utils.snackBar("Login", 'LoginSuccess'),

  }).onError((error, stackTrace) => {
  // print(error.toString()),

    loading==false,
    Utils.snackBar('Error', error.toString()),

  });


}

}