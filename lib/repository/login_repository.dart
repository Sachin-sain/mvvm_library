import 'package:flutter_mvvvm/data/network/network_api_services.dart';
import '../res/getx_localization/app_url/app_urls.dart';

class LoginRepository{
  final _apiServices=NetworkApiServices();


  Future<dynamic> loginApi(var data)async{
    dynamic response=await _apiServices.postApi(data, AppUrl.login);
    return response;
  }
}