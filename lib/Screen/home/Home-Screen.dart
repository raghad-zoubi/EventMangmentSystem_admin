import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/Screen/const/const_data.dart';
import 'package:lara_push_noti/Screen/const/function.dart';
import 'package:lara_push_noti/logic/controllers/Home/Saly-Controller.dart';
import 'package:lara_push_noti/routes/app_pages.dart';

import '../../main.dart';
import '../../routes/app_pages.dart';
import '../my/My-Screen.dart';
class HomeScreen extends StatelessWidget {
  var controller = Get.put(SalyController());
  final productsFormKey = GlobalKey<FormState>();
  ConstFnction constfun = ConstFnction();
  Constdata constdata = Constdata();

  var id1 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.teal[50],
        appBar: AppBar(

          elevation: 5,

          backgroundColor: Colors.teal,
        ),
        drawer:  Drawer(child:  ProfileScreen(),) ,
        body: SafeArea(
            child: Obx(() {
          return controller.postloading.value
              ? const Center(
            child: CircularProgressIndicator(),
          )
              : SingleChildScrollView(
            child:


            Container(
              padding: const EdgeInsets.only(
                  left: 36, right: 36),
              height: MediaQuery.of(context).size.height*1.4,child:         Column(children: <Widget>[
              Expanded(
                  flex: 3,
                  child: //Column( children: [
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 10, left: 6, right: 6, bottom: 0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search...",
                          hintStyle:
                          TextStyle(color: Colors.grey.shade600),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey.shade600,
                            size: 20,
                          ),
                          filled: true,
                          fillColor: Colors.teal.shade100,
                          contentPadding: EdgeInsets.only(top: 5),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(700),
                              borderSide: BorderSide(
                                  color: Colors.grey.shade100)),
                        ),
                      ),
                    ),
                  )
              ),
              Expanded(
                  flex: 1,
                  child: //Column( children: [
                  Padding(
                      padding: EdgeInsets.only(
                          top: 0, left: 22, right: 22, bottom: 0),
                      child: Row(
                        children: [

                          Text('offer & saly',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20)),
                        ],
                      ))
                //  ]),
              ),


              Expanded(
                flex: 8,
                child:
                ListView(children: [
                  Column(children: [
                    Container(
                        padding: const EdgeInsets.only(
                            top: 12, right: 10, left: 10, bottom: 0),
                        margin: const EdgeInsets.only(
                            top: 12, right: 10, left: 10, bottom: 22),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 3,
                        child:
                        ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.saly.length,
                            itemBuilder: (context, index) {
                              var item = controller.saly[index];
                              print("item.image.url_image");
                              print(item.image.url_image);
                              return
                                Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        print(
                                            '___________________________________________________________________');
                                        print(
                                            'ITEM ID FOM HOME SCREEN WICH MEAN  ID SALY &&  GO TO DETILS IT');
                                        print(item.id);
                                       Get.toNamed(
                                            Routes.detils,
                                            arguments: {
                                              "id": '${item.id}',
                                              "idhom":'00'
                                            });
                                      },

                                      child: Column(
                                        children: [

                                          Container(
                                            margin:
                                            EdgeInsets.only(left: 10),
                                            padding: EdgeInsets.all(10),
                                            width: MediaQuery.of(context)
                                                .size
                                                .width *
                                                0.5,
                                            height: MediaQuery.of(context)
                                                .size
                                                .height *
                                                0.2,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                color: Colors.black,
                                                width: 2,
                                              ),
                                              borderRadius:
                                              BorderRadius.circular(25),
                                            ),
                                            child:
                                            Image.network(
                                              //  'http://192.168.1.104:8000/uploads/event/1657028687image_picker156439378225231406.jpg',
                                              //  c[0].image.url_image
                                              "$APIimage"+item.image.url_image,



                                              fit: BoxFit.contain,
                                            ),
                                          ),

                                        ],
                                      ),

                                      //  ],
                                      //  ),
                                      // ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 40,left: 15), width: MediaQuery.of(context).size.width * 0.5,
                                      child:
                                      Row(
                                        children: [
                                          Icon(
                                          Icons.tag_faces_outlined,
                                          color: Colors.teal,
                                        ),
                                          Text(item.name,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight:
                                                  FontWeight.w500,
                                                  fontSize: 16)),

                                        ],
                                      ),
                                    ),
                                    Container(
                                      // margin: EdgeInsets
                                      //     .only(
                                      //     right:
                                      //     40),
                                      // width: MediaQuery
                                      //     .of(
                                      //     context)
                                      //     .size
                                      //     .width *
                                      //     0.5,
                                      child: Row(children: [
                                        Text(item.expration_date,
                                            style: TextStyle(
                                              color: Colors.black,
                                            )),
                                        Container(
                                          child: constfun.ColorRateb(
                                              item.serv_rate),
                                          // margin: const EdgeInsets
                                          //     .all(5),
                                        ),
                                      ]),
                                    ),
                                  ],
                                );
                              // ]);
                              //);
                            })
                      ),
                  ]),
                ]),
              ),

