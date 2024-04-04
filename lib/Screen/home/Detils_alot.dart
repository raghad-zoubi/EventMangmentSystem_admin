import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/Screen/const/const_data.dart';
import 'package:lara_push_noti/Screen/const/function.dart';
import 'package:lara_push_noti/database/models/Home/Detils_Model.dart';
import 'package:lara_push_noti/logic/controllers/Home/Detlis_Alot_Contoller.dart';
import 'package:lara_push_noti/routes/app_pages.dart';
import '../../main.dart';
//page 2 after home


var s=0;
Future<String>
_showOptionsMenu(int hiveIndex, var context) async {
  // String value;
  int? selected = await showMenu(
    position: RelativeRect.fromLTRB(60.0, 60.0, 100.0, 100.0),
    context: context,
    items: [
      PopupMenuItem(
        value: 0,
        child: Row(
          children: [
            //   Icon(Icons.edit),
            Text("Cancel"),
          ],
        ),
      ),
      PopupMenuItem(
        value: 1,
        child: Row(
          children: [
            Text("delete"),
            //  TextButton.icon(
            //    onPressed: () {
            // //    return'1';
            //    },
            //    icon: Icon(Icons.delete, color: Colors.teal),
            //    label: Text("Delete", style: TextStyle(color: Colors.teal)),
            //  )
          ],
        ),
      ),
    ],
  );
  if (selected == 0) {
    s=0;
    return '0';
  } else {
    s=1;
    return '1';
  }
}

class Detil_alot_Screen extends GetView<Detilalt_Controller> {
  var controller = Get.put(Detilalt_Controller());
  var idana = 0;

  var ditelsana = <Detils_Model>[];
  ConstFnction constfun = ConstFnction();
  Constdata constdata = Constdata();
  final loginFormKey = GlobalKey<FormState>();
  var id2;

