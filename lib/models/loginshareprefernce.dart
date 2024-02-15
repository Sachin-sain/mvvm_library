import 'package:shared_preferences/shared_preferences.dart';

import 'loginResponse.dart';
class UserPreference{

  Future<bool> userToken(LoginResponse response)async{
   var prefs=await SharedPreferences.getInstance();
   prefs.setString('token',response.token.toString());
   return true;
  }

  Future<LoginResponse> getToken()async{
    var prefs=await SharedPreferences.getInstance();
   var token= prefs.getString('token');
    return LoginResponse(
      token: token,
    );
  }

  Future<bool> removeUser() async {
    var prefs=await SharedPreferences.getInstance();
    prefs.clear();
    return true;
  }

}