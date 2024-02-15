import 'package:flutter_mvvvm/routes/routes_names.dart';
import 'package:flutter_mvvvm/view/home/homepage.dart';
import 'package:flutter_mvvvm/view/login/login_view.dart';
import 'package:flutter_mvvvm/view/splashScreen.dart';
import 'package:get/get.dart';
class AppRoutes{
  static appRoutes()=>[
    GetPage(name: RoutesName.splashScreen, page:()=> const SplashScreen()),
    GetPage(name: RoutesName.loginView, page: ()=>const LoginView()),
    GetPage(name: RoutesName.homeView, page: ()=>const HomePage()),

  ];
}