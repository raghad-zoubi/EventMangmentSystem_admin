import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/logic/controllers/my/Profile_Contoller.dart';
import '../../database/Profile_Service.dart';
import '../../main.dart';
import '../const/const_data.dart';
import '../const/function.dart';


class profile extends StatelessWidget {
  Profile_Service s= new Profile_Service();
  var controller = Get.put(Profile_Controller());
  final productsFormKey = GlobalKey<FormState>();
  ConstFnction constfun = ConstFnction();
  Constdata constdata = Constdata();
  var id1 = 1;

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      backgroundColor: Colors.teal[50],
      appBar:AppBar(),
      //RoundedAppBar(),





      body: SafeArea(child:


      Obx(() {
        return
          // controller.postloading.value
          //   ? const //Center(child:
          //       CircularProgressIndicator()
          //   : // Center(child:
          ListView.builder(
            //   scrollDirection: Axis.horizontal,
              itemCount: controller.ditils.length,
              itemBuilder: (context, index) {
                var item = controller.ditils[index];
                return// Container(color: Colors.red,);

                  Column(
                      children: [
                        Stack(
                          children: [

                            Row(
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.height / 4,
                                  width: MediaQuery.of(context).size.width / 2,
                                  margin: EdgeInsets.only(
                                      left: 6.0,
                                      top: 12,
                                      bottom: 12,
                                      right: MediaQuery.of(context).size.width / 8),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 4,
                                        color: Colors.teal,
                                      ),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(390),
                                          bottomRight: Radius.circular(390),
                                          topLeft: Radius.circular(390),
                                          topRight: Radius.circular(390)),
                                      image: DecorationImage(
                                        //  image: AssetImage(
                                          image: NetworkImage('$APIimage' +
                                              'uploads/events/' +
                                              controller.ditils
                                                  .elementAt(0)
                                                  .img
                                                  .toString() // "images/ist.jpg"
                                          ),
                                          fit: BoxFit.fill)),
                                ),
                                Column(
                                  children: [
                                    constfun.const3(
                                        controller.ditils.value.elementAt(0).fname),
                                    SizedBox(
                                      height:
                                      MediaQuery.of(context).size.width / 30,
                                    ),
                                    //comp_rate
                                    constfun.ColorRatej(
                                        controller.ditils.elementAt(0).lname),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 30,
                        ),

                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 10,top: 10,bottom: 10)),
                            // Expanded(
                            //   flex: 1,
                            //   child:    ),
                              IconButton(
                                icon: Icon(Icons.description),
                                color: Colors.teal.shade900,
                                iconSize: 33,
                                onPressed: () {},
                              ),
                            Flexible(child:    Text('Description: ',style: TextStyle(
                                color: Colors.teal.shade900,fontSize: 17),

                            ), ),

                            Flexible(child:  Text( ' ${controller.ditils.elementAt(0).mdesc}',style: TextStyle(
                                color: Colors.black,fontSize: 20),

                            ),


                          ),
                          ],
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height / 90,
                        ),

                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                         Padding(padding: EdgeInsets.all(10)),
                            // Expanded(
                            //   flex: 1,
                            //   child:   ),
                            IconButton(
                                icon: Icon(Icons.speed_sharp),
                                color: Colors.teal.shade900,
                                //alignment: Alignment.topRight,
                                iconSize: 33,
                                onPressed: () {},
                              ),

                            // Expanded(
                            //   flex:2,
                            //   child:    ),
                        Flexible(child:   Text('delivery_speed: ',style: TextStyle(
                            color: Colors.teal.shade900,fontSize: 17),

                        ) ) ,
                            Flexible(child:   Text(controller.ditils.elementAt(0).mname,style: TextStyle(
                            color: Colors.black,fontSize: 20),

                        ) ) ,


                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 90,
                        ),

                        Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(padding: EdgeInsets.all(10)),
                            // Expanded(
                            //   flex: 1,
                            //   child:   ),
                            IconButton(
                                icon: Icon(Icons.shutter_speed),
                                color: Colors.teal.shade900,
                                //alignment: Alignment.topRight,
                                iconSize: 33,
                                onPressed: () {},
                              ),


                            Flexible(child:   Text('replay_speed: ',style: TextStyle(
                                color: Colors.teal.shade900,fontSize: 17),

                            ) ) ,


                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 40,
                        ),
                         Divider(
                          thickness: 2,
                          // thickness of the line
                          indent: 100,
                          // empty space to the leading edge of divider.
                          endIndent: 100,
                          // empty space to the trailing edge of the divider.
                          color: Colors.teal,
                          // The color to use when painting the line.
                          height: 17, // The divider's height extent.
                        ),
                        // Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        //   children: [
                        //     SizedBox(
                        //       width: MediaQuery.of(context).size.width / 20 ,
                        //     ),
                        //     IconButton(
                        //       icon: Icon(Icons.fiber_new_rounded),
                        //       color: Colors.teal.shade900,
                        //       iconSize: 33,
                        //       onPressed: () {
                        //         //   s.tjreb();
                        //       },
                        //     ),
                        //     // SizedBox(
                        //     //   width: MediaQuery.of(context).size.width / 80 ,
                        //     // ),
                        //     IconButton(
                        //       icon: Icon(Icons.notifications),
                        //       color: Colors.teal.shade900,
                        //       iconSize: 33,
                        //       onPressed: () {},
                        //     ),
                        //     // SizedBox(
                        //     //   width: MediaQuery.of(context).size.width / 80 ,
                        //     // ),
                        //     IconButton(
                        //       icon: Icon(Icons.date_range),
                        //       color: Colors.teal.shade900,
                        //       iconSize: 33,
                        //       onPressed: () {},
                        //     ),
                        //     SizedBox(
                        //       width: MediaQuery.of(context).size.width / 20 ,
                        //     ),                    ],),

                        SizedBox(
                          height: MediaQuery.of(context).size.height / 10,
                        ),

   // Container(padding:EdgeInsets.all(20),
   //     alignment: Alignment.bottomRight ,
   //   child: IconButton(
   //     icon: Icon(Icons.edit),
   //     color: Colors.teal.shade900,
   //     alignment: Alignment.centerLeft,
   //     iconSize: 33,
   //     onPressed: () {
   //
   //
   //
   //     },
   //   ))



                      ]);



              });})),

      floatingActionButton: FloatingActionButton(onPressed: (){         showDialog(
          context: context,
          builder: (_) =>
              Dialog(
                backgroundColor: Colors
                    .transparent,
                child: Container(
                    alignment: FractionalOffset
                        .center,
                    //  height: 80.0,
                    padding: const EdgeInsets
                        .all(20.0),
                    child: Container
                      (color: Colors.white
                        .withOpacity(0.8)
                        , height: MediaQuery
                            .of(context)
                            .size
                            .height / 3
                        , width: MediaQuery
                            .of(context)
                            .size
                            .width,

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .center,
                          mainAxisAlignment: MainAxisAlignment
                              .center,
                          children: [



                            Row( //crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment
                                  .spaceAround
                              , children: [
                              SizedBox(
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width /
                                    2.9,

                              ),


                              IconButton(
                                // onPressed: onPressed, icon: icon, label: label


                                onPressed: () {
                               //    controller.edite_info_profile();
                                },
                                color: Colors
                                    .teal
                                    .shade500,
                                alignment: Alignment
                                    .bottomLeft,
                                icon: Icon(Icons
                                    .send_sharp),
                                // label: Text("Edite"),


                              )

                            ],)


                          ],)


                    )


                ),
              ));









      },
          child: Icon(Icons.edit,color: Colors.white,size: 33),
  backgroundColor: Colors.teal.shade800,
      )
    );
  }
}


















//
// bool isSwitchedlang = false;
//
//  lang(){return
//   Switch(
//     value: isSwitchedlang,
//     onChanged: (value) {
//
// });}
//
// bool isSwitchedthem = false;
// Widget (){return
//   Switch(
//     value: isSwitchedthem,
//     onChanged: (value) {
//
// });}
// bool isSwitchednot = false;
// f(){return
//   Switch(
//     value: isSwitchednot,
//     onChanged: (value) {
//
// });}
