import 'package:flutter/material.dart';
import 'package:flutter_mvvvm/constant_text/getbuilder.dart';
import 'package:get/get.dart';

import 'homecontroller.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomepageController homeController=Get.put(HomepageController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: GetBuilder<HomepageController>(
        init:homeController ,
          id: GetBuilderConstant.homeBuilder,
          builder:(HomepageController homeController){
          return Column(
            children: [
              ListView.builder(
                itemCount: homeController.userdata.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Text(homeController.userdata.toString()),
                    ],
                  );
                },

                  )
            ],
          );

          }
      ),
    );
  }
}
