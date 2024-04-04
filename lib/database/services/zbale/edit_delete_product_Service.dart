//
// import 'dart:convert';
//
// import 'package:auth/My_All/database/models/Book_Model.dart';
// import 'package:auth/My_All/routes/app_pages.dart';
// import 'dart:async';
//
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
//
// import '../../../main.dart';
//
// class delete_productService {
//  // var baseApi = 'http://192.168.118.21:8000/api/myproducts/';
//   var storage = const FlutterSecureStorage();
//
//   Future<String?> delete_product({required token, id}) async {
//     try {
//       print(token);
//
//       var response = await http
//           .delete((Uri.parse('$API/myproducts/' + id.toString())),
//           headers: {'Content-Type': 'application/json',
//             'Authorization': 'Bearer  ' + '$token',
//             'Accept': 'application'})
//           .timeout(const Duration(seconds: 20), onTimeout: () {
//         throw TimeoutException("connection time out try agian");
//       });
//       print(response.statusCode);
//       print(response.body);
//       if (response.statusCode == 200 || response.statusCode == 201) {
//
//         return 'success';
//       } else {
//         return null;
//       }
//     } on TimeoutException catch (_) {
//       print("response time out");
//     }
//   }
//
//
//
//
// }
//
//
// //
// //   Future<String?> postnewproduct
// //       ({required
// //   String  name,
// //     phone_number,
// //     image_path,
// //     price,
// //     expration_date,
// //     therty,
// //     fifteen,
// //     quantity,
// //     category_id,
// //     token}) async
// //   {
// //     try {
// //       var response = await http
// //           .post(
// //         (Uri.parse('http://192.168.1.108:8000/api/myproducts/')),
// //         headers: {'Content-Type': 'application/json',
// //           'Authorization':'Bearer  '+'$token',
// //           'Accept':'application'},
// //         body: jsonEncode(<String, dynamic>{
// //           "name": name,
// //           "expration_date": expration_date,
// //           " image_path": image_path,
// //           "phone_number": phone_number,
// //           "therty": therty,
// //           "quantity": quantity,
// //           "price": price,
// //           "category_id":category_id,
// //           "fifteen": fifteen,
// //         }),
// //       )
// //           .timeout(const Duration(seconds: 20), onTimeout: () {
// //         print("kkkkkkkk");
// //         throw TimeoutException("connection time out try agian");
// //       });
// //
// //       print(response.statusCode);
// //       print(response.body);
// //       if (response.statusCode == 200 || response.statusCode == 201) {
// //         Map<String, dynamic> jsonresponsep =
// //         Map<String, dynamic>.from(json.decode(response.body));
// //
// //         return 'succses';
// //       } else {
// //         return null;
// //       }
// //     } on TimeoutException catch (_) {
// //       print("response time out");
// //     }
// //   }
// // }
//
