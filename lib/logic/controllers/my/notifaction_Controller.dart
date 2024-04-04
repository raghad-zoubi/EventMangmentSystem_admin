
import 'dart:io';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/database/models/Books/Book_Model.dart';
import 'package:lara_push_noti/database/models/Books/Order_Model.dart';
import 'package:lara_push_noti/database/services/book/Book_Service.dart';

import '../../../database/models/My/notifaction_Model.dart';
import '../../../database/services/My/Notifaction_Service.dart';

class Notifaction_Controller extends GetxController {




  final productFormkey = GlobalKey<FormState>();
  var storage = const FlutterSecureStorage();
  var noti = <NotifactionModel>[].obs;
  Notifaction_Service services= Notifaction_Service();
  var postloading = true.obs;
  var isempty = true.obs;

  void onInit()
  {

    Show();
    super.onInit();
  }

  // Show() async {
  //   try {
  //     postloading.value = true;
  //
  //     var result = await services.show(token:await storage.read(key: 'token'));
  //
  //
  //     if (result != null && result !="is empty") {
  //       print("marksssssssssssssss in ifffffffff");
  //       noti.assignAll(result);
  //       print("boooooooooooooooooook");
  //     }
  //     if (result =="is empty"&& result != null ) {
  //
  //       noti.clear();
  //       List<NotifactionModel>
  //       result = [
  //         NotifactionModel(body: "7777", id: 7777,date:'7777',user_id: 2 ),
  //       ];
  //       noti.assignAll(result);
  //
  //       print(noti[0].body);
  //       print("stoooooooooooooooooooop is emptyyyy");
  //     }
  //
  //
  //   } finally {
  //     postloading.value = false;
  //     //  isempty.value=false;
  //   }
  //   update();
  // }
  Show() async {
    try {
      postloading.value = true;

  var result = await services.show(token:await storage.read(key: 'token'));




    noti.assignAll(result);

      print(noti[0].id);
        print("stoooooooooooooooooooop is emptyyyy");



    } finally {
      postloading.value = false;
      //  isempty.value=false;
    }
    update();
  }



}



