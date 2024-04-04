// import 'dart:io';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:comment_box/comment/comment.dart';
//
// import 'package:image_picker/image_picker.dart';
// import 'package:lara_push_noti/Screen/const/function.dart';
// import 'package:lara_push_noti/database/models/Home/Detils_Model.dart';
// import 'package:lara_push_noti/logic/controllers/Home/Detlis_Contoller.dart';
// import 'package:rating_dialog/rating_dialog.dart';
// import 'package:shera/bushra/config/server_config.dart';
// import 'package:shera/bushra/modules/drawer/companies/company_detils/company_details.dart';
// import 'package:shera/bushra/modules/home/home_screen.dart';
// import 'package:shera/bushra/modules/nav_bar/services/booked/Booked_Screen.dart';
// import 'package:shera/bushra/modules/nav_bar/services/order/Order_Screen.dart';
// import 'package:shera/raghad/const/function.dart';
// import 'package:shera/raghad/database/Model/Images_Model.dart';
//
// import '../../../../../raghad/database/models/Home/Detils_Model.dart';
// import '../one/Detils_one_Screen.dart';
// import 'Detlis_two_Contoller.dart';
//
// class Detils_Two_Screen extends StatefulWidget {
// //  bool value=false;
//   static const routeName = 'Detils_Two_Screen';
//
//   // const Detils_Two_Screen({Key? key}) : super(key: key);
//
//   @override
//   State<Detils_Two_Screen> createState() => _Detils_Two_ScreenState();
// }
//
// class _Detils_Two_ScreenState extends State<Detils_Two_Screen> {
//   final formKey = GlobalKey<FormState>();
//   var List_size = [];
//   final TextEditingController commentController = TextEditingController();
//
//   var controller = Get.put(Detilone_Controller());
//   var id2;
//
//   //late Detils_Model ditel3;
//   var images = <Images_Model>[];
//
//   //List<XFile>? imagesfile = [];
//   List<XFile> imagesxfile = [];
//   late dynamic f;
//   List<dynamic>? imagesdynamic = [];
//   ConstFnction constfun = ConstFnction();
//   late DateTime _selectedDate;
//   DateTime now = DateTime.now();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple.shade100,
//       body: SafeArea(
//         child: SizedBox.expand(
//             child: Column(children: [
//           Expanded(
//               flex: 5,
//               child: Obx(() {
//                 return controller.postloading.value
//                     ? Center(
//                         child: CircularProgressIndicator(),
//                       )
//                     : ListView.builder(
//                         scrollDirection: Axis.vertical,
//                         shrinkWrap: true,
//                         itemCount: controller.detils.length,
//                         itemBuilder: (context, index) {
//                           var item = controller.detils[index];
//                           //         ditel3 = controller.detils[index];
//                           id2 = item.id;
//                           return Column(children: [
//                             Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//
//                                 children: [
//
//                                   Container(
//                                       padding: EdgeInsets.only(left: 20),
//                                       margin:  EdgeInsets.only(left: 30),
//                                       decoration: BoxDecoration(
//                                           border: Border.all(
//                                             width: 0,
//                                             color:
//                                             Colors.teal,
//                                           ),
//                                           borderRadius:
//                                           BorderRadius.only(
//                                             bottomLeft:
//                                             Radius.circular(
//                                                 60),
//                                             bottomRight:
//                                             Radius.circular(
//                                                 60),
//
//                                           ),
//                                           color:
//                                           Colors.teal),
//                                       child:
//                                       Center(
//                                           widthFactor: 2,
//                                           heightFactor: 1,
//                                           child:InkWell(child:  constfun.const3(
//                                             item.company_name,
//                                           ),
//                                             onTap: (){
//                                               //profil company
//
//
//                                             },)
//                                       )),
//                                   Row(
//                                       mainAxisAlignment:
//                                       MainAxisAlignment.end,
//                                       children: <Widget>[
//
//
//                                         Column(
//                                           children: [
//                                             IconButton(
//                                                 onPressed: () {
//                                                   showDialog(
//                                                       context: context,
//                                                       builder:
//                                                           (_) =>
//                                                           Dialog(
//                                                             backgroundColor:
//                                                             Colors.transparent,
//                                                             child: Container(
//                                                                 height: MediaQuery.of(context).size.height/1.5,
//                                                                 alignment: FractionalOffset.center,
//                                                                 child: Container(
//
//                                                                     decoration: BoxDecoration(
//                                                                       color: Colors.grey.shade200,
//                                                                       border: Border.all(
//                                                                         color: Colors.teal,
//                                                                         width: 2,
//                                                                       ),
//                                                                       borderRadius: BorderRadius.only(
//                                                                           topRight: Radius.circular(50),
//                                                                           bottomLeft: Radius.circular(50),
//                                                                           bottomRight: Radius.circular(50),
//                                                                           topLeft: Radius.circular(50)),
//                                                                     ),
//                                                                     //  color: Colors.white.withOpacity(0.8),
//                                                                     height: MediaQuery.of(context).size.height/3 ,
//                                                                     width: MediaQuery.of(context).size.width*1.5,
//                                                                     child: Column(
//                                                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                                                       mainAxisAlignment: MainAxisAlignment.center,
//                                                                       children: [
//                                                                         Container(
//                                                                           alignment: Alignment.center,
//                                                                           padding: EdgeInsets.only(left: 12, right: 12, top: 5, bottom: 5),
//                                                                           child: //
//                                                                           TextFormField(
//                                                                             controller: controller.expration_date_Controller..text ='${item.expration_date}',
//
//                                                                             keyboardType: TextInputType.datetime,
//                                                                             decoration: InputDecoration(
//                                                                               border: OutlineInputBorder(
//                                                                                 borderRadius: BorderRadius.circular(5),
//                                                                               ),
//                                                                               labelText: "expration_date",
//                                                                               prefixIcon: const Icon(Icons.date_range, color: Colors.teal),
//                                                                             ),
//                                                                           ),
//
//                                                                           // Center(
//                                                                           //   child: Container(
//                                                                           //
//                                                                           //     padding: const EdgeInsets.symmetric(horizontal: 25),
//                                                                           //     //  child: Expanded(
//                                                                           //     child: Row(
//                                                                           //       children: <Widget>[
//                                                                           //         Expanded(child:
//                                                                           //         Container(
//                                                                           //           child: InputDecorator(
//                                                                           //             decoration: InputDecoration(
//                                                                           //               labelText: "expration_date",
//                                                                           //               icon:Icon(Icons.date_range, color: Colors.teal) ,
//                                                                           //               border: OutlineInputBorder(
//                                                                           //                 borderRadius: BorderRadius.circular(5.0),
//                                                                           //               ),
//                                                                           //             ),
//                                                                           //             // child: Icon(Icons.date_range, color: Colors.teal),
//                                                                           //             child: DatePickerWidget(
//                                                                           //
//                                                                           //               looping: false, // default is not looping
//                                                                           //               firstDate: DateTime(1990, 01, 01),
//                                                                           //               lastDate: DateTime(2030, 1, 1),
//                                                                           //               initialDate: DateTime(1991, 10, 12),
//                                                                           //
//                                                                           //               dateFormat: "dd-MMM-yyyy",
//                                                                           //               locale: DatePicker.localeFromString('en'),
//                                                                           //               onChange: (DateTime newDate, _) =>
//                                                                           //               _selectedDate = newDate,
//                                                                           //               pickerTheme: const DateTimePickerTheme(
//                                                                           //                 itemTextStyle:
//                                                                           //                 TextStyle(color: Colors.black, fontSize: 19),
//                                                                           //                 dividerColor: Colors.teal,
//                                                                           //               ),
//                                                                           //             ),
//                                                                           //           ),
//                                                                           //         ),),
//                                                                           //
//                                                                           //         // Expanded(
//                                                                           //         //   child: TextButton(
//                                                                           //         //     onPressed: (){
//                                                                           //         //
//                                                                           //         //       print('current_date: $_selectedDate');
//                                                                           //         //     },
//                                                                           //         //     child: const Text('submit'),
//                                                                           //         //   ),
//                                                                           //         // ),
//                                                                           //       ],
//                                                                           //     ),
//                                                                           //     // ),
//                                                                           //   ),
//                                                                           // ),
//                                                                         ),
//                                                                         Container(
//                                                                             alignment: Alignment.center,
//                                                                             padding: EdgeInsets.only(left: 12, right: 12, top: 5),
//                                                                             child: TextFormField(
//                                                                               controller: controller.discount_Controller..text ='${item.discount}',
//
//                                                                               validator: (v) {},
//
//                                                                               keyboardType: TextInputType.numberWithOptions(),
//
//                                                                               decoration: InputDecoration(
//                                                                                 border: OutlineInputBorder(
//                                                                                   borderRadius: BorderRadius.circular(5),
//                                                                                 ),
//                                                                                 labelText: "discount",
//                                                                                 prefixIcon: const Icon(Icons.discount, color: Colors.teal),
//                                                                               ),
//                                                                             )),
//
//
//                                                                         Align(alignment: Alignment.bottomLeft,child:
//                                                                         Row(
//                                                                           crossAxisAlignment: CrossAxisAlignment.end,
//                                                                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//
//                                                                           children: [
//                                                                             SizedBox(
//                                                                               width: MediaQuery.of(context).size.width /2,
//                                                                               height: 67,
//                                                                             ),
//
//
//                                                                             FloatingActionButton(
//                                                                               //heroTag: "btn3",
//                                                                                 child:Icon(Icons.send_sharp),
//                                                                                 backgroundColor: Colors.teal,
//                                                                                 onPressed: ()
//                                                                                 {
//
//
//                                                                                   controller.addtodiscount(item.id);
//
//
//
//                                                                                 }),
//                                                                           ],
//                                                                         ))
//                                                                       ],
//                                                                     ))),
//                                                           ));
//                                                 },
//                                                 icon: const Icon(
//                                                   Icons.discount,
//                                                   color: Colors.teal,
//                                                   size: 20,
//                                                 ),
//                                                 focusColor:
//                                                 Colors.redAccent,
//                                                 splashRadius: 67,
//                                                 splashColor:
//                                                 Colors.lightGreen,
//                                                 hoverColor:
//                                                 Colors.teal),
//                                             Text(
//                                               "discount",
//                                               style: TextStyle(
//                                                   color: Colors.teal),
//                                             )
//                                           ],
//                                         ),
// //--------------------------------------------------
//                                         Column(
//                                           children: [
//
//                                             IconButton(
//                                                 onPressed: () {
//                                                   print("raghadddddddddddddddaaaaaaaaaaaaddddddddddddddrafgg");
//                                                   print(controller.idhom.value);
//                                                   Get.toNamed(
//                                                       Routes.Update,
//                                                       arguments: {
//                                                         "images":
//                                                         item.images ,
//                                                         "imagesxfile":
//                                                         imagesxfile,
//                                                         "imagesdynamic":
//                                                         imagesdynamic ,
//                                                         "name":
//                                                         "${item.name}",
//                                                         "id":
//                                                         "${item.id}",
//                                                         "company_name":
//                                                         "${item.company_name}",
//                                                         "category_id1":
//                                                         "${controller.idhom.value}",
//                                                         "category_id2":
//                                                         "${item.category_id2}",
//                                                         "price":
//                                                         "${item.price}",
//                                                         "discount":
//                                                         "${item.discount}",
//                                                         "serv_rate":
//                                                         "${item.serv_rate}",
//                                                         "url_image":
//                                                         "${item.images}",
//                                                         "expration_date":
//                                                         "${item.expration_date}",
//                                                         "location":
//                                                         "${item.location}",
//                                                         "description":
//                                                         "${item.description}",
//                                                       });
//                                                 },
//                                                 icon: const Icon(
//                                                   Icons
//                                                       .edit_road_outlined,
//                                                   color: Colors.teal,
//                                                   size: 28,
//                                                 ),
//                                                 focusColor:
//                                                 Colors.redAccent,
//                                                 splashRadius: 67,
//                                                 splashColor:
//                                                 Colors.lightGreen,
//                                                 hoverColor:
//                                                 Colors.teal),
//                                             Text(
//                                               "edit",
//                                               style: TextStyle(
//                                                   color: Colors.teal),
//                                             )
//                                           ],
//                                         ),
//                                       ]),
//
//
//                                   //   SizedBox(width: 10),
//                                 ]),
// //serve rate======================================================================================
//                             Container(
//                               child: Column(children: [
//                                 Row(
//                                     mainAxisAlignment:
//                                     MainAxisAlignment.end,
//                                     children: [
//                                       //Rate
//                                       Container(
//                                         padding: EdgeInsets.only(
//                                             right: 40,top:20),
//                                         child:
//                                         constfun.ColorRatej(
//                                             item.serv_rate),
//                                       )
//                                     ]),
//
//                               ]),
//                             ),
//                           ],);
//                         },
//                 );
//               })),
//             ])),
//       ),
//     );
//   }
//
//
//
//
// }
//
//
//
// Row_color(String name) {
//   var List_aftersplit = name.split(",");
//
//   var col = <Color>[];
//
//   for (String str_col in List_aftersplit) {
//     int value = int.parse(str_col);
//     Color color = Color(value).withOpacity(1);
//
//     col.add(color);
//   }
//
//   return ListView(
//     scrollDirection: Axis.horizontal,
//     children: <Widget>[
//       Padding(
//           padding: EdgeInsets.only(top: 20, bottom: 20, right: 10, left: 10)),
//       for (Color name in col)
//         Container(
//           padding: EdgeInsets.only(top: 25, bottom: 25, right: 2, left: 2),
//           //padding: EdgeInsets.all(20),// or ClipRRect if you need to clip the content
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: name,
//             // inner circle color
//           ),
//
//           child: Center(
//               child: Text(
//             '              ',
//           )),
//         )
//     ],
//   );
// }
//
// Row_size(String size) {
//   print(size);
//   var List_aftersplit = size.split(",");
//   for (String name in List_aftersplit) print(name);
//   return ListView(
//     scrollDirection: Axis.horizontal,
//     children: <Widget>[
//       Padding(padding: EdgeInsets.all(10)),
//       for (String name in List_aftersplit)
//         Container(
//
//             //padding: EdgeInsets.all(20),// or ClipRRect if you need to clip the content
//             decoration: BoxDecoration(
//               border: Border.all(
//                 width: 3,
//                 color: Colors.deepPurple,
//               ),
//               shape: BoxShape.circle,
//               color: Colors.white,
//               // inner circle color
//             ),
//             child: Center(
//               child: Text('  $name  ',
//                   style: TextStyle(
//                     color: Colors.deepPurple,
//                   )),
//             ))
//     ],
//   );
// }
//
//
//
//
// // Widget ee(data) {
// //   var cntroller;
// //   return Column(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       crossAxisAlignment: CrossAxisAlignment.stretch,
// //       children: [
// //
// //         Icon(
// //           Icons.remove,
// //           color: Colors.grey[600],
// //         ),
// //         Expanded(
// //           child: Column(
// //             children: [
// //               Expanded(
// //                 child: Obx(() {
// //                   return controller.getloading.value
// //                       ? Center(
// //                     child: CircularProgressIndicator(),
// //                   )
// //                       : ListView.builder(
// //                     itemCount: controller.comments.length,
// //                     itemBuilder: (context, index) {
// //                       var item =
// //                       controller.comments[index];
// //
// // // var item = controller.comments[index];
// //                       return
// //                         Padding(
// //                           padding: const EdgeInsets.fromLTRB(
// //                               2.0, 8.0, 2.0, 0.0),
// //                           child: ListTile(
// //                             leading: GestureDetector(
// //                               onTap: () async {
// // // Display the image in large form.
// //                                 print("Comment Clicked");
// //                               },
// //                               child: Container(
// //                                 height: 50.0,
// //                                 width: 50.0,
// //                                 decoration: new BoxDecoration(
// //                                     color: Colors.blue,
// //                                     borderRadius: new BorderRadius.all(
// //                                         Radius.circular(50))),
// //                                 child: CircleAvatar(
// //                                   radius: 50,
// //
// // //backgroundImage:
// // //NetworkImage(data[i]['pic'] + "$i")
// //                                 ),
// //                               ),
// //                             ),
// //                             title: Text(
// //                               item.id,
// //                               style: TextStyle(fontWeight: FontWeight.bold),
// //                             ),
// //                             subtitle: Text(item.comment),
// //                           ),
// //                         );
// //                     },
// //                   );
// //                 }),
// //               )
// //             ],
// //           ),
// //         ),
// //         Container(
// //           height: 50,
// //           child: ListTile(
// //             leading: IconButton(
// //               icon: Icon(
// //                 Icons.camera_alt,
// //                 color: Colors.grey.shade600,
// //                 size: 35,
// //               ),
// //               onPressed: () {},
// //             ),
// //             title: Container(
// //               height: 40,
// //               decoration: BoxDecoration(
// //                 borderRadius: BorderRadius.all(
// //                     Radius.circular(10)),
// //                 color: Colors.white,
// //                 border: Border.all(
// //                   color: Colors.grey.shade300,
// //                   width: 1,
// //                 ),
// //               ),
// //               padding: EdgeInsets.only(left: 15),
// //               child:
// //               TextFormField(
// //                 controller: controller.comment_Controller,
// //                 decoration: InputDecoration(
// //                   hintText: " comment..... ",
// // //hintStyle: Themes.subtitle3,
// //                   border: InputBorder.none,
// //                   focusedBorder: InputBorder.none,
// //                   enabledBorder: InputBorder.none,
// //                   errorBorder: InputBorder.none,
// //                   disabledBorder: InputBorder.none,
// //                 ),
// // // style: Themes.bodyText1,
// //                 onChanged: (value) {},
// //               ),
// //             ),
// //             trailing: IconButton(
// //                 icon: Icon(
// //                   Icons.send,
// //                   size: 30.0,
// //                   color: Colors.grey.shade600,
// //                 ),
// //                 onPressed: () {
// //                   if (controller.comment_Controller.text.isEmpty) {
// //                     print("empty message");
// //                   } else {
// // //seeeeeeeeeeeeeeeend
// // // controller.comment_Controller.text.insert(
// // //     0  , {
// // //   "data": 0,
// // //   "message": controller.comment_Controller.text
// // // });
// // //   controller.add_comment(
// // //    //       await services.add_Massage(token:await storage.read(key: 'token')
// // //    //           ,IdConversation: IdConversation,
// // //    //           body:controller.comment_Controller.text);
// // // //   controller.comment_Controller.text,
// // //  );
// //
// //
// //                     controller.comment_Controller.text = '';
// //                   }
// //                   FocusScopeNode currentFocus = FocusScope.of(
// //                       context);
// //                   if (!currentFocus.hasPrimaryFocus) {
// //                     currentFocus.unfocus();
// //                   }
// //                 }),
// //           ),
// //         ),
// //       ]);
// // }