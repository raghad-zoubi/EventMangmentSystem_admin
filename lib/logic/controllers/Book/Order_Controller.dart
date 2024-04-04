
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/database/models/Books/Order_Model.dart';
import 'package:lara_push_noti/database/services/book/Book_Service.dart';

class Book_Order_Controller extends GetxController {
  final productFormkey = GlobalKey<FormState>();
  var storage = const FlutterSecureStorage();
  var ditils = <OrderModel>[].obs;
  Book_Services services= Book_Services();
  var postloading = true.obs;

  var id= ''.obs;
  var kind= ''.obs;
  var id_user_ordor=''.obs;
  var name_user_ordor=''.obs;

  void onInit() {
    print("____________----------------------------------___order");

    id.value=Get.arguments['id'];
    kind.value=Get.arguments['kind'];
    print("now in a onInit of Book_Order_Controller");
    print("id order detils is :");
    print(id.value);

   Show_Order ( id.value);
    super.onInit();
  }
  Show_Order( var id) async {
    postloading(true);
    try {
      print("ordeeeeeeeeeeeeeeeeer");
      var data = await services.showorderditels(
        token:await storage.read(key: 'token'),
        id  :id,

      );
      if (data != null) {
        ditils.assignAll(data);
        print(ditils.value[0].date);
        print(ditils.value[0].time);
        print(ditils.value[0].service_id);
        print(ditils.value[0].customer_id);
        print(ditils.value[0].notes);
        print(ditils.value[0].size);
        print(ditils.value[0].quantity);
        print(ditils.value[0].user_location);
        print(ditils.value[0].status);
      }
    } finally {
      postloading(false);
    }

  }


  accept_ignore(var orderId ,status)
  async{

    try {
      postloading(true);

     //var result=status.toString()+orderId.toString();
     //  var result = await services.accept_ignore(token:await storage.read(key: 'token'),
     //      status: status,
     //      orderId: orderId);
       var result = await services.accept_ignore(token:await storage.read(key: 'token'),
          status: status,
          orderId: orderId);
      //   var result = await services.noti(token:await storage.read(key: 'token'),
      //    );
      if (result != null) {
        print('_________________________________________________\n in method delete_Userss at chat_Controller after delete conversation ');
        print(result);
        Get.back();
      } else {
        print("Errooooooooooooooooor in Show_info_profile ");
      }
    } finally {
      postloading.value = false;
    }
    update();
  }
var r=''.obs;
  inconv(var custmerid)

  async{

    try {
      postloading(true);

     //var result=status.toString()+orderId.toString();
     //  var result = await services.accept_ignore(token:await storage.read(key: 'token'),
     //      status: status,
     //      orderId: orderId);
       var result = await services.inconv(token:await storage.read(key: 'token'),
           custmerid:custmerid);
      //   var result = await services.noti(token:await storage.read(key: 'token'),
      //    );
      if (result != null) {

         if(result['message']=='already exists' && result['id']==null ) {
           r.value = 'tm';
           Get.snackbar("chat",
               "it is chat created befor go to your convesation for find it");
           update();
         } else
           {
             r.value="pop";id_user_ordor.value=result['id'];
           name_user_ordor.value=result['name'];
           update();
           }
      } else {

        Get.snackbar("error", "something was happen ");
        r.value="error";
      }
    } finally {
      postloading.value = false;
    }
    update();
    return r;

  }





}
