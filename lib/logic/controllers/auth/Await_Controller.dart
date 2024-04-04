import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lara_push_noti/database/Profile_Model.dart';
import 'package:lara_push_noti/database/Profile_Service.dart';
import 'package:lara_push_noti/routes/app_pages.dart';

import 'package:get/get.dart';
import 'dart:async';

import '../../../main.dart';


class AwaitController extends GetxController {

  var loading = true.obs;
  final storage=const FlutterSecureStorage();


  var imageFileList = <dynamic>[].obs;

  var ditils = <ProfileModel>[].obs;
  Profile_Service services = Profile_Service();

 //var myrole= ''.obs;
  @override
  void onInit() {

    super.onInit();
  }

  chake_role() async {  loading.value = true;
    try {

      var ditils;
      // = await services.check(token:await storage.read(key: 'token'),
      //     role:await storage.read(key: 'role'));
      if (ditils != null) {
        print('ditils');
        print(ditils);
        // if(ditils=='2'){
        // await storage.write(key: "role", value:  '2');
        // role=(await storage.read(key: 'role'))!;
        // print(role);}
        // if(ditils=='3'){
        await storage.write(key: "role", value:  '3');
      //  role=(await storage.read(key: 'role'))!;     print(role);
     Get.offAllNamed(
         Routes.button);
      //}
      }
      else {
        Get.snackbar("chek", "problem in chek");
      }
    } finally {
    loading.value = false;
    }
    update();
  }
}
