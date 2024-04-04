// import 'dart:developer';
//
// import 'package:auth/My_All/database/models/Like_Product_Model.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:get/get.dart';
// import 'package:auth/under_auth/model/appmodel.dart';
// import 'package:auth/My_All/database/models/Detils_Product_Model.dart';
// import 'package:auth/My_All/database/services/detils_product_Services.dart';
// class Detil_ProductController extends GetxController {
//   var storage = const FlutterSecureStorage();
//   var detils =  <Detils_ProductModel>[].obs;
//   var like =  <Like_ProductModel>[].obs;
//   detils_productServices services = detils_productServices() ;
//   var postloading = true.obs;
//
//
// var id =''.obs;
//   @override
//   void onInit() async{
//    // var  previousRoute =Get.previousRoute;
//
//     id.value=Get.arguments['id'];
//     print (id.value);
//    callgetmethod(id.value);
//     super.onInit();
//
//   }
//
//   callgetmethod(var id) async {
//     try {
//       postloading.value = true;
//       print("yuyuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu");
//         print (id);
//
//
//       var result1 = await services.getproductditel(token:await storage.read(key: 'token'),id: id);
//       var result2=(await services.getproductlike(token:await storage.read(key: 'token'),product_id: id));
//       if (result1 != null && result2 !=null) {
//         detils.assignAll(result1!);
//          like.assignAll(result2!);
//
//        print(  like.value.last.sum_likes);
//        // print( like.last);
//
//       } else {
//         print("Errooooooooooooooooor");
//       }
//     } finally {
//       postloading.value = false;
//     }
//  update();
//   }
//
//
//   callpostmethod() async {
//     try {
//       postloading.value = true;
//       print("yuyuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuuu");
//       print (id);
//       var result=(await services.postproductlike(token:await storage.read(key: 'token'),product_id: id));
//       if (result != null ) {
//         var result2=(await services.getproductlike(token:await storage.read(key: 'token'),product_id: id));
//         if ( result2 !=null) {
//           like.assignAll(result2);
//         }
//
//         } else {
//         print("Errooooooooooooooooor");
//       }
//     } finally {
//       postloading.value = false;
//     }
//     update();
//   }
//
//
// }
