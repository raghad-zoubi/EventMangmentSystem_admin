import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lara_push_noti/logic/controllers/Book/Order_Controller.dart';
import 'package:lara_push_noti/routes/app_pages.dart';

import 'package:lara_push_noti/Screen/const/button.dart';

import 'BookDetailsData.dart';

Color colorOne = Colors.teal;
Color? colorTwo = Colors.teal[300];
Color? colorThree = Colors.teal[100];

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.70,
        size.width * 0.17, size.height * 0.90);
    path.quadraticBezierTo(
        size.width * 0.20, size.height, size.width * 0.25, size.height * 0.90);
    path.quadraticBezierTo(size.width * 0.40, size.height * 0.40,
        size.width * 0.50, size.height * 0.70);
    path.quadraticBezierTo(size.width * 0.60, size.height * 0.85,
        size.width * 0.65, size.height * 0.65);
    path.quadraticBezierTo(
        size.width * 0.70, size.height * 0.90, size.width, 0);
    path.close();

    paint.color = colorThree!;
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height * 0.50);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.80,
        size.width * 0.15, size.height * 0.60);
    path.quadraticBezierTo(size.width * 0.20, size.height * 0.45,
        size.width * 0.27, size.height * 0.60);
    path.quadraticBezierTo(
        size.width * 0.45, size.height, size.width * 0.50, size.height * 0.80);
    path.quadraticBezierTo(size.width * 0.55, size.height * 0.45,
        size.width * 0.75, size.height * 0.75);
    path.quadraticBezierTo(
        size.width * 0.85, size.height * 0.93, size.width, size.height * 0.60);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = colorTwo!;
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.55,
        size.width * 0.22, size.height * 0.70);
    path.quadraticBezierTo(size.width * 0.30, size.height * 0.90,
        size.width * 0.40, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.52, size.height * 0.50,
        size.width * 0.65, size.height * 0.70);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.85, size.width, size.height * 0.60);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = colorOne;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}

class BookDetails_Screen extends StatelessWidget {
  var x = 3;

  var controller = Get.put(Book_Order_Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.grey[300],

     //   appBar: RoundedAppBar(),






        body: SafeArea(child:

          //   Column(children: [
          Obx(() {
            return controller.postloading.value
                ? const Center(
              child: CircularProgressIndicator(),
            )
                :

            ListView(children: [

            Container(
              margin: EdgeInsets.only( left: 34,bottom: 0),

              child:
              Container(
                  width: double.infinity,
             //height: MediaQuery.of(context).size.height / 1.4,
                  child:

                  // Column(children: [

                  controller.postloading.value
                      ? const Center(
                    child: CircularProgressIndicator(),

                  )

                      :
                  BookDetilsData(


                //    name:controller.ditils.value[0].name.toString()??"3",
                   // date:controller.ditils.value[0].date.toString()??"3",
                    id:controller.ditils.value[0].id.toString()??"3",
                    // quantity:controller.ditils.value[0].quantity.toString()??"3",
                    // time:controller.ditils.value[0].time.toString()??"3",
                    // user_location:controller.ditils.value[0].user_location.toString()??"3",
                    // size:controller.ditils.value[0].size.toString()??"3",
                    // notes:controller.ditils.value[0].notes.toString()??"3",
             //       status:controller.ditils.value[0].status.toString()??"3",
                    customer_id:controller.ditils.value[0].customer_id.toString(),
                    service_id:controller.ditils.value[0].service_id.toString(),


                    // id: "7",
                   quantity: "12",
                     date: "2020-03-02",
                    time: "00:00:10",
                    user_location: "llll",
                   size: "0",
                     notes: "0",
                    status: "1",
                    // customer_id: "2",
                    // service_id: "8",
                   name: "name",
                    kind:controller.kind.value,

                  )),
            ),


            ],)  ;
          })
   ));
  }
}
