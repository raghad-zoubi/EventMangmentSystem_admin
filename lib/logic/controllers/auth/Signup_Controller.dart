

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lara_push_noti/database/services/auth_services.dart';
import 'package:lara_push_noti/main.dart';
import 'package:lara_push_noti/routes/app_pages.dart';


class SignupController extends GetxController {
  var isLoading = false.obs;
  AuthServices services=AuthServices();
  final registerFormkey = GlobalKey<FormState>();
  final storage= const FlutterSecureStorage();
  late TextEditingController nameController, emailController,
  passwordController,cpasswordController;
  String name = " ",
  email = '',
  password = '',
  cpassword = '';
 // role='';

  @override
  void onInit() {
  nameController = TextEditingController();
  emailController = TextEditingController();
  passwordController = TextEditingController();
  cpasswordController = TextEditingController();
 // roleController = TextEditingController();
  super.onInit();
  }

  @override
  void dispose() {
  nameController.dispose();
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
 //
 // doRegister() async {
 //    print("tyyyyyyyyyyyyyyyyyyy");
 //  bool isValidate = true;
 //  // registerFormkey
 //  //     .currentState!.validate();
 //  print("gggggggggggggggg");
 //  if (isValidate)
 //  {
 //  isLoading(true);
 //  try {
 //
 //  String? data = await AuthServices.register(
 //  name: nameController.text, email: emailController.text,
 //  password: passwordController.text,
 //  cpassword: cpasswordController.text,
 //   ) ;
 //
 //  if (data != null) {
 //  print("yytttttttttttttttttttttttttttttttttttttttttttttttttttttttttt");
 //  print(data.);
 //  print(name_user);
 //  await storage.write(key: "name", value: 'dsd');
 //  await storage.write(key: "token", value:'we');
 //  await storage.write(key: "role", value:'2');
 //  registerFormkey.currentState?.save();
 //  Get.toNamed(Routes.button);
 //  } else {
 //  Get.snackbar("register", "problen in register");
 //  }
 //  }
 //
 //  finally {
 //  isLoading(false);
 //  }
 //  }
 //  }



  doRegister(BuildContext context) async {
    bool isvalidate = registerFormkey.currentState!.validate();
    if (isvalidate) {
      print("*******************valid**********************");
      isLoading.value = true;
      try {
        var data = await AuthServices.register(
            name: nameController.text,
            email: emailController.text,
            password: passwordController.text,
            cpassword:cpasswordController.text,

        );
        print("after service regster");


     //   print("");
     //   print(data.user.name);
    //    print(data.token);


        if(data != null) {
          var e=2;
          await storage.write(key: "role", value:e.toString());
          await storage.write(key: "write_info", value: 'lsa');
          await storage.write(key: "name", value: data.user.name);
          await storage.write(key: "token", value: data.token);


//await storage.write(key: "id", value: data.user.id);

          registerFormkey.currentState!.save();

          print('await storage.write(key: "id", value: data.user.id);') ;
          print(e) ;
        // Phoenix.rebirth(context);
         Get.toNamed(Routes.Add_profile_Screen);

        }
        else {
          Get.snackbar("registe", "problem in register");
        }
      }finally {
        isLoading(false);
      }
    }
  }
  }
