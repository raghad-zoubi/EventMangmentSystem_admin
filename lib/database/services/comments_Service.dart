
import 'dart:convert';

import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../../../main.dart';
import '../models/Home/Comment_Model.dart';

class Comments_productServices {
  // var baseApi = 'http://192.168.118.21:8000/api/products';

  Future<List<Comments_Model>?> getcommentsproduct({required token,product_id}) async {
    try {
      print(token);
      var response = await http
          .get((Uri.parse(  '$API/products/comments/'+product_id.toString())),
          headers: {'Content-Type' : 'application/json',
            'Authorization':'Bearer  '+'$token',
            'Accept':'application'})
          .timeout(const Duration(seconds: 20), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        List jsonresponse = convert.jsonDecode(response.body);
        return jsonresponse.map((e) => Comments_Model.fromJson(e)).toList();
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }


  Future<List<Comments_Model>?> postproductcomment({required token,product_id,value}) async {
    try {
      print(token);
      var response = await http
          .post((Uri.parse('$API/products/comments/'+product_id.toString())),
          headers: {'Content-Type' : 'application/json',
            'Authorization':'Bearer  '+'$token',
            'Accept':'application'},
          body: jsonEncode(<String, dynamic>{
            "value": value,
          }),)
          .timeout(const Duration(seconds: 20), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        List jsonresponse = convert.jsonDecode(response.body);
        return jsonresponse.map((e) => Comments_Model.fromJson(e)).toList();
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }





}