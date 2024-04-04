

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lara_push_noti/database/services/auth_services.dart';
import 'package:lara_push_noti/routes/app_pages.dart';
class LoginController extends GetxController {
  var isLoading = false.obs;
  AuthServices services=AuthServices();
  final loginFormkey = GlobalKey<FormState>();
  final storage= const FlutterSecureStorage();
  late TextEditingController  emailController,
      passwordController;
  String
  email = '',
      password = '';

  @override
  void onInit() {

    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  String? validatePassword(String value) {
    if (value.length <= 5) {
      return "this is wrong password";
    } else
      return null;
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "this is wrong email";
    } else
      return null;
  }

  doLogin() async {
    bool isvalidate = true;
    //loginFormkey.currentState!.validate();
    if (isvalidate) {
      print("*******************valraghid**********************");
      isLoading.value = true;
      try {
        var data =await services.Login(
            email: emailController.text,
            password: passwordController.text);

        if (data!= null )
        {

            // print(data.user.role);
            // print(data.user.name);
            //  print(data.token);
          print("yytttttttttttttttttttttttttttttttttttttttttttttttttttttttttt");
        await storage.write(key: "write_info", value: 'tm');
        await storage.write(key: "name", value: data.user.name);
        await storage.write(key: "token", value: data.token);
        await storage.write(key: "role", value:'3');

        loginFormkey.currentState?.save();
           Get.toNamed(Routes.button);
        }
       else {
          Get.snackbar("login", "problen in login");
        }
      }

      finally {
        isLoading(false);
      }
 }
  }
}

