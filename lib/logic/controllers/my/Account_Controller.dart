

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lara_push_noti/database/services/auth_services.dart';
import 'package:lara_push_noti/routes/app_pages.dart';

import '../../../database/services/My/Account_Service.dart';
class AccountController extends GetxController {
  var isLoading = false.obs;
  AccountService services=AccountService();
  final registerFormkey = GlobalKey<FormState>();
  final storage= const FlutterSecureStorage();
  late TextEditingController oldPasswordController, emailController,
      passwordController,cpasswordController;
  String
      oldPassword = " ",
      email = '',
      password = '',
      cpassword = '';
  // role='';

  @override
  void onInit() {
 //   s.value = Get.arguments[f];
    oldPasswordController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    cpasswordController = TextEditingController();
    // roleController = TextEditingController();


    super.onInit();
  }

  @override
  void dispose() {
    oldPasswordController.dispose();
    emailController.dispose();
    passwordController.dispose();
    cpasswordController.dispose();
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




  change_password() async {
    bool isvalidate = registerFormkey.currentState!.validate();
    if (isvalidate) {
      print("*******************valid**********************");
      isLoading.value = true;
      try {
        var data =await services.change_password(
            token:await storage.read(key: 'token'),
            oldPassword: oldPasswordController.text,
            password: passwordController.text,
            cpassword:cpasswordController.text,
       );
        print("after service regster");



        if(data != null) {
         // registerFormkey.currentState!.save();
         Get.back();

        }
        else {
          Get.snackbar("registe", "problem in register");
        }
      }finally {
        isLoading(false);
      }
    }
  }
  delete_account() async {
    bool isvalidate = registerFormkey.currentState!.validate();
    if (isvalidate) {
      print("*******************valid**********************");
      isLoading.value = true;
      try {
        var data =await services.delete_account(
          token:await storage.read(key: 'token'),
          password: oldPasswordController.text,
        );
        print("after service regster");



        if(data != null) {
          await(storage.deleteAll());
        //  registerFormkey.currentState!.save();
        Get.toNamed(Routes.Signup);
     //     registerFormkey.currentState!.save();

        }
        else {
          Get.snackbar("registe", "problem in register");
        }
      }finally {
        isLoading(false);
      }
    }
  }
  logout() async {
  //  bool isvalidate = registerFormkey.currentState!.validate();
    var iys;
      print("*******************valid**********************");
      isLoading.value = true;
      try {
        var data = await services.logout(
            token:await storage.read(key: 'token'),
     );
        print("after service logout");


        if(data != null) {
          await(storage.deleteAll());
          try {
            iys = await(storage.read(key: 'token'));

          }
          catch (_) {
            Get.offAllNamed(Routes.Login);
          }
        }

          else
            Get.snackbar(
                "logOut", "agin Logot in anather time Same Things Worong");


      }finally {
        isLoading(false);
      }

  }

}

