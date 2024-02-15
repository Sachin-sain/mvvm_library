import 'package:flutter_mvvvm/data/network/network_api_services.dart';
import 'package:flutter_mvvvm/models/get_api_response.dart';
import '../res/getx_localization/app_url/app_urls.dart';

class HomeRepository{
  final _apiServices=NetworkApiServices();


  Future<dynamic> getApi()async{
    dynamic response=await _apiServices.getApi( AppUrl.login);
    return getApiResponseFromJson(response);
  }
}