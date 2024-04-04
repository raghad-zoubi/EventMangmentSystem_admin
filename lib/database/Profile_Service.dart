import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'dart:io';
import 'package:lara_push_noti/database/Profile_Model.dart';
import 'package:lara_push_noti/database/models/User_Model.dart';
import '../../main.dart';

class Profile_Service {




  Future show({required token})
  async {
    try {
      print(token);
      var response = await http
          .get((Uri.parse('$API/company/admin/preview')),
          headers: {'Content-Type': 'application/json',
            'Authorization': 'Bearer  ' + '$token',
            'Accept': 'application'})
          .timeout(const Duration(seconds: 20), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });
      print("now in show profile cheeck");
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        // List jsonresponse =response.body.toString() as List;
        var jsonresponse = json.decode(response.body);
// var data =ProfileModel.fromJson(jsonresponse );

        var x = ProfileModel(

          tid: jsonresponse['tid'],
          img: jsonresponse['img'],
          mdesc: jsonresponse['mdesc'],
          fname: jsonresponse['fname'],
          lname: jsonresponse['lname'],

          mname: jsonresponse['mname'],
        );
        List<ProfileModel> data = [x];


        return data;


        //  return data;


      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }


}
