import 'package:lara_push_noti/logic/controllers/auth/Await_Controller.dart';
import 'package:lara_push_noti/logic/controllers/auth/SplashController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class AwaitScreen  extends StatelessWidget{
  var controller = Get.put(AwaitController());
  final storage = const FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
          height: MediaQuery.of(context).size.height / 6,
          child:
          Scaffold(

          body:
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Expanded(child:

        //  Obx(() {return
Row(children: [InkWell(
              onTap: () {
          controller.chake_role();

          },
              child:

              Container (
                height: 200,width: 200,
                decoration: BoxDecoration(

                  shape: BoxShape.circle,
                  color: Colors.teal,
                  // inner circle color
                ),
                child:Center(child:  Text("check",style: TextStyle(fontSize: 29,color: Colors.white,),)),)




          ),


],)



          )])));}}
     // return controller.loading.value
