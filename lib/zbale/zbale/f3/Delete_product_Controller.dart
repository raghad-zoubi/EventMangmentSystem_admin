// import 'dart:developer';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:get/get.dart';
// import 'package:lara_push_noti/database/services/DeleteService.dart';
//
//   class Delete_ProductController extends GetxController {
//   delete_Service services = delete_Service() ;
//   var postloading = true.obs;
//   var storage = const FlutterSecureStorage();
//
//
//   var id =''.obs;
//   var deleteis =''.obs;
//   @override
//   void onInit() async{
//   super.onInit();
//
//   }
//
//   dodelete(var id) async {
//   try {
//   postloading.value = true;
//   print("yuyuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu");
//   print (id);
//
//
//   var result = await services.delete_Saly(token:await storage.read(key: 'token'),id: id);
//   if (result != null) {
//   deleteis.value=result  ;
//   print(deleteis.value);
//
//   } else {
//     Get.snackbar("delete", "delete in register");
//   print("Errooooooooooooooooor");
//   }
//   } finally {
//   postloading.value = false;
//   }
//   update();
//   }
//   }
