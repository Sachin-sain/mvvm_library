import 'package:flutter/material.dart';
import 'package:flutter_mvvvm/res/getx_localization/component/rounded_button.dart';
import 'package:flutter_mvvvm/routes/routes_names.dart';
import 'package:flutter_mvvvm/view/login/login_view_controller.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../../constant_text/getbuilder.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  LoginViewController controller = Get.put(LoginViewController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Login Screen'),
        ),
        body: GetBuilder<LoginViewController>(
          init: controller,
          id: GetBuilderConstant.loginBuilder,
          builder: (LoginViewController controller) {
            return Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        Fluttertoast.showToast(msg: "Please enter user email");
                      }
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        Fluttertoast.showToast(
                            msg: "Please enter user password");
                      }
                      /// else if(value.isEmpty){
                      ///Regex
                      /// }
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: controller.passwordController,
                    obscureText: true,
                    obscuringCharacter: "*",
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RoundedButton(
                    title: 'Submit',
                    height: 40,
                    width: double.infinity,
                    loading: controller.loading,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                      controller.loginApi();
                      Get.toNamed(RoutesName.homeView);
                      }
                    },
                  )
                ],
              ),
            );
          },
        ));
  }
}
