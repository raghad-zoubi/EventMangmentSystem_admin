import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/database/services/zbale/DeleteService.dart';
import 'package:lara_push_noti/database/services/Manage_Saly/Manage_Saly_Service.dart';

class Delete_Controller extends GetxController {
  Mangment_Saly_Service services = Mangment_Saly_Service() ;
  var postloading = true.obs;
  var storage = const FlutterSecureStorage();


  var id =''.obs;
  var deleteis =''.obs;
  @override
  void onInit() async{
    super.onInit();

  }

  do_delete_Saly(var id) async {
    try {
      postloading.value = true;


      var result = await services.delete_Saly(token:await storage.read(key: 'token'),id: id);
      if (result != null) {
        deleteis.value=result  ;
        print(deleteis.value);

      } else {
        Get.snackbar("delete", "delete from saly");
        print("Errooooooooooooooooor");
      }
    } finally {
      postloading.value = false;
    }
    update();
  }
}
