import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'dart:io';
import 'package:lara_push_noti/database/Profile_Model.dart';
import 'package:lara_push_noti/database/models/User_Model.dart';
import '../../../../main.dart';
import '../../models/My/notifaction_Model.dart';

class Notifaction_Service {


  var noti = <NotifactionModel>[];

  show({required token})

  async {

  try {

  print("in service showbooks");
  var response = await http.get((Uri.parse( '$API/notification')),
  headers: {'Content-Type' : 'application/json',
  'Authorization':'Bearer  '+'$token',
  'Accept':'application'})
      .timeout(const Duration(seconds: 20), onTimeout: () {
  throw TimeoutException("connection time out try agian");
  });
  print(response.statusCode);
  print(response.body);
  if (response.statusCode == 200) {
  // List jsonresponse = convert.jsonDecode(response.body);
  // var c=   (jsonresponse as List)
  //     .map((data) => NotifactionModel.fromJson(data))
  //     .toList();
    List jsonresponse = convert.jsonDecode(response.body);
    print(jsonresponse);
    var c=   (jsonresponse as List)
        .map((data) =>NotifactionModel.fromJson(data))
        .toList();
    print(")))))))))77777777777777777777777777777))))))))))))))))))))))))");


  return c;
  } else {
  return null;
  }
  } on TimeoutException catch (_) {
  print("response time out");
  }
  }





  }

