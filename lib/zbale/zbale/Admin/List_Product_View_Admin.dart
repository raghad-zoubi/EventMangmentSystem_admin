// import 'package:auth/My_All/logic/controllers/Delete_product_Controller.dart';
// import 'package:auth/My_All/logic/controllers/List_Product_Controller_Admin.dart';
// import 'package:auth/My_All/zbale.zbale.pages/Admin/Show_Detil_View_Admin.dart';
// import 'package:auth/My_All/routes/app_pages.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import 'Show_Detil_View_Admin.dart';
//
// class ListProductView_My extends StatelessWidget {
//   var controller = Get.put(ProductController_My());
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: ' ListProductView_My',
//         theme: ThemeData(
//             appBarTheme: AppBarTheme(
//               color: Colors.deepPurple,
//             )),
//         home: Scaffold(
//           // debugShowCheckedModeBanner: false,
//           appBar: AppBar(
//             title: Text("ListProductView_My"),
//           ),
//           body: Column(children: [
//             Expanded(child: Obx(() {
//               return controller.postloading.value
//                   ? const Center(
//                 child: CircularProgressIndicator(),
//               )
//                   : Center (
//                   child:ListView.builder(
//                   itemCount: controller.product.length,
//                   itemBuilder: (context, index)
//               {
//                 var item = controller.product[index];
//                 return Card(
//                   child: Container(
//                       child: Column(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             TextButton(
//                               onPressed: () =>
//                               {
//                                 print(item.id),
//                                 Get.offAllNamed(Routes.ShowDetil_My,
//                                     arguments: {"id": '${item.id}'}),
//                               },
//                               child: ListTile(
//
//                                 title: Text(item.name),
//                                 subtitle: Text(item.image_path),
//                                 leading: Text(item.zbale.views.toString()),
//                               ),
//                             ),
//                             RaisedButton(onPressed: () {
//                              var  controller=   Get.put(Delete_ProductController());
//
//                              controller.dodelete(item.id);
//
//                              Get.offAndToNamed(Routes.showmyproduct);
//                             },
//                                 child: Icon(
//                                   Icons.delete, color: Colors.deepPurple,)),
//
//                           ])
//                     //
//
//                   ),
//                 );
//               }),
//                );
//             })),
//           ]),
//
//
//           floatingActionButton: FloatingActionButton(
//             heroTag: FloatingActionButtonLocation.centerFloat,
//             backgroundColor: Colors.deepPurple,
//             child: Icon(Icons.add),
//             onPressed: () {
//               Get.toNamed(Routes.addnewproduct);
//             },
//           ),
//
//         )
//
//
//     );
//   }
// }
//
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// //
// // ListView.builder(
// //                 itemCount: controller.product.length,
// //                 itemBuilder: (context, index) {
// //                   var item = controller.product[index];
// //                   return  Card(
// //
// //                   child: (
// //                       Row(children: [
// //                    TextButton(
// //                       onPressed: () => {
// //                         print(item.id),
// //                         Get.offAllNamed( Routes.ShowDetil_My ,
// //                             arguments: {"id": '${item.id}'}),
// //                       },
// //
// //                       //   child:  Text('title'),
// //                       // ),
// //                       child: ListTile(
// //                         title: Text(item.name),
// //                         subtitle: Text(item.image_path),
// //                         leading: Text(item.zbale.views.toString()),
// //                       ),
// //                     ),
// //
// //                 //
// //                 //   ElevatedButton(
// //                 // onPressed: () {
// //                 //   var controller = Get.put(Delete_ProductController());
// //                 //
// //                 //   controller.dodelete(item.id);
// //                 // },
// //                 // child:Icon(Icons.delete),),
// //                       ]
// //
// //                   )
// //
// //
// //                   ) );
// //                 });
// //           }))
// //         ],
// //       ),
// //       //body: Container(),
// // //       floatingActionButton: FloatingActionButton(
// // //         heroTag: FloatingActionButtonLocation.centerFloat,
// // //         backgroundColor: Colors.deepPurple,
// // //         child: Icon(Icons.add),
// // //         onPressed: () {Get.toNamed(Routes.addnewproduct);},
// // //       ),
// // //     )  );
// // //
// // //   }
// // // }
