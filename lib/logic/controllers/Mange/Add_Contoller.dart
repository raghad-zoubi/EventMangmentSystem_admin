import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/database/models/Home/Category_Model.dart';
import 'package:lara_push_noti/database/models/Home/Detils_Model.dart';
import 'package:lara_push_noti/database/services/Manage_Saly/Mangment_Service.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lara_push_noti/routes/app_pages.dart';
import 'dart:convert' as convert;
class Add_Controller extends GetxController {
  var Tabbar0;
  var idhom;
  var idcat;
  var Tabbar;
 var  name_category_id2=''.obs;
  final profileFormkey = GlobalKey<FormState>();
 var type='2'.obs;//man
  var Checkbox_Woman;//3
  var Checkbox_Man;//2
  var Checkbox_Kids;//1
  void change_Checkbox_Woman(bool val,){
  //  type.value='3';
    Checkbox_Woman.value=val ;
    update();
  }
  void change_Checkbox_Man(bool val,){
   // type.value='2';
    Checkbox_Man.value=val ;
    update();
  }
  void change_Checkbox_Kids(bool val,){
  //  type.value='1';
    Checkbox_Kids.value=val ;
    update();
  }
  void changeTabbar0(int index) {
    Tabbar0.value = index;
    idhom.value = index;
    update();
  }

  void changeTabbar(int index) {
    Tabbar.value = index;

    update();
  }

  Mangment_Service services = Mangment_Service();

  final productFormkey = GlobalKey<FormState>();
  var storage = const FlutterSecureStorage();
    ImagePicker imagePicker = ImagePicker();

  List<XFile>? imageFileList = [];

  var imageList = <Images_Model>[];
  var imageListTemp = <dynamic>[].obs;

  var category = <Category_Model>[].obs;

  var postloading = true.obs;
  var postloadingcat = true.obs;
  var detil2 = <Detils_Model>[].obs;
  late Detils_Model detil3;

  var detilssend = Detils_Model(images: []);

  late TextEditingController name_Controller,
      rate_Controller,
      url_image_Controller,
      expration_date_Controller,
      price_Controller,
      description_Controller,
      category_id1_Controller,
      category_id2_Controller,
      name_company_Controller,
      saly_Controller,
      size_Controller,
      location_Controller,
      capcity_Controller;

  String name = ' ',
      rate = ' ',
      url_image = ' ',
      location = '',
      description = '',
      name_company = '';
  var price;
  var saly;
  var size;
  var expration_date, category_id1, category_id2, idna;


