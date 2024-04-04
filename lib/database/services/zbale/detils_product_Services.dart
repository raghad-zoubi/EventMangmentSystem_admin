// import 'dart:async';
//
// import 'package:auth/My_All/database/models/Detils_Product_Model.dart';
// import 'package:auth/My_All/database/models/Like_Product_Model.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;
//
// import '../../../main.dart';
//
// class detils_productServices {
//   //var h='http://192.168.1.108:8000/api/products/';
//  // var h='http://192.168.118.21:8000/api/products/';
//   Future<List<Detils_ProductModel>?> getproductditel({required id,token}) async
//   {
//     try {
//       var response = await http
//           .get((Uri.parse( '$API/products/'+id.toString())),headers:  {
//           'Content-Type' : 'application/json',
//         'Authorization':'Bearer  '+'$token',
//         'Accept':'application'})
//           .timeout(const Duration(seconds: 20), onTimeout: () {
//         throw TimeoutException("connection time out try agian");
//       });
//      print(response.statusCode);
//      print(response.body);
//       if (response.statusCode == 200 || response.statusCode == 201) {
//
//         List jsonresponse = convert.jsonDecode(response.body);
//         return jsonresponse.map((e) => Detils_ProductModel.fromJson(e)).toList();
//       } else {
//         return null;
//       }
//     } on TimeoutException catch (_) {
//       print("response time out");
//     }
//   }
//   Future<List<Like_ProductModel>?> getproductlike({required product_id,token}) async
//   { // var a='http://192.168.118.21:8000/api/products/likes/';
//     var i='';
//     try {
//       var response = await http
//           .get((Uri.parse('$API/products/likes/'+product_id.toString())),headers:  {
//         'Content-Type' : 'application/json',
//         'Authorization':'Bearer  '+'$token',
//         'Accept':'application'})
//           .timeout(const Duration(seconds: 20), onTimeout: () {
//         throw TimeoutException("connection time out try agian");
//       });
//       print("ghhhhhsdssssssssss");
//       print(response.statusCode);
//       print(response.body);
//       if (response.statusCode == 200 || response.statusCode == 201) {
//
//         List jsonresponse = convert.jsonDecode(response.body);
//         return jsonresponse.map((e) => Like_ProductModel.fromJson(e)).toList();
//       } else {
//         return null;
//       }
//     } on TimeoutException catch (_) {
//       print("response time out");
//     }
//   }
//
//   Future<String?> postproductlike({required product_id,token}) async
//   {  //var a='http://192.168.118.21:8000/api/products/likes/';
//
//   try {
//     var response = await http
//         .post((Uri.parse('$API/products/likes/'+product_id.toString())),headers:  {
//       'Content-Type' : 'application/json',
//       'Authorization':'Bearer  '+'$token',
//       'Accept':'application'})
//         .timeout(const Duration(seconds: 20), onTimeout: () {
//       throw TimeoutException("connection time out try agian");
//     });
//     print("ghhhhhsdssssssssss");
//     print(response.statusCode);
//     print(response.body);
//     if (response.statusCode == 200 || response.statusCode == 201) {
//
//       //List jsonresponse = convert.jsonDecode(response.body);
//       return 'ok';//jsonresponse.map((e) => Like_ProductModel.fromJson(e)).toList();
//     } else {
//       return null;
//     }
//   } on TimeoutException catch (_) {
//     print("response time out");
//   }
//   }
//
//
//
//
// }