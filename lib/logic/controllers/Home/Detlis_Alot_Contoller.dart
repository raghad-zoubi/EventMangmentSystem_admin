import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/database/models/Home/Category_Model.dart';
import 'package:lara_push_noti/database/models/Home/Detils_Model.dart';
import 'package:lara_push_noti/database/models/Saly_Model.dart';
import 'package:lara_push_noti/database/services/Manage_Saly/detils_Services.dart';

import '../../../routes/app_pages.dart';

class Detilalt_Controller extends GetxController {

  var Tabbar;

  void changeTabbar(var indexw) {

    Tabbar.value = indexw;

    update();
  }

  var storage = const FlutterSecureStorage();

 var detils = <Detils_Model>[].obs;
 var detilss = <Saly_Model>[].obs;
  var category = <Category_Model>[].obs;

  detils_Services services = detils_Services();

  var postloadingdet = true.obs;
  var postloadingcat = true.obs;
  //var index = 1.obs ;

  var idhome = ''.obs;
  var idcat ;

   late TextEditingController

      expration_date_Controller,
      discount_Controller
      ;



    var expration_date ;
    var discount ;
// var expration_date ;
  @override
  void onInit() async {


    print("inside onInit at Controller Detils alot ");
    try {
      idhome.value =Get.arguments['id'];
    } catch (_) {
      idhome.value = '1';
    }
    // idcat= 1.obs;
     condition( idhome.value);
  //   idcat.value
    print("idhome.value");
    print(idhome.value);
    print("idcat.value");
  //  idcat.value=Tabbar.value .toString();

      print(idcat);
  //  getcat(idhome.value);
    getDetils( idcat);

    discount_Controller= TextEditingController();
    expration_date_Controller= TextEditingController();
    super.onInit();
  }

  getDetils(var idcat) async {

    try {
      print("now in method getDetils at controller Detilalt_Controller");
   //   print(idhome);
      print(idcat);
      postloadingdet.value = true;
       var result =(await services.getall(token:await storage.read(key: 'token'),id:idcat)) ;
   if (result != null) {
        print('hjjjjjjjjjjjjjjj');

    detilss.assignAll(result);
      print( detilss.length) ;
      } else {
        print("Errooooooooooooooooor");
      }
    } finally {
      postloadingdet.value = false;
    }
    update();
  }


  getcat(var idhome) async {
    try {
      postloadingcat.value = true;

      print(idhome);
      print(idcat);

      List<Category_Model> result = [
        Category_Model(
            name: "Jane ",
           id:1,),
        Category_Model(
            name: " Russel",
           id:2,),
        Category_Model(
            name: "Jane Russel",
           id:3,),
        Category_Model(
            name: "Janetyt",
           id:4,),
        Category_Model(
          name: " Russelhjg",
          id: 5,
        ),
      ];
      //  var result1 = await services.getditels(token:await storage.read(key: 'token'),id: id);
      if (result != null) {
        print('hjjjjjjjjjjjjjjj');
        category.assignAll(result);
      } else {
        print("Errooooooooooooooooor");
      }
    } finally {
      postloadingcat.value = false;
    }
    update();
  }
  addtodiscount  (var id) async {
   try {
   print(
       'yyyyyyyyyyyyyyyyyyyyyyyffffffffffffffffffff'
     );
     //postloadingdet.value = true;
   var result =
    await services.addtooffer(token:await storage.read(key: 'token'),id:id,
        discount:discount_Controller.text,
        expration_date:expration_date_Controller.text
  );
    if (result != null) {
    print('tmmmm');
 // detils.assignAll(result);
    } else {
    print("Errooooooooooooooooor");
    }
    } finally {
    //postloadingdet.value = false;
    }
    update();
    }
  condition(var s) {
    if (s == '0') {
      print("ghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhxxxxxxxxxxxxxxxxxxxxxxxx00");
      Tabbar = 1.obs;
      idcat = 1.obs;

      //changeTabbar(1);
      // Tabbar.value=1;
    }
    if (s == '1') {
      print("ghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhxxxxxxxxxxxxxxxxxxxxxxxx00");
      Tabbar = 5.obs;
      idcat = 5.obs;
    }

    if (s == '2') {
      print("ghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhxxxxxxxxxxxxxxxxxxxxxxxx00");
      Tabbar = 11.obs;
      idcat = 11.obs;
    }

    if (s == '3') {
      print("ghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhxxxxxxxxxxxxxxxxxxxxxxxx00");
      Tabbar = 14.obs;
      idcat = 14.obs;
    }
    if (s == '4') {
      print("ghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhxxxxxxxxxxxxxxxxxxxxxxxx00");
      Tabbar = 17.obs;
      idcat = 17.obs;
    }

    if (s == '5') {
      print("ghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhxxxxxxxxxxxxxxxxxxxxxxxx00");
      Tabbar = 19.obs;
      idcat = 19.obs;
    }

    if (s == '6') {
      print("ghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhxxxxxxxxxxxxxxxxxxxxxxxx00");
      Tabbar = 22.obs;
      idcat = 22.obs;
    }
    if (s == '7') {
      print("ghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhxxxxxxxxxxxxxxxxxxxxxxxx00");
      Tabbar = 25.obs;
      idcat = 25.obs;
    }
  }
  delete(var s)async{


      try {
        print("now in method delete at controller Detilalt_Controller");
        //   print(idhome);
        print(idcat);
        postloadingdet.value = true;

        var result =(await services.delete(token:await storage.read(key: 'token'),id:s.toString())) ;
        if (result != null) {
          print('hjjjjjjjjjjjjjjj');
 //var e=idhome.value;
          onInit();

        } else {
          print("Errooooooooooooooooor");
        }
      } finally {
        postloadingdet.value = false;
      }
      update();




  }
}