  void onInit() {
    Tabbar0 = 0.obs;
    idhom = 0.obs;

    Checkbox_Woman=false.obs ;
    Checkbox_Man=true.obs;
    Checkbox_Kids=false.obs ;
    condition(idhom.toString());
    print("______________***********************_______________________");

    name_Controller = TextEditingController();
    size_Controller = TextEditingController();
    capcity_Controller = TextEditingController();
    name_company_Controller = TextEditingController();
    url_image_Controller = TextEditingController();
    rate_Controller = TextEditingController();
    expration_date_Controller = TextEditingController();
    location_Controller = TextEditingController();
    saly_Controller = TextEditingController();
    description_Controller = TextEditingController();
    price_Controller = TextEditingController();

    category_id2_Controller = TextEditingController();
    getcat(idhom);
    super.onInit();
  }
  List<XFile>? selectedImages;
  void selectImages() async {

    selectedImages = await imagePicker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList!.addAll(selectedImages!);
      imageListTemp.value.assignAll(imageFileList!);

      print(
          "=================================image ===========================");

      print("pleasssssssssssssssssssssssssssssssssssss arkz");
      imageListTemp.value.forEach((element) {
        imageList.add(Images_Model(url_image: element.path));
      });
    }
    print("/*/*/*////*/*/*/*/*//*///*/*/*////*//");

  }

  Addservice() async {
    postloading(true);
    try {
      print("jjjjjjjjjjjjjjjjjjjjj");
      if(name_Controller.text.isEmpty)
        name_Controller.text='l@a';
      detilssend.name = name_Controller.text;
      if(capcity_Controller.text.isEmpty)
        capcity_Controller.text='l@a';
      detilssend.capcity = capcity_Controller.text;
      if(price_Controller.text.isEmpty)
        price_Controller.text='l@a';
      detilssend.price = price_Controller.text;
      if(description_Controller.text.isEmpty)
        description_Controller.text='l@a';
      detilssend.description = description_Controller.text;
      if(location_Controller.text.isEmpty)
        location_Controller.text='l@a';
      detilssend.location = location_Controller.text;
      if(category_id2_Controller.text.isEmpty)
     print('tapppppppppppppppppppppppppppppppppaaaaaaaaaaar');
      print(Tabbar.toString());
      detilssend.category_id2 = Tabbar.toString();
      print("uyygmmmmmmmmmmmmmmmmmmmmmm");
      print(name_category_id2.value.toString());
      //clothes
      if(color.isEmpty)
        color.value= 'l@a';
        detilssend.color=color.value.toString();
      if(  all_size.value.isEmpty )
        all_size.value = 'l@a';

      detilssend.size = all_size.value.toString();
      detilssend.type = type.value.toString();
print("tyyyyyyyyyyyyyyyyyyyyyype");
print(type.value);
      detilssend.images.addAll(imageList);

      var data = await services.Add(
        token: await storage.read(key: 'token'),
        detilssend: detilssend,
      );
      if (data != null) {
        print("jjjjjjjjjjjjj");
        //      name='';
        //  name_Controller= name ;
        //as TextEditingController;
        imageListTemp.clear();
        update();

        detilssend.images.clear();
        update();

        imageList.clear();
        update();
        onInit();

      }
    } finally {
      postloading(false);
    }
  }

  getcat(var idhome) async {
    try {
      postloadingcat(true);

      print(idhome);
      //   print(idcat);

      List<Category_Model> result = [
        Category_Model(
          name: "Jane Russel",
          id: 1,
        ),
        Category_Model(
          name: "Jane Russel",
          id: 1,
        ),
        Category_Model(
          name: "Jane Russel",
          id: 1,
        )
      ];
      //  var result1 = await services.getditels(token:await storage.read(key: 'token'),id: id);
      if (result != null) {
        print('hjjjjjjjjjjjjjjj');
        category.assignAll(result);
      } else {
        print("EimageListooooooooooooooooor");
      }
    } finally {
      postloadingcat.value = false;
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
void cancel(){
   size.value= '';
   all_size.value= '';
   size_man_woman .value= '';
   color .value= '';
   List_size_Kids.clear();
   List_size_man_woman .clear();
   List_color .clear();


   update();
}
  var all_size= ''.obs;
  var size_man_woman = ''.obs;
  var color = ''.obs;
  var List_size_Kids = [];
  var List_size_man_woman = [];
  var List_color = [];

void Size_kids(var s){

  String  str=s.toString();
print(str);
  print(List_size_Kids);
    String start ='Kids: [';
    String end =']';
  final startIndex = str.indexOf(start);
  final endIndex = str.indexOf(end, startIndex + start.length);
  String p=(str.substring(startIndex + start.length, endIndex));
  all_size.value=p.toString();
  List_size_Kids = p.split(",");

      print(  all_size.value);
    String all;
      print('popop');
      print(List_size_Kids[0]);
   //   print(List_size_Kids[1]);
  //     for(String h in List_size_Kids)
  //
  // //   f = f.toString() + size_kid.toString();
  // //   size_Kids.value = f;
  //

update();

}
void Size_other(var s){

  String  str=s.toString();
print(str);
  print(List_size_Kids);
    String start ='adults: [';
    String end =']';
  final startIndex = str.indexOf(start);
  final endIndex = str.indexOf(end, startIndex + start.length);
  String p=(str.substring(startIndex + start.length, endIndex));
  all_size.value=p.toString();
  List_size_Kids = p.split(",");

      print( all_size.value);
    String all;
      print('popop');

  //     for(String h in List_size_Kids)
  //
  // //   f = f.toString() + size_kid.toString();
  // //   size_Kids.value = f;
  //

update();

}
  void ass_color(var colo) {
  String str;
    List_color.clear();
if(color.value.isEmpty ||color.value=='l@a'){
  color.value='';
     str = colo.toString();}
else
   str = color.value+','+colo.toString();
color.value=str;

color.value=str;
   print(color.value);



    update();
  }

}

