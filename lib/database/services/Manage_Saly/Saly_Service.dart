
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:lara_push_noti/database/models/Saly_Model.dart';

import 'dart:convert' as convert;

import '../../../../main.dart';

class SalyServices {
  Future<List<Saly_Model>?> getlistproduct_My({required token}) async {
    try {
    print(token);
    var response = await http
        .get((Uri.parse(  '$API/myproducts')),
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
      return jsonresponse.map((e) => Saly_Model.fromJson(e)).toList();
    } else {
      return null;
    }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }


  Future<List<Saly_Model>?> getSaly({required token}) async {
    try {
      print(token);
      var response = await http
          .get((Uri.parse(  '$API/service/admin/listOfferAdmin')),
          headers: {'Content-Type' : 'application/json',
            'Authorization':'Bearer  '+'$token',
            'Accept':'application'})
          .timeout(const Duration(seconds: 20), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });
      print('-----------------------------------------------------------------------');
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        List jsonresponse = convert.jsonDecode(response.body);
      //  return jsonresponse.map((e) => Saly_Model.fromJson(e)).toList();
       var c=   (jsonresponse as List)
            .map((data) => Saly_Model.fromJson(data))
            .toList();
print(")))))))))77777777777777777777777777777))))))))))))))))))))))))");
print(c[0].image.url_image);
          return c;
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }





}