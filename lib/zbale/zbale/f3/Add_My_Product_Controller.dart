// import 'dart:developer';
// import 'dart:io';
// import 'dart:ui';
//
// import 'package:auth/My_All/database/models/Detils_Product_Model.dart';
// import 'package:auth/My_All/logic/controllers/auth_Controller.dart';
// import 'package:auth/My_All/routes/app_pages.dart';
// import 'package:auth/My_All/database/models/Book_Model.dart';
// import 'package:auth/My_All/database/models/Saly_Model.dart';
// import 'package:auth/My_All/database/services/add_new_productService.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
// //controller add new
// class Show_MyProductController extends GetxController {
//   add_new_productService services = add_new_productService() ;
//   final productFormkey = GlobalKey<FormState>();
//   var storage = const FlutterSecureStorage();
//
//   var postloading = true.obs;
//   var getloading = true.obs;
//   var category =  <Category>[].obs;
//   var product =  <Detils_ProductModel>[].obs;
//
//   late TextEditingController
//      name_Controller,phone_number_Controller,image_path_Controller, expration_date_Controller,
//       price_Controller,therty_Controller,
//       fifteen_Controller, quantity_Controller;
//
//   String  name=' ',phone_number=' ',image_path=' ';
//   late int price, category_id, quantity;
//   late double fifteen, therty;
//   late DateTime expration_date;
//
//   String? selectedValue;
//   void onSelected(String value) {
//     selectedValue = value;
//     update();
//   }
//   void onInit() {
//     callgetcategory();
//     name_Controller= TextEditingController();
//     image_path_Controller= TextEditingController();
//     phone_number_Controller= TextEditingController();
//    expration_date_Controller= TextEditingController();
//    quantity_Controller= TextEditingController();
//    fifteen_Controller= TextEditingController();
//     therty_Controller= TextEditingController();
//      price_Controller =TextEditingController() ;
//     super.onInit();
//   }
//   callgetcategory() async {
//     try {
//       getloading.value = true;
//       var result = await services.getcategory(token:await storage.read(key: 'token'));
//       if (result != null) {
//         category.assignAll(result);
//         print(category.length);
//
//       } else {
//         print("null");
//       }
//     } finally {
//       getloading.value = false;
//     }
//     update();
//   }
//
//   donewproduct() async {
//     postloading(true);
//     try { print('))))))))))))))))))))))))))))))))))))))))))))))))))))))');
//     print(image_path_Controller.value);
//
//       var data = await services.postnewproduct(
//           token:await storage.read(key: 'token'),
//           name  :name_Controller.text,
//           phone_number:phone_number_Controller.text,
//           image_path: selectedImagePath.value,
//           price:price_Controller.text,
//           expration_date:expration_date_Controller.text,
//           category_id:category_id,
//           therty:therty_Controller.text,
//           fifteen:fifteen_Controller.text,
//           quantity:quantity_Controller.text,
//       );
//       if (data != null) {
//         Get.toNamed(Routes.showmyproduct);
//       }
//     } finally {
//       postloading(false);
//     }
//
//   }
//   var isLoading = false.obs;
//   var selectedImagePath = ''.obs;
//   var selectedImageSize = ''.obs;
//
//    getImage(ImageSource imageSource) async {
//     print("++++++rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr");
//
//       final pickedFile = await ImagePicker().getImage(source: imageSource);
//    if (pickedFile!=Null) {
//      selectedImagePath.value = pickedFile!.path;
//      image_path = selectedImagePath.value;
//      print("**********************************************************");
//      print(image_path);
//      print("***********************************************************");
//      selectedImageSize.value =
//          (File(selectedImagePath.value).lengthSync() / 1024 / 1024)
//              .toStringAsFixed(1) + " Mb";
//    }
//    else{
//      print("stooooooooooooooooooooooooooop");
//      Get.snackbar('Success', 'Image uploaded successfully',
//          margin: EdgeInsets.only(top: 5,left: 10,right: 10));}
//
//   }
//
//
// }