//icons home____________________________________________________________________________________________

              Expanded(
                  flex: 1,
                  child: //Column( children: [
                  Padding(
                      padding: EdgeInsets.only(
                          top: 0, left: 22, right: 22, bottom: 0),
                      child: Row(
                        children: [

                          Text('service',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20)),
                        ],
                      ))
                //  ]),
              ),

              Expanded(
                  flex: 20,
                  //   child:
                  // Column(
                  //   children: [
                  //     Container(
                  //         // padding: const EdgeInsets.only(
                  //     top: 0, right: 10, left: 10, bottom: 0),
                  // margin: const EdgeInsets.only(
                  //     top: 0, right: 10, left: 10, bottom: 0),
                  //    width: MediaQuery.of(context).size.width,
                  //  height: MediaQuery.of(context).size.height,
                  // color: Colors. blueGrey.withOpacity(0.4),
                  //teal.withOpacity(0.8),
                  child:
                  GridView.builder(

                      scrollDirection: Axis.vertical,
                      itemCount: constdata.bas_cat.length,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        var item = constdata.bas_cat[index];

                        return
                          Padding(
                          padding: const EdgeInsets.only(
                              left: 36, right: 36),
                          child: InkWell(
                            onTap: () {
                              print(
                                  '____________________________________________________________________________');
                              print(
                                  'ITEM ID FOM HOME SCREEN WICH MEAN CATEGORY1  &&  GO TO CATEGORY2');
                              print(item.id);

                              Get.toNamed(Routes.Detil_alot,
                                  arguments: {
                                    'id': '${item.id}'
                                  });
                            },
                            child:
                            Container(
                                margin: const EdgeInsets.only(
                                    top: 30, bottom: 10),
                                decoration: BoxDecoration(
                                  borderRadius:
                                  const BorderRadius.only(
                                      topLeft:
                                      Radius.circular(
                                          12),
                                      topRight:
                                      Radius.circular(
                                          12),
                                      bottomLeft:
                                      Radius.circular(
                                          12),
                                      bottomRight:
                                      Radius.circular(
                                          12)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black
                                          .withOpacity(0.8),
                                      blurStyle:
                                      BlurStyle.outer,
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset:
                                      const Offset(0, 1),
                                    ),
                                  ],
                                  color: Colors.teal
                                      .withOpacity(0.2),
                                ),
                                width: MediaQuery.of(context)
                                    .size
                                    .width *
                                    3,
                                height: MediaQuery.of(context)
                                    .size
                                    .height /
                                    12,
                                child: Center(
                                  child ://Text('${item.name}'),
                                  Image(
                                    image:
                                    AssetImage(
                                        '${item.BasicImage}'
                                            ''),
                                    fit: BoxFit.contain,
                                    width: MediaQuery.of(context)
                                        .size
                                        .width /
                                        3,
                                    height: MediaQuery.of(context)
                                        .size
                                        .height /
                                        9,
                                  )

                                )),
                          ),

                        )
                        ;
                      })
                //   Center(child: Text("your offer")),
                //     ),
                //
                //   ],
                // )
              ),

            ]),)

          );
        })));
  }
}
