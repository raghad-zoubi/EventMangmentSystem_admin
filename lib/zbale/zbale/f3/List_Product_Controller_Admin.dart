// import 'package:auth/My_All/database/models/Saly_Model.dart';
// import 'package:auth/My_All/database/services/Saly_Service.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:get/get.dart';
//
// class ProductController_My extends GetxController {
//   var product =  <List_ProductModel>[].obs;
//   final storage= const FlutterSecureStorage();
//   list_productServices services = list_productServices() ;
//   var postloading = true.obs;
//
//
//   void onInit() {
//     callgetproduct();
//     super.onInit();
//   }
//
//
//   callgetproduct() async {
//     try {
//        postloading.value = true;
//
//       var result = await services.getlistproduct_My(token:await storage.read(key: 'token'));
//       if (result != null) {
//         product.assignAll(result);
//         print(product.length);
//
//       } else {
//         print("null");
//       }
//     } finally {
//       postloading.value = false;
//     }
//     update();
//   }
// }
