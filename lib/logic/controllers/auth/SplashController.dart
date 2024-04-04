import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lara_push_noti/routes/app_pages.dart';

import 'package:get/get.dart';
import 'dart:async';


class SplashController extends GetxController {
var token = ''.obs;
 var result = ''.obs;
 var role = ''.obs;
 var  write_info = ''.obs;
  var storage = const FlutterSecureStorage();
     var loading = true.obs;

Future <void>ReadStorage()async{
        try {
  token.value=(await storage.read(key: 'token'))!;
  role.value=(await storage.read(key: 'role'))!;

  write_info.value=(await storage.read(key: 'write_info'))!;

  print('=================== befor go to any page in splash controller ====================');
  print((await storage.read(key: 'write_info')));
  print( write_info.value);
  print( role.value);
  print(token.value);

  result.value = 'OK';
} catch (e) {
  result.value = 'NOOK';
}}

 // Future clerestorage()async{
 //    await(storage.deleteAll());
 //    var iys=await( storage.read(key: 'token'));
 //    print(iys);
 //  }

 @override
 onInit()  {
 // clerestorage();

    isAuth();
    //  super.onInit();
    }


 splash() async {
    try {
      loading.value = true;

    }
    finally {
      loading.value = false;
    }
    update();
  }

Future readStorage(String storageName) async {
  return await storage.read(key: storageName);
}

Future <String>getToken() async{
  final storage = new FlutterSecureStorage();
 return  await Future.sync(()  async =>  token.value = (await storage.read(key: 'token'))!);}
Future <String>getRole() async{
  final storage = new FlutterSecureStorage();
 return  await Future.sync(()  async =>  role.value = (await storage.read(key: 'role'))!);}
  Future <String>getWrite_info() async{
  final storage = new FlutterSecureStorage();
 return  await Future.sync(()  async =>  write_info.value = (await storage.read(key: 'write_info'))!);}


Future<void> isAuth() async {

  getToken().then((value){
  token.value=value;



  });
  getRole().then((value) {
    role.value = value;
  //  print(value );
  });

  getWrite_info().then((value) {
    write_info.value = value;
   // print(value );
  });

  Timer(
      Duration(seconds: 3),
          () {
        if(   token.value.isEmpty )
          Get.offAllNamed(Routes.Signup);

        else if(write_info.value=='lsa' &&  token.value.isNotEmpty )
          Get.offAllNamed( Routes.Add_profile_Screen);
        else   if(   token.value.isNotEmpty && write_info.value=='tm' && role.value=='2')
              Get.offAllNamed(Routes.Await_Screen);
         else if( token.value.isNotEmpty && write_info.value=='tm' && role.value=='3')
           Get.offAllNamed( Routes.button,);

      }
  );

  }
}
