// import 'dart:developer';
// import 'dart:ui';
//
// import 'package:auth/My_All/database/models/Detils_Product_Model.dart';
// import 'package:auth/My_All/database/services/updata_product_Service.dart';
// import 'package:auth/My_All/logic/controllers/auth_Controller.dart';
// import 'package:auth/My_All/zbale.zbale.pages/Admin/Show_Detil_View_Admin.dart';
// import 'package:auth/My_All/routes/app_pages.dart';
// import 'package:auth/My_All/database/models/Book_Model.dart';
// import 'package:auth/My_All/database/models/Saly_Model.dart';
// import 'package:auth/My_All/database/services/add_new_productService.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:get/get.dart';
//
// import 'Detil_Product_Controller.dart';
//
// class Updata_ProductController extends GetxController {
//   updataService services =updataService () ;
//   final productFormkey = GlobalKey<FormState>();
//   var storage = const FlutterSecureStorage();
//
//   var postloading = true.obs;
//   var getloading = true.obs;
//   var detil2 =  <Detils_ProductModel>[].obs;
//   late Detils_ProductModel detil3 ;//=  <Detils_ProductModel>[];
//
//   late TextEditingController
//   name_Controller,phone_number_Controller,image_path_Controller, expration_date_Controller,
//       price_Controller,therty_Controller,
//       fifteen_Controller, quantity_Controller;
//
//   String  name=' ',phone_number=' ',image_path=' ';
//    var price,  quantity;
//    var fifteen, therty;
//    var expration_date;
// var id= ''.obs;
//
//   Detil_ProductController d= Detil_ProductController();
//  // late String gh;//= ''.obs as Detils_ProductModel;
//  //   late Detils_ProductModel gh ;
//   void onInit() {
//      name=Get.arguments['name'];
//      phone_number=Get.arguments['phone_number'];
//      fifteen=Get.arguments['fifteen'];
//      expration_date=Get.arguments['expration_date'];
//      therty=Get.arguments['therty'];
//      price=Get.arguments['price'];
//      quantity=Get.arguments['quantity'];
//      image_path=Get.arguments['image_path'];
//      name=Get.arguments['name'];
//      name=Get.arguments['name'];
//     print("yuyuuuuuuuuuuuuuuwewrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrruuuuuuuuuuuuuuuuuuuuuuuuuu");
//     id.value=Get.arguments['id'];
//     print (id.value);
//   //print(gh);
//   //  print ( Get.arguments['ditel3'].toString());
//   //  detil3.value=Get.arguments['ditel3'];
//     //callgetmethod(id);
//     name_Controller=TextEditingController();
//     image_path_Controller= TextEditingController();
//     phone_number_Controller= TextEditingController();
//     expration_date_Controller= TextEditingController();
//     quantity_Controller= TextEditingController();
//     fifteen_Controller= TextEditingController();
//     therty_Controller= TextEditingController();
//     price_Controller =TextEditingController() ;
//     super.onInit();
//   }
//
//
//
//   upproduct(var id) async {
//     postloading(true);
//     try {
//       var data = await services.upproduct(
//         token:await storage.read(key: 'token'),
//         name  :name_Controller.text,
//         phone_number:phone_number_Controller.text,
//         image_path:'public/images/qZz6wFWBk94NXR7Tw8Ds1N9jtPYx5HCNtuXlDvRW.jpg',
//         //"jjkjkjkjkj",
//         price:price_Controller.text,
//         expration_date:expration_date_Controller.text,
//         therty:therty_Controller.text,
//         fifteen: fifteen_Controller.text,
//         quantity:quantity_Controller.text,
//         id:id,
//       );
//       if (data != null) {
//         print("jjjjjjjjjjjjj");
//        // Get.toNamed(Routes.showmyproduct);
//       }
//     } finally {
//       postloading(false);
//     }
//
//   }
// }