
import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lara_push_noti/routes/app_pages.dart';

import '../../../main.dart';
class AuthController extends GetxController {
  var storage = const FlutterSecureStorage();
  @override
  onInit() async {
    authData();
    super.onInit();
  }

  authData() async {
    print('naaaaaaaaaaaaaaaaaaaaaaaaaaaaw');
    //Get.toNamed (Routes.Signup);
    try{
      name = (await storage.read(key: 'name'))!;
      token = (await storage.read(key: 'token'))!;
      role = (await storage.read(key: 'role'))!;

      print('finsh   naaaaaaaaaaaaaaaaaaaaaaaaaaaaw');
    }
    catch(e){

      await Get.toNamed (Routes.Signup);}
  }

  Future<bool>  isAuth() async {
    //true ->REGISTER
    return   (await storage.read(key: 'token'))!.isEmpty;


  }
  dologout () async {
    await storage.deleteAll();
    Get.offAllNamed(Routes.Login);
  }
}