  var images = <Images_Model>[];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Detilalt_Controller>(
        init: Detilalt_Controller(),
        builder: (controller2) {
          return Scaffold(
              body: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: GetBuilder<Detilalt_Controller>(
                      init: Detilalt_Controller(),
                      builder: (controller) {
                        return SafeArea(
                          child: Scaffold(
                              backgroundColor: Colors.grey[300],
                              appBar: AppBar(
                                elevation: 5,
                                backgroundColor: Colors.teal,
                                leading:
                                IconButton(
                                  //padding: EdgeInsets.only(right: 22,left: 22),
                                  onPressed: () {
                                    Get.offAllNamed(Routes.button);
                                  },
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                    size: 29,
                                  ),
                                ),

                              ),
                              body:  Column(children: [
                                Expanded(
                                  child: Column(children: [
                                    Expanded(
                                        flex: 1,
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: constdata.bas_cat
                                                .elementAt(int.parse(
                                                controller.idhome.value))
                                                .sec_cat
                                                .length,
                                            itemBuilder: (context, index) {
                                              var item = constdata.bas_cat
                                                  .elementAt(int.parse(
                                                  controller.idhome.value))
                                                  .sec_cat[index];

                                              return
                                                InkWell(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors
                                                              .teal.shade900,
                                                          width: 2),
                                                      color: item.id ==
                                                          controller
                                                              .Tabbar.value
                                                          ? Colors.teal.shade100
                                                          : Colors.white,
                                                      borderRadius:
                                                      const BorderRadius
                                                          .all(
                                                          Radius.circular(
                                                              7445.0) //                 <--- border radius here
                                                      ),
                                                    ),
                                                    margin:
                                                    const EdgeInsets.only(
                                                        left: 4,
                                                        right: 4,
                                                        top: 5,
                                                        bottom: 1),
                                                    width:
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                        3,
                                                    height:
                                                    MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                        786,
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      '${item.secondcat_name}',
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    ),
                                                  ),

                                                  onTap: () {
                                                    controller.Tabbar.value =
                                                        item.id;
                                                    //index + 1;
                                                    controller
                                                        .changeTabbar(item.id
                                                      // index + 1
                                                    );
                                                    print(
                                                        "controller.Tabbar.value");
                                                    print(controller
                                                        .Tabbar.value);
                                                    print(
                                                        "================================================================");
                                                    print(controller.Tabbar);
                                                    print(
                                                        "================================================================");
                                                    controller.getDetils(
                                                        controller
                                                            .Tabbar.value);
                                                    // print( item.id.toString());
                                                  });
                                            })),

                                    Expanded(
                                        flex: 10,
                                        child:

                                        GridView.builder(
                                            padding:
                                            EdgeInsets.only(top: 22),
                                            gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              mainAxisExtent: 270,
                                              //  mainAxisSpacing:
                                            ),
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                            controller.detilss.length,
                                            itemBuilder: (context, index) {
                                              var item =
                                              controller.detilss[index];
                                              print("item.image.url_image");
                                              print(item.image.url_image);
                                              return Padding(
                                                  padding:
                                                  const EdgeInsets.only(
                                                      left: 5,
                                                      // right: 10,
                                                      bottom: 10,
                                                      top: 0),
                                                  child: Container(
                                                      child:
                                                      InkWell(
                                                        onLongPress: ()async{
                                                          print("pooooooooooooooooooooooooooiiiiiiiiiiiiiiiiii");
                                                          String  p=  await (_showOptionsMenu(controller.detilss[index].id, context)) ;

                                                          if(p=='1')
                                                          {
                                                            print(controller.detilss[index].id);
                                                            controller.delete(controller.detilss[index].id);}


                                                        },
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
                                                                "idhom":'${controller.idcat.value}'
                                                              });
                                                          //offAllNamed
                                                        },
                                                        child:
                                                        Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Stack(children: [  InkWell(
                                                              onLongPress: ()async{
                                                                String  p=  await (_showOptionsMenu(controller.detilss[index].id, context)) ;

                                                                if(p=='1')
                                                                {controller.delete(controller.detilss[index].id);}


                                                              },
                                                              onTap:(){
                                                                // Get.to(ProductDeatil(controller.listpoduct_favorite.elementAt(index).id));

                                                              } ,
                                                              child: Container(
                                                                margin: EdgeInsets.only(right: 5),
                                                                width: MediaQuery.of(context).size.width * 0.6,
                                                                height: 180,
                                                                child: ClipRRect(
                                                                    borderRadius: BorderRadius.circular(20),
                                                                    child: Image
                                                                        .network(

                                                                      "$APIimage" +
                                                                          item.image
                                                                              .url_image,

                                                                      fit: BoxFit
                                                                          .cover,

                                                                    )),

                                                              ),
                                                            ),


                                                              ],),

                                                            Column(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                                //name price rate=====================================================================================
                                                                children: [

                                                                  Row(
                                                                      mainAxisAlignment:
                                                                      MainAxisAlignment.end,
                                                                      children: [
                                                                        // Rate
                                                                        Container(
                                                                          padding: EdgeInsets.only(
                                                                              right: 3),
                                                                          child:
                                                                          constfun.ColorRateb(
                                                                              item.serv_rate),
                                                                        )
                                                                      ]),
                                                                  item.name=='l@a'?
                                                                  SizedBox(height: 0,):
                                                                  Row(
                                                                    crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      SizedBox(width: 20,),
                                                                      Text(
                                                                          item.name,
                                                                          style: TextStyle(
                                                                              color: Colors.black,
                                                                              fontWeight: FontWeight.w500,
                                                                              fontSize: 15)),
                                                                    ],
                                                                  ),
                                                                  item.price=='l@a'?
                                                                  SizedBox(height: 0,):
                                                                  Row(
                                                                    crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      SizedBox(width: 20,),
                                                                      Text(
                                                                          item
                                                                              .price,
                                                                          style: TextStyle(
                                                                              color:
                                                                              Colors.black,
                                                                              fontWeight: FontWeight.w500,
                                                                              fontSize: 15)),
                                                                      Icon(
                                                                        Icons
                                                                            .attach_money,
                                                                        color:
                                                                        Colors.black,
                                                                        size:
                                                                        15,
                                                                      ),

                                                                    ],
                                                                  ),
                                                                ]),




















                                                          ],),
                                                      ))



                                              );
                                              // ]);
                                              //);
                                            })

                                    ),

                                  ]),
                                )
                              ])

                          ),
                        );
                      })));
        });
  }
}

