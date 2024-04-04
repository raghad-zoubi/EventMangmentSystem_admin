//
// import 'package:flutter/material.dart';
// //import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:get/get.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
//
// import 'package:get/get.dart';
// import 'package:lara_push_noti/database/models/Home/Comment_Model.dart';
// import 'package:lara_push_noti/database/models/Home/Detils_Model.dart';
// import 'package:lara_push_noti/database/services/Manage_Saly/detils_Services.dart';
// import 'package:shera/raghad/database/Model/Comment_Model.dart';
// import 'package:shera/raghad/database/Model/Detils_Model.dart';
// import 'package:shera/raghad/database/services/Manage_Saly/detils_Services.dart';
//
//
// class Detil_two_Controller extends GetxController {
//
//   var storage = const FlutterSecureStorage();
//
//   var commentss =  <Comments_Model>[].obs;
//   var comments =  [].obs;
//   var detils = <Detils_Model>[].obs;
//   detils_Services services = detils_Services();
//   var getloading = true.obs;
//   var postloading = true.obs;
//   var id =''.obs;
//   var idhom =''.obs;
//
//
//
//
//
//   late TextEditingController
//   comment_Controller,
//   expration_date_Controller,
//   discount_Controller;
//
//
//   String  comment=' ';
//   var expration_date ;
//   var discount ;
//
//   @override
//   void onInit() async
//   {
//
//   print("_________________________________________________________________");
//   print("value of id  in a onInit at Detils one");
//   //   id1.value = Get.arguments['id1'];
//
//   try {//if( Get.arguments['kind']!= null)
//   id.value=Get.arguments['id'];
//   idhom.value=Get.arguments['idhom'];
//   }
//
//   catch(_){
//   id.value='1';
//   idhom.value='1';
//   print("jkkkkkkkkkkkhh");
//   }
//   print(id.value);
//   print(idhom.value);
//   //  callgetmethod1(id1.value);
//   Detils_two(id.value);
//   comment_Controller=TextEditingController();
//   discount_Controller= TextEditingController();
//   expration_date_Controller= TextEditingController();
//   super.onInit();
//   }
//   late Detils_Model result;
//
//   Detils_two(var id) async {
//   try {
//   postloading.value = true;
//
//   result = (await services.Ditels_two(id: id));
//   print("erooooooooooooooor in her ????????");
//   if (result != null) {
//   print(result.name);
//   print('hjjjjjjjjjjjjjjj');
//   detils.add(result);
//  // print(detils[0].images[0].url_image)   ;
//   } else {
//   print("Errooooooooooooooooor");
//   }
//   } finally {
//   postloading.value = false;
//   }
//   update();
//   }
//
//
//  void add_comment(var comment) async {
//     try {
//       postloading.value = true;
//
//      var result =  (await services.add_comment(
//           token: await storage.read(key: 'token'),
//           comment:comment.toString(),
//           idServuce: id.value.toString())) ;
//
//       print("erooooooooooooooor in rateeeeeeeeeeee ????????");
//       if (result != null) {
//         print(result);
//         print('hjjjjjjjjjjjjjjj');
//
//       } else {
//         print("Errooooooooooooooooor");
//       }
//     } finally {
//       postloading.value = false;
//     }
//     update();
//   }
//
//   list_comment()async {
//     try {
//       getloading.value = true;
//       comments.clear();
//       update();
//       var result = await services.list_comment(
//           token:await storage.read(key: 'token'),
//           service_id:id.value.toString());
//       if (result != null) {
//         comments.clear();
//         update();
//         commentss.assignAll(result);
//         update();
//         print (commentss);
//         for(int i=0;i<commentss.length;i++)
//           {comments.insert(0, {
//             "comment": commentss[i].comment ,
//             "name":commentss[i].name,
//
//           });
//             update();
//
//           }
//         //(commentss.length);
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
//
//
//
//   }
