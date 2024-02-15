import 'package:flutter_mvvvm/repository/home_repository.dart';
import 'package:get/get.dart';

import '../../models/get_api_response.dart';
class HomepageController extends GetxController{
HomeRepository _api=HomeRepository();
GetApiResponse getList=GetApiResponse();
List<GetApiResponse> userdata=[];

 getApiUsing()async{
    _api.getApi().then((value) =>{
      getList.data,
      userdata=getList.data.toString() as List<GetApiResponse>
    }).onError((error, stackTrace) => {
    });



  }
}