
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/database/models/Home/Category_Model.dart';
import 'package:lara_push_noti/database/models/Home/Detils_Model.dart';
import 'package:lara_push_noti/database/services/Manage_Saly/Mangment_Service.dart';
import 'package:image_picker/image_picker.dart';
class ImageController extends GetxController {
  static ImageController get to => Get.find<ImageController>();

  late File image;
  late String imagePath;
  final _picker = ImagePicker();

  Future<void> getImage() async {
    final pickedFile = await _picker.getImage(source: ImageSource.camera);

    if (pickedFile != null) {
      image = File(pickedFile.path);
      imagePath = pickedFile.path;
      print(imagePath);
      update();
    } else {
      print('No image selected.');
    }
  }
}