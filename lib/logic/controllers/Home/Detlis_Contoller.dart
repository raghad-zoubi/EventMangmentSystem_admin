
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/database/models/Home/Category_Model.dart';
import 'package:lara_push_noti/database/models/Home/Comment_Model.dart';
import 'package:lara_push_noti/database/models/Home/Detils_Model.dart';
import 'package:lara_push_noti/database/services/Manage_Saly/detils_Services.dart';

import '../../../Screen/home/Detils.dart';
import '../../../routes/app_pages.dart';

class Detil_Controller extends GetxController {


  var storage = const FlutterSecureStorage();
  var detils = <Detils_Model>[].obs;
  detils_Services services = detils_Services();

  var postloading = true.obs;

  String  comment=' ';

  var getloading = true.obs;


  var commentss =  <Comments_Model>[].obs;
  var comments =  [].obs;
  var id =''.obs;
  var idhom =''.obs;

  late TextEditingController
  comment_Controller,
  expration_date_Controller,
      discount_Controller;



  var expration_date ;
  var discount ;

  @override
  void onInit() async {
print("_________________________________________________________________");
print("value of id  in a onInit at Detils one");
 //   id1.value = Get.arguments['id1'];

try {//if( Get.arguments['kind']!= null)
id.value=Get.arguments['id'];
idhom.value=Get.arguments['idhom'];
}

catch(_){
  id.value='1';
  idhom.value='1';
  print("jkkkkkkkkkkkhh");
}
 print(id.value);
  //  callgetmethod1(id1.value);
    callgetmethod(id.value);
comment_Controller=TextEditingController();
discount_Controller= TextEditingController();
expration_date_Controller= TextEditingController();
    super.onInit();
  }
  late Detils_Model result;

  callgetmethod(var id) async {
    try {
      postloading.value = true;

       result = (await services.getditels(token:await storage.read(key: 'token'),id: id));
      print("erooooooooooooooor in her ????????");
      if (result != null) {
        print(result.name);
        print('hjjjjjjjjjjjjjjj');
       detils.add(result);
    print(detils[0].images[0].url_image)   ;
      } else {
        print("Errooooooooooooooooor");
      }
    } finally {
      postloading.value = false;
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
      //
        callgetmethod(id);
        detils.removeAt(0);
      // print(detils.first.discount);
       Get.back();
      } else {
        print("Errooooooooooooooooor");
      }
    } finally {
      //postloadingdet.value = false;
    }
    update();
  }


  void add_comment(var comment) async {
    try {
      postloading.value = true;

      var result =  (await services.add_comment(
          token: await storage.read(key: 'token'),
          comment:comment.toString(),
          idServuce: id.value.toString())) ;

      print("erooooooooooooooor in rateeeeeeeeeeee ????????");
      if (result != null) {
        print(result);
        print('hjjjjjjjjjjjjjjj');

      } else {
        print("Errooooooooooooooooor");
      }
    } finally {
      postloading.value = false;
    }
    update();
  }

  list_comment()async {
    try {
      getloading.value = true;
      comments.clear();
      update();
      var result = await services.list_comment(
          token:await storage.read(key: 'token'),
          service_id:id.value.toString());
      if (result != null) {
        comments.clear();
        update();
        commentss.assignAll(result);
        update();
        print (commentss);
        for(int i=0;i<commentss.length;i++)
        {comments.insert(0, {
          "comment": commentss[i].comment ,
          "name":commentss[i].name,

        });
        update();

        }
        //(commentss.length);

      } else {
        print("null");
      }
    } finally {
      getloading.value = false;
    }
    update();
  }


}