//
// items: [
// CircularMenuItem(
// icon: Icons.delete,
// color: Colors.teal.withRed(45),
// onTap: () {
// //  idana=idana-1;
// print("delete");
// print(controller.detils[idana].name);
// }),
// CircularMenuItem(
// icon: Icons.edit,
// color: Colors.teal.shade200,
// onTap: () {
// //  idana=idana-1;
// Get.toNamed(Routes.Update, arguments: {
// "images": images,
// "name":
// "${controller.detils[idana].name}",
// "id": "${controller.detils[idana].id}",
// "name_company":
// "${controller.detils[idana].company_name}",
// "category_idana":
// "${controller.detils[idana].category_id2}",
// "category_id1":
// "${controller.detils[idana].category_id1}",
// "price":
// "${controller.detils[idana].price}",
// "discount":
// "${controller.detils[idana].discount}",
// "expration_date":
// "${controller.detils[idana].expration_date}",
// "location":
// "${controller.detils[idana].location}",
// "description":
// "${controller.detils[idana].description}",
// "size":
// "${controller.detils[idana].size}",
// });
// }),
//_____________________________
// CircularMenuItem(
// icon: Icons.all_out_sharp,
// color: Colors.teal.withOpacity(0.5),
// onTap: () {
// showDialog(
// context: context,
// builder: (_) => Dialog(
// backgroundColor:
// Colors.transparent,
// child: Container(
// alignment:
// FractionalOffset.center,
// //  height: 80.0,
// padding:
// const EdgeInsets.all(
// 20.0),
// child: Container(
// color: Colors.white
//     .withOpacity(0.8),
// height: MediaQuery.of(
// context)
//     .size
//     .height /
// 3,
// width: MediaQuery.of(
// context)
//     .size
//     .width,
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment
//     .center,
// mainAxisAlignment:
// MainAxisAlignment
//     .center,
// children: [
// Container(
// alignment:
// Alignment
//     .center,
// padding: EdgeInsets
//     .only(
// left: 12,
// right: 12,
// top: 5,
// bottom:
// 5),
// child: //
// TextFormField(
// controller: controller
//     .expration_date_Controller
// ..text =
// '${controller.detils[idana].expration_date}',
// validator:
// (v) {},
// // onSaved: (v) {
// //   controller
// //           .expration_date =
// //       v as Text;
// // },
// keyboardType:
// TextInputType
//     .text,
// decoration:
// InputDecoration(
// border:
// OutlineInputBorder(
// borderRadius:
// BorderRadius
//     .circular(5),
// ),
// labelText:
// "expration_date",
// prefixIcon: const Icon(
// Icons
//     .date_range,
// color: Colors
//     .teal),
// ),
// ),
// ),
// Container(
// alignment:
// Alignment
//     .center,
// padding: EdgeInsets
//     .only(
// left:
// 12,
// right:
// 12,
// top: 5),
// child:
// TextFormField(
// controller: //controller.location_Controller
// controller
//     .discount_Controller
// ..text =
// '${controller.detils[idana].discount}',
// //controller.discount,
// validator:
// (v) {},
// // onSaved: (v) {
// //   controller
// //       .discount = v!;
// // },
// keyboardType:
// TextInputType
//     .numberWithOptions(),
// //TextInputType.visiblePassword,
// decoration:
// InputDecoration(
// border:
// OutlineInputBorder(
// borderRadius:
// BorderRadius.circular(
// 5),
// ),
// labelText:
// "discount",
// prefixIcon: const Icon(
// Icons
//     .disc_full_outlined,
// color: Colors
//     .teal),
// ),
// )),
// Row(
// //crossAxisAlignment: CrossAxisAlignment.end,
// mainAxisAlignment:
// MainAxisAlignment
//     .spaceEvenly,
// children: [
// SizedBox(
// width: MediaQuery.of(
// context)
//     .size
//     .width /
// 2.9,
// ),
// IconButton(
// // onPressed: onPressed, icon: icon, label: label
//
// onPressed:
// () {
// controller2.addtodiscount(controller
//     .detils[
// idana]
//     .id);
// },
// color: Colors
//     .teal
//     .shade500,
// //  backgroundColor: Colors.
// alignment:
// Alignment
//     .bottomLeft,
// icon: Icon(Icons
//     .send_sharp),
// // label: Text("Edite"),
// )
// ],
// )
// ],
// ))),
// ));
//
// // print("add to discount");
// // print(controller.detils[idana ].name);
// }),

//_____________________________

// CircularMenuItem(
//icon: Icons.add_to_photos_rounded,
// color: Colors.teal.withOpacity(0.1),
// onTap: () {
// // print(
// //     "sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
// // print(
// //   controller.idhome.value,
// // );
// // //   print(  controller.detils[idana].category_id1);
// //
// // Get.toNamed(Routes.Add, arguments: {
// //   "category_id1":
// //       //"${controller.detils[idana].category_id1}",
// //       controller.idhome.value.toString()
// //   //  "category_idana": "",
// //   // "price": "",
// //   // "discount": "",
// //   // "serv_rate": "",
// //   // "url_image": "",
// //   // "expration_date": "",
// //   // "location": "",
// //   // "description": "",
// // });
// })
// ],