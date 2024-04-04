//
// import 'package:auth/My_All/database/models/d.dart';
// import 'package:auth/My_All/database/services/comments_product_Service.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:get/get.dart';
//
// class CommentProductController extends GetxController {
//   Comments_productServices services =Comments_productServices () ;
//   final productFormkey = GlobalKey<FormState>();
//   var storage = const FlutterSecureStorage();
//
//   var postloading = true.obs;
//   var getloading = true.obs;
//   var comments =  <Comments_Model>[].obs;
//   late TextEditingController
//  value_Controller;
//
//   String  value=' ';
//   var id= ''.obs;
//   var product_id;
//
//  CommentProductController(this.product_id);
//   void onInit() {
//     id.value=Get.arguments['id'];
//     print (id.value);
//     print("ghhhhhhhhhhhhhhhhhh");
//     print(product_id);
//
//    callgetmethod(product_id);
//     value_Controller=TextEditingController();
//     super.onInit();
//   }
//
//   callgetmethod(var productId)async {
//       try {
//         getloading.value = true;
//
//         var result = await services.getcommentsproduct(token:await storage.read(key: 'token'),
//         product_id: productId);
//         if (result != null) {
//           comments.assignAll(result);
//           print (comments);
//           print(comments.length);
//
//         } else {
//           print("null");
//         }
//       } finally {
//         getloading.value = false;
//       }
//       update();
//     }
//
//
//   upproduct(var id) async {
//     postloading(true);
//     try {
//       var data = await services.postproductcomment(
//         token:await storage.read(key: 'token'),
//         value :value_Controller.text,
//         product_id:id,
//       );
//       if (data != null) {
//         print("jjjjjjjjjjjjj");
//         // Get.toNamed(Routes.showmyproduct);
//       }
//     } finally {
//       postloading(false);
//     }
//
//   }
// }