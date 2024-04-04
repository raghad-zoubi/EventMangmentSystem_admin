import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/database/models/Home/Category_Model.dart';
import 'package:lara_push_noti/database/models/Home/Detils_Model.dart';
import 'package:lara_push_noti/database/Profile_Model.dart';
import 'package:lara_push_noti/database/services/Manage_Saly/Mangment_Service.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lara_push_noti/database/Profile_Service.dart';
import 'package:lara_push_noti/routes/app_pages.dart';

class Profile_Controller extends GetxController {
  final profileFormkey1 = GlobalKey<FormState>();
  var sendImage = File('').obs;
  var storage = const FlutterSecureStorage();
  final ImagePicker imagePicker = ImagePicker();
  var imageFileList = <dynamic>[].obs;
  var imageList = <Images_Model>[].obs;
  var ditils = <ProfileModel>[].obs;
  late List<ProfileModel> result1;
  Profile_Service services = Profile_Service();
  var postloading = true.obs;

  late TextEditingController name_Controller,
      url_image_Controller,
      description_Controller,
     replay_speed_Controller,
      delivery_speed_Controller,
      comp_rate_Controller;

  String name = ' ',
     replay_speed = ' ',
      delivery_speed = ' ',
      url_image = '',
      description = ''; //name_company='';
  var comp_rate;
  var id = ''.obs;

  void onInit() {
    print(
        "yuyuuuuuuuuuuuuuuwewrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrruuuuuuuuuuuuuuuuuuuuuuuuuu");

    print(
        "yuyuuuuuuuuuuuuuuwewrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrruuuuuuuuuuuuuuuuuuuuuuuuuu");

    name_Controller = TextEditingController();
    comp_rate_Controller = TextEditingController();
    url_image_Controller = TextEditingController();
    replay_speed_Controller = TextEditingController();
    delivery_speed_Controller = TextEditingController();
    description_Controller = TextEditingController();
    Show_info_profile();
    super.onInit();
  }



  var isLoading = false.obs;
  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;

  Show_info_profile() async {
    try {
      postloading(true);


   dynamic result1=
      await services.show(token:await storage.read(key: 'token'));
      if (result1 != null) {
        print('_________________________________________________\n in method Show_info_profile at Profile_Controller after fetsh data of profile and states is 200 ');
   ditils.assignAll(result1);

   print(ditils.value.elementAt(0).img);
        print(ditils.length);
      } else {
        print("Errooooooooooooooooor in Show_info_profile ");
      }
    } finally {
      postloading.value = false;
    }
    update();
  }

}
