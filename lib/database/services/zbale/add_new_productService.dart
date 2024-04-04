//
// import 'dart:convert';
// import 'dart:io';
//
// import 'package:auth/My_All/database/models/Book_Model.dart';
// import 'dart:async';
//
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;
//
// import '../../../main.dart';
//
// class add_new_productService {
//   var storage = const FlutterSecureStorage();
//   Future<List<Category>?> getcategory({required token}) async {
//     try {
//     print(   token);
//       var response = await http
//           .get((Uri.parse( '$API/category')),
//       headers: {'Content-Type' : 'application/json',
//       'Authorization':'Bearer  '+'$token',
//       'Accept':'application'})
//           .timeout(const Duration(seconds: 20), onTimeout: () {
//         throw TimeoutException("connection time out try agian");
//       });
//       print(response.statusCode);
//       print(response.body);
//       if (response.statusCode == 200) {
//         List jsonresponse = convert.jsonDecode(response.body);
//         return jsonresponse.map((e) => Category.fromJson(e)).toList();
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
//   //
//   // Future<String?> postnewproduct
//   //     ({required
//   //       String  name,
//   //       phone_number,
//   //       image_path,
//   //       price,
//   //       expration_date,
//   //       therty,
//   //       fifteen,
//   //       quantity,
//   //       category_id,
//   //       token, id}) async
//   // {
//   //   try {
//   //     var response = await http
//   //         .post(
//   //       (Uri.parse('$API/myproducts/')),
//   //       headers: {'Content-Type': 'application/json',
//   //                 'Authorization':'Bearer  '+'$token',
//   //                   'Accept':'application'},
//   //       body: jsonEncode(<String, dynamic>{
//   //         "name": name,
//   //         "expration_date": expration_date,
//   //         " image_path": image_path,
//   //         "phone_number": phone_number,
//   //         "therty": therty,
//   //        "quantity": quantity,
//   //         "price": price,
//   //         "category_id":category_id,
//   //         "fifteen": fifteen,
//   //       }),
//   //     )
//   //         .timeout(const Duration(seconds: 20), onTimeout: () {
//   //       print("kkkkkkkk");
//   //       throw TimeoutException("connection time out try agian");
//   //     });
//   //
//   //     print(response.statusCode);
//   //     print(response.body);
//   //     if (response.statusCode == 200 || response.statusCode == 201) {
//   //       Map<String, dynamic> jsonresponsep =
//   //       Map<String, dynamic>.from(json.decode(response.body));
//   //
//   //       return 'succses';
//   //     } else {
//   //       return null;
//   //     }
//   //   } on TimeoutException catch (_) {
//   //     print("response time out");
//   //   }
//   // }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//   Future<http.StreamedResponse?>  postnewproduct(
//
//       {required
//       String  name,
//       phone_number,
//       image_path,
//       price,
//       expration_date,
//       therty,
//       fifteen,
//       quantity,
//       category_id,
//       token, id}
//
//
//       )
//   async {
//     Map<String, String> headers = {
//       'Content-Type': 'multipart/form-data',
//       'X-Requested-With': ' XMLHttpRequest ',
//       'Accept': 'application/json',
//       'Content-Type': 'application/json',
//       'Authorization':'Bearer '+'${token}',
//     };
//
//
//     var request = http.MultipartRequest('POST', Uri.parse('$API/myproducts/'))
//       .. headers.addAll(headers);
//     request.files.add(http.MultipartFile('image_path',
//         File(image_path).readAsBytes().asStream(), File(image_path).lengthSync(),
//        filename: image_path.split("/").last)
//
//     );
//
//     request.fields.addAll ( {
//     "name": name,
//     "expration_date": expration_date.toString(),
//     " image_path": image_path,
//     "phone_number": phone_number,
//     "therty": therty.toString(),
//     "quantity": quantity.toString(),
//     "category_id":category_id.toString(),
//     "fifteen": fifteen.toString(),
//       "price":price.toString(),
//
//     });
//
//     var response = await request.send();
//      print("eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee");
//     print(response);
//
//     print(response.statusCode);
//
//     if (response.statusCode == 201 || response.statusCode == 200) {
//
//       return response;
//     } else {
//       return null;
//     }
//   }
//
//
//
//
//
// }
//
//
//
//
//
