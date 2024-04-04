import 'package:flutter/material.dart';
import 'package:lara_push_noti/logic/controllers/auth/SplashController.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/logic/controllers/auth/SplashController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SplashScren  extends StatelessWidget {

final storage = const FlutterSecureStorage();
var controller = Get.put(SplashController());
@override
Widget build(BuildContext context) {
  return
    SizedBox(
        height: MediaQuery.of(context).size.height / 6,
        child: Scaffold(
            body:
            Column(
                children: [
                  Expanded(child:
                  Obx(()
                  {
                    return controller.loading.value
                        ? Center(
                      child:           Container(
                        decoration: BoxDecoration(
                        ),
                      )
                      ,
                    )
                        :
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(0.0, -1.0),
                          end: Alignment(0.0, 0.972),
                          colors: [
                            const Color(0xa805707d),
                            const Color(0xad057580),
                            const Color(0xf7067c84),
                            const Color(0xf7043653),
                            const Color(0xd4043d57),
                            const Color(0xfc089c8b),
                            const Color(0xfc089c8b),
                            const Color(0xff087d70),
                            const Color(0xc20aaba1),
                            const Color(0xfc0ba2ac),
                            const Color(0xff099e99),
                            const Color(0xfa0cc0ad),
                            const Color(0xff0dcfb5)
                          ],
                          stops: [
                            0.0,
                            0.0,
                            0.0,
                            0.0,
                            0.067,
                            0.627,
                            0.998,
                            0.998,
                            1.0,
                            1.0,
                            1.0,
                            1.0,
                            1.0
                          ],
                        ),
                      ),
                    )
                    ;
                  }))])));

}
}