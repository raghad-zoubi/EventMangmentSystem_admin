import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:lara_push_noti/database/models/Home/Detils_Model.dart';
class Mangment_Saly_Service{


  Future<String?> delete_Saly({required token, id}) async {
  //try
    {
    print(token);

  //   var response = await http
  //       .delete((Uri.parse('/myproducts/' + id.toString())),
  //       headers: {'Content-Type': 'application/json',
  //         'Authorization': 'Bearer  ' + '$token',
  //         'Accept': 'application'})
  //       .timeout(const Duration(seconds: 20), onTimeout: () {
  //     throw TimeoutException("connection time out try agian");
  //   });
  //   print(response.statusCode);
  //   print(response.body);
  //   if (response.statusCode == 200 || response.statusCode == 201) {
  //
  //     return 'success';
  //   } else {
  //     return null;
  //   }
  // } on TimeoutException catch (_) {
  //   print("response time out");


  }
}

}