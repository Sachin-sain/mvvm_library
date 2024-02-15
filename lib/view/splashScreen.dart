import 'package:flutter/material.dart';
import 'package:flutter_mvvvm/constant_text/constant_text.dart';
import 'package:flutter_mvvvm/view_models/splash_services.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  SplashServices splashscreen =SplashServices();
  @override
  void initState() {
   splashscreen.isLogin();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Text(ConstantTest.splashText),
      ),
      );

  }
}
