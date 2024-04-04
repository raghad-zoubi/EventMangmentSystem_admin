
import 'dart:io';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/database/models/Books/Book_Model.dart';
import 'package:lara_push_noti/database/models/Books/Order_Model.dart';
import 'package:lara_push_noti/database/services/book/Book_Service.dart';

class Book_Controller extends GetxController {

var color = 1.obs ;



void changeColor(int colo ) {
  color.value=colo;
  update();
}
  final productFormkey = GlobalKey<FormState>();
  var storage = const FlutterSecureStorage();
  var allBooks = <BookModel>[].obs;
  Book_Services services= Book_Services();
  var postloading = true.obs;
  var isempty = true.obs;
  var kind= 'Will Be'.obs;
  void onInit()
  {
    try {//if( Get.arguments['kind']!= null)
kind.value = Get.arguments['kind'];
    }

    catch(_){
      kind= 'Will Be'.obs;
    }
Show_Book_kind (kind.value);
  super.onInit();
  }
  // List<BookModel> results = [
  //   BookModel(name: "fatima", id: 1,date:'23-11-2022' ),
  //   BookModel(name: "nour", id: 2, date:'12-11-2022'),
  //   BookModel(name: "boushra", id: 3,date:'2-10-2022'),
  //   BookModel(name: "houda", id: 4,date:'3-11-2022' ),
  //   BookModel(name: "batool", id: 5,date:'16-12-2022' ),
  //   BookModel(name: "raghad", id: 6,date:'3-10-2022'),
  //   BookModel(name: "hassan", id: 7,date:'23-9-2022' ),
  //   BookModel(name: "omar", id: 8,date:'23-1-2023'),
  //   BookModel(name: "asel", id: 9,date:'23-1-2023'),
  //   BookModel(name: "maher", id: 10,date:'23-1-2023'),
  //   BookModel(name: "zayed", id: 11,date:'23-1-2023'),
  //   BookModel(name: "oman", id: 12,date:'23-1-2023'),
  //   BookModel(name: "arwa", id: 13,date:'23-1-2023'),
  //   BookModel(name: "sereen", id: 14,date:'23-1-2023'),
  // ];
  Show_Book_kind(var kind) async {
  try {
  postloading.value = true;
  print("-----------------------------------------------");
 print(kind);
var result = await services.showbooks(token:await storage.read(key: 'token'),kind:kind);


  if (result != null && result !="is empty") {
    print("marksssssssssssssss in ifffffffff");
    allBooks.assignAll(result);
    print("boooooooooooooooooook");
  }
  if (result =="is empty"&& result != null ) {
// isempty.value=true;
    allBooks.clear();
 List<BookModel>
 result = [
   BookModel(name: "7777", id: 7777,date:'7777' ),
    ];
 allBooks.assignAll(result);

 print(allBooks[0].name);
    print("stoooooooooooooooooooop is emptyyyy");
  }


  } finally {
    postloading.value = false;
  //  isempty.value=false;
  }
  update();
  }
  // Show_Book_kind2() async {
  //   postloading(true);
  //   try {
  //     print("boooooooooooooooooook");
  //     var result = await services.showbooks(token:await storage.read(key: 'token'),kind:"archif");
  //
  //
  //
  //     if (result != null) { allBooks.assignAll(result);
  //       //print("jjjjjjjjjjjjj");
  //       // Get.toNamed(Routes.showmyproduct);
  //     }
  //   } finally {
  //     postloading(false);
  //   }
  //
  // }



  }



