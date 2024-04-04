import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/database/models/Home/Detils_Model.dart';
import 'package:lara_push_noti/database/services/Manage_Saly/Mangment_Service.dart';
import 'package:lara_push_noti/database/services/Manage_Saly/Mangment_Service.dart';
import 'package:image_picker/image_picker.dart';

class Updata_Controller extends GetxController {
  Mangment_Service services = Mangment_Service();

  final productFormkey = GlobalKey<FormState>();
  var storage = const FlutterSecureStorage();
  final ImagePicker imagePicker = ImagePicker();

  List<XFile>? imageFileList = [];
  List<XFile>? imagesxfile = [];


  var imageListTemp = <dynamic>[].obs;


  var imageListnew = <Images_Model>[].obs;
  var imageList_temp = <Images_Model>[].obs;
  var detil2 = <Detils_Model>[].obs;
  late Detils_Model detil3;

  var detilssend = Detils_Model(images: []);

  var postloading = true.obs;
  var getloading = true.obs;

  late TextEditingController
      name_Controller,
      size_Controller,
      images_Controller,
      expration_date_Controller,
      price_Controller,
      description_Controller,
      category_id1_Controller,
      category_id2_Controller,
      company_name_Controller,
      discount_Controller,
      location_Controller;

  String name = ' ', location = '', description = '', company_name = '';
  var imagesasly= <Images_Model>[] ;
  var images= <Images_Model>[] ;
  var oldimage= <Images_Model>[] ;
  var imagesdynamc= <dynamic>[];
  var price;
  var discount, size;
  var expration_date, category_id2, category_id1, idna;
  var id = ''.obs;
  var idhom = ''.obs;

  void onInit() {

    print(
        "yuyuuuuuuuuuuuuuuwewrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrruuuuuuuuuuuuuuuuuuuuuuuuuu");
    name = Get.arguments['name'];
    company_name = Get.arguments['company_name'];
    location = Get.arguments['location'];
    size = Get.arguments['size'];
    discount = Get.arguments['discount'];
    expration_date = Get.arguments['expration_date'];
    description = Get.arguments['description'];
    price = Get.arguments['price'];
    images = Get.arguments['images'] ;
   // imagesasly = Get.arguments['images'] ;
   // oldimage = Get.arguments['images'] ;

 //   imagesxfile = Get.arguments['imagesxfile']  ;
  //  imagesdynamc = Get.arguments['imagesdynamic'] ;
    category_id2 = Get.arguments['category_id2'];
    category_id1 = Get.arguments['category_id1'];
    idna = Get.arguments['id'];
   idhom.value=Get.arguments['category_id1'];
    print(
        "yuyuuuuuuuuuuuuuuwewrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrruuuuuuuuuuuuuuuuuuuuuuuuuu");
    print(idna);
    print(idhom.value);
    print(category_id2);
    print(imagesxfile);

    print(
        "yuyuuuuuuuuuuuuuuwewrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrruuuuuuuuuuuuuuuuuuuuuuuuuu");

    id.value = Get.arguments['id'];
    name_Controller = TextEditingController();
    company_name_Controller = TextEditingController();
     images_Controller = TextEditingController();
    size_Controller = TextEditingController();
    expration_date_Controller = TextEditingController();
    location_Controller = TextEditingController();
    discount_Controller = TextEditingController();
    description_Controller = TextEditingController();
    price_Controller = TextEditingController();
    category_id1_Controller = TextEditingController();
    category_id2_Controller = TextEditingController();
    super.onInit();
  }

  void selectImages() async {
    if (!imageListTemp.isEmpty)
    imageListTemp.clear();
    if (!imageListnew.isEmpty)
      imageListnew.clear();
    final List<XFile>? selectedImagesnew = await imagePicker.pickMultiImage();
    if (selectedImagesnew!.isNotEmpty) {
      imageFileList?.addAll(selectedImagesnew);

      imageListTemp.value.assignAll(imageFileList!);

      print(
          "=================================image ===========================");

      print("pleasssssssssssssssssssssssssssssssssssss arkz");
      imageListTemp.value.forEach((element) {
        imageListnew.add(Images_Model(url_image: element.path));
      });
    }
    print("/*/*/*////*/*/*/*/*//*///*/*/*////*//");
    // print( imageList.elementAt(0).url_image);
    // print( imageList.elementAt(1).url_image);
    // print( imageList.elementAt(2).url_image);
    // print( imageList.elementAt(3).url_image);
    selectedImagesnew.clear();
    update();
  }

 //
 //  void its()async {
 //   // final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
 //   // if (selectedImages!.isNotEmpty) {
 // //  imageFileList?.assignAll(imagesdynamc.first);
 //
 // //imageFileList?.assignAll(imageListTemp);
 //
 //      print(
 //          "=================================image ===========================");
 //
 //      print("pleasssssssssssssssssssssssssssssssssssss arkz");
 //      imagesxfile?.forEach((element) {
 //        imageList.add(Images_Model(url_image: element.path));
 //      });
 //  //  }
 //    print("/*/*/*////*/*/*/*/*//*///*/*/*////*//");
 //   print( imageList.length);
 // //    print( imageList.elementAt(1).url_image);
 //    // print( imageList.elementAt(2).url_image);
 //    // print( imageList.elementAt(3).url_image);
 //  //  selectedImages.clear();
 //      update();
 //  }
  edite(var id) async {
    postloading(true);
    try {

      print("jjjjjjjjjjjjjjjjjjjjj");
      detilssend.name = name_Controller.text;
      detilssend.price = price_Controller.text;
      detilssend.description = description_Controller.text;
      detilssend.location = location_Controller.text;
      detilssend.category_id2 = category_id2_Controller.text;
     // detilssend.oldimage.assignAll(oldimage);
      detilssend.images.addAll(imageListnew);

      var data = await services.edite(
        token: await storage.read(key: 'token'),
        detilssend: detilssend,
      );
      if (data != null) {
        print("jjjjjjjjjjjjj");
        //      name='';
        //  name_Controller= name ;
        //as TextEditingController;
        imageListTemp.clear();
        //   detilssend.images.clear();
        onInit();
        //  Get.toNamed(Routes.Add, arguments: {
        //    "category_id1":idhom.value
        //
        //  });
      }
    } finally {
      postloading(false);
    }
  }

  void deleteimages(var index){
    print(images.elementAt(index).id);
    images.removeAt(index);
 //   imagesxfile?.removeAt(index);
  //  its();
    update();
  }
}
