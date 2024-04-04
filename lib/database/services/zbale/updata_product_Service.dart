// import 'dart:convert';
//
// import 'package:auth/My_All/database/models/Detils_Product_Model.dart';
// import 'dart:async';
// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;
//
// import '../../../main.dart';
//
// class updataService {
//   Future<List<Detils_ProductModel>?> getproductditel({required id, token}) async
//   {// var h='http://192.168.1.108:8000/api/myproducts';
//     try {
//       print ('$API/myproducts/'+ id.toString());
//       var response = await http
//           .get((Uri.parse('$API/products/'+ id.toString())), headers: {
//         'Content-Type': 'application/json',
//         'Authorization': 'Bearer  ' + '$token',
//         'Accept': 'application'})
//           .timeout(const Duration(seconds: 20), onTimeout: () {
//         throw TimeoutException("connection time out try agian");
//       });
//       print(response.statusCode);
//       print(response.body);
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         List jsonresponse = convert.jsonDecode(response.body);
//         return jsonresponse.map((e) => Detils_ProductModel.fromJson(e))
//             .toList();
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
//   Future<List<Detils_ProductModel>?> upproduct
//       ({required
//       name,
//     phone_number,
//     image_path,
//     price,
//     expration_date,
//     therty,
//     fifteen,
//     quantity,
//     id,
//     token}) async
//   {
//     try {
//       var response = await http
//           .post(
//         (Uri.parse('$API/myproducts/up/'+id.toString())),
//         headers: {'Content-Type': 'application/json',
//           'Authorization':'Bearer  '+'$token',
//           'Accept':'application'},
//         body: jsonEncode(<String, dynamic>{
//           "name": name,
//           "expration_date": expration_date,
//           " image_path": image_path,
//           "phone_number": phone_number,
//           "therty": therty,
//           "quantity": quantity,
//           "price": price,
//           "fifteen": fifteen,
//         }),
//       ).timeout(const Duration(seconds: 20), onTimeout: () {
//         print("kkkkkkkk");
//         throw TimeoutException("connection time out try agian");
//       });
//
//       print(response.statusCode);
//       print(response.body);
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         List jsonresponse = convert.jsonDecode(response.body);
//         return jsonresponse.map((e) => Detils_ProductModel.fromJson(e))
//             .toList();
//       } else {
//         return null;
//       }
//     } on TimeoutException catch (_) {
//       print("response time out");
//     }
//   }
//
// }
//
//
//
//
//
