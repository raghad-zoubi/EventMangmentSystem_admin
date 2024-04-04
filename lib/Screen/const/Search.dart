



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/Screen/const/function.dart';
import 'package:lara_push_noti/database/models/Home/Detils_Model.dart';
import 'package:lara_push_noti/logic/controllers/Home/Detlis_Contoller.dart';

import '../../routes/app_pages.dart';


class Search_Screen extends StatelessWidget {

  int _toggleValue = 0;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text('detils order'),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0))),
          elevation: 5,
          backgroundColor: Colors.teal,
          leading: IconButton(
            //padding: EdgeInsets.only(right: 22,left: 22),
            onPressed: () {
           //   Get.back();

             Get.offAllNamed(Routes.button);
              //      Navigator.push(context, MaterialPageRoute(builder: (context){
              //        return Button();
              //      }
              //  ));

            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 29,
            ),
          ),
    ),





        body: SafeArea(child:

   SingleChildScrollView(child:  Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        //____________________ Start Search
        Padding(
        padding:
        EdgeInsets.only(top: 36, left: 6, right: 6, bottom: 6),
    child: Container(child: Center(child: Text("ytyt"),)),
    ),])))
    )


    ;
  }
}



