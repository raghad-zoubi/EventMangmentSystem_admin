import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/database/models/Saly_Model.dart';

import 'package:lara_push_noti/database/services/Manage_Saly/Saly_Service.dart';

 class SalyController extends GetxController {
 var saly =  <Saly_Model>[].obs;
  final storage= const FlutterSecureStorage();
   SalyServices services = SalyServices() ;
  var postloading = true.obs;



void onInit() {
  callgetsaly();
  super.onInit();
}


callgetsaly() async {
  try {
    postloading.value = true;
    var result = await services.getSaly(token:await storage.read(key: 'token'));
    if (result != null) {
     saly.assignAll(result);
      print(saly.length);
      print(saly[0].image.url_image);

  }
    else {
      print("null");
    }
  } finally {
    postloading.value = false;
  }
  update();
}


}
