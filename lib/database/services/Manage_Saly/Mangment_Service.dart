import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:lara_push_noti/database/models/Home/Detils_Model.dart';

import '../../../main.dart';

class Mangment_Service {



  Future<String?> Add(
 //imageFileList,
      {required
      Detils_Model detilssend,
     token,

      })
  async {


    var auth = "Bearer" + " " + token;
    Map<String, String> headers = {
      // 'Content-Type': 'multipart/form-data',
      'Authorization': auth,
      'X-Requested-With': ' XMLHttpRequest ',
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    print(auth);
    Map<String, String> body = {
      "name":detilssend.name,
      "location":detilssend.location,
      "description":detilssend.description,
      "price":detilssend.price,
      "subCategory": detilssend.category_id2.toString(),
      "color":detilssend.color,
      "capcity":detilssend.capcity,
      "type":detilssend.type,
      "size":detilssend.size,

    };
    try {
      var request = http.MultipartRequest('POST', Uri.parse('$API/service/admin/add'));
      request.headers.addAll(headers);
      request.fields.addAll(body);


      for (var file in  detilssend.images) {
        print("in for ech for add service multy image");
        print(file.url_image);
        request.files.add(
            await http.MultipartFile.fromPath("url_image[]", file.url_image));
      }
      var sendRequest = await request.send();
      var response = await http.Response.fromStream(sendRequest);
      final responseData = json.decode(response.body);
      print(responseData);
      print("ffffffffffffffffffffffffff");
      print(response.body);
      print(response.statusCode);

      if (response.statusCode != 201) {}
      if (response.statusCode == 201) {  print("kkk");
      return "se";}
      //notifyListeners();  nnnnn


    }
    catch (error) {
      print("errooooooooooooooooooor");
      print(error);

      rethrow;
      //return null;
    }
  }

  Future<String?> edite(
 //imageFileList,
      {required
      Detils_Model detilssend,
     token,

      })
  async {


    var auth = "Bearer" + " " + token;
    Map<String, String> headers = {
      // 'Content-Type': 'multipart/form-data',
      'Authorization': auth,
      'X-Requested-With': ' XMLHttpRequest ',
      'Accept': 'application/json',
      'Content-Type': 'application/json',
    };
    print(auth);
    Map<String, String> body = {

      "name":detilssend.name,

      "location":detilssend.location,
      "description":detilssend.description,
      "price":detilssend.price,
      "subCategory":"park",

    //  "oldimage": '$imagesoldlist'
    };
    try {
      var request = http.MultipartRequest('POST', Uri.parse('$API/service/admin/edit/2'));
      request.headers.addAll(headers);
      request.fields.addAll(body);


      for (var file in  detilssend.images) {
        print("in for ech for add service multy image");
        print(file.url_image);
        request.files.add(
            await http.MultipartFile.fromPath("url_image[]", file.url_image));
      }
      var sendRequest = await request.send();
      var response = await http.Response.fromStream(sendRequest);
      final responseData = json.decode(response.body);
      print(responseData);
      print("ffffffffffffffffffffffffff");
      print(response.body);
      print(response.statusCode);

      if (response.statusCode != 201) {}
      if (response.statusCode == 201) {  print("kkk");
      return "se";}
      //notifyListeners();  nnnnn


    }
    catch (error) {
      print("errooooooooooooooooooor");
      print(error);

      rethrow;
      //return null;
    }
  }
























  Future<List<Detils_Model>?> Delete(
      {required name,
        name_company,
        image_path,
        price,
        expration_date,
        saly,
        desc,
        site,
        category_id1,
        category_id2,
        id,
        token,
        rate}) async {
    try {
      var response = await http
          .post(
        (Uri.parse('API/myproducts/up/' + id.toString())),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer  ' + '$token',
          'Accept': 'application'
        },
        body: jsonEncode(<String, dynamic>{
          "name": name,
          "expration_date": expration_date,
          "image_path": image_path,
          "site": site,
          "saly": saly,
          "rate": rate,
          "desc": desc,
          "price": price,
          "name_company": name_company,
          "category_id1": category_id1,
          "category_id2": category_id2,
          "id": id,
        }),
      )
          .timeout(const Duration(seconds: 20), onTimeout: () {
        print("kkkkkkkk");
        throw TimeoutException("connection time out try agian");
      });

      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        List jsonresponse = convert.jsonDecode(response.body);
        return jsonresponse.map((e) => Detils_Model.fromJson(e)).toList();
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }

  Future<List<Detils_Model>?> AddSaly(
      {required name,
        name_company,
        image_path,
        price,
        expration_date,
        saly,
        desc,
        site,
        category_id1,
        category_id2,
        id,
        token,
        rate}) async {
    try {
      var response = await http
          .post(
        (Uri.parse('API/myproducts/up/' + id.toString())),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer  ' + '$token',
          'Accept': 'application'
        },
        body: jsonEncode(<String, dynamic>{
          "name": name,
          "expration_date": expration_date,
          "image_path": image_path,
          "site": site,
          "saly": saly,
          "rate": rate,
          "desc": desc,
          "price": price,
          "name_company": name_company,
          "category_id1": category_id1,
          "category_id2": category_id2,
          "id": id,
        }),
      )
          .timeout(const Duration(seconds: 20), onTimeout: () {
        print("kkkkkkkk");
        throw TimeoutException("connection time out try agian");
      });

      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        List jsonresponse = convert.jsonDecode(response.body);
        return jsonresponse.map((e) => Detils_Model.fromJson(e)).toList();
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }
}
