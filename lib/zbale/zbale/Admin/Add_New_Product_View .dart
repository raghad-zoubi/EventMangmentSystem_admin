// import 'dart:io';
//
// import 'package:auth/My_All/logic/controllers/Add_My_Product_Controller.dart';
// import 'package:auth/My_All/routes/app_pages.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
//
// class AddNewProductsView extends StatelessWidget {
//   var controller = Get.put(Show_MyProductController());
//
//   var id;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: ' AddNewProductsView',
//         theme: ThemeData(
//             appBarTheme: AppBarTheme(
//           color: Colors.deepPurple,
//         )),
//         home: Scaffold(
//             // debugShowCheckedModeBanner: false,
//             appBar: AppBar(
//               title: Text("products"),
//             ),
//             body: SingleChildScrollView(
//                 child: Column(
//               children: [
//                 GetX<Show_MyProductController>(
//                     builder: (c) => Center(
//                         child: c.category.isEmpty
//                             ? const Center(child: CircularProgressIndicator())
//                             : GetX<Show_MyProductController>(
//                                 builder: (c) => Center(
//                                     child: c.category.isEmpty
//                                         ? const CircularProgressIndicator()
//                                         : GetBuilder<Show_MyProductController>(
//                                             builder: (controller) {
//                                             return Column(children: [
//                                               // const Text("Select author",
//                                               //
//                                               const SizedBox(height: 10.0),
//                                               DropdownButton<String>(
//                                                   hint: const Text(
//                                                     "all category",
//                                                     style: TextStyle(
//                                                         fontSize: 20,
//                                                         color:
//                                                             Colors.deepPurple),
//                                                     //       c.category.elementAt(1).category,
//                                                   ),
//                                                   value:
//                                                       controller.selectedValue,
//                                                   onChanged: (newValue) {
//                                                     controller
//                                                         .onSelected(newValue!);
//
//                                                     for (var point in controller
//                                                         .category) {
//                                                       if (point.name ==
//                                                           "${newValue}") {
//                                                         //   print("${ point.id}");
//                                                         controller.category_id =
//                                                             point.id;
//                                                         //   print(")))))))))))))))))))))))))))))))))))))))");
//
// //                                                          print("${ controller.category_id}");
//                                                       }
//                                                     }
//                                                   },
//                                                   elevation: 10,
//                                                   items: [
//                                                     for (var data in c.category)
//                                                       DropdownMenuItem(
//                                                         child: Text(
//                                                           "${data.name}",
//                                                         ),
//                                                         value: data.name,
//                                                       )
//                                                   ]),
//                                             ]);
//                                           }))))),
//                 const SizedBox(height: 5),
//                 //name
//                 TextFormField(
//                   controller: controller.name_Controller,
//                   validator: (v) {},
//                   onSaved: (v) {
//                     controller.name = v!;
//                   },
//                   keyboardType: TextInputType.text,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     labelText: "name",
//                     prefixIcon: const Icon(Icons.nature_sharp,color:Colors.deepPurple),
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 //image_path
//     //             Text(controller.image_path_Controller.value==''?'':
//     // controller.image_path,
//     // style: TextStyle(fontSize: 20),
//     // ),
//     RaisedButton(onPressed: (){
//     controller.getImage(ImageSource.camera);
//     },
//     child: Text("Camera"),
//     ),
//     RaisedButton(onPressed: (){
//     print("yyyyyyyyyyyyyyup[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[");
//     controller.getImage(ImageSource.gallery);
//     },
//     child: Text("Gallery"),
//     ),
//             //     TextFormField(
//             //     controller: controller.image_path_Controller.value              // Obx(()=>
//             //       //     Text(controller.image_path_Controller.value==''?'':
//             //       //     ),),
//             //
//             //
//             //       validator: (v) {},
//             //             onSaved: (v) {
//             //       controller.selectedImageSize.value = v!;
//             //
//             //       //       controller: //controller.selectedImageSize.value==''?'';
//             // //       controller.image_path_Controller,
//             // //       validator: (v) {},
//             // //       onSaved: (v) {
//             // // controller.selectedImageSize.value = v!;
//             // //       },
//             // //
//             // //       //  keyboardType: TextInputType.emailAddress,
//             // //       decoration: InputDecoration(
//             // //         border: OutlineInputBorder(
//             // //           borderRadius: BorderRadius.circular(5),
//             // //         ),
//             // //         labelText: "image",
//             // //         prefixIcon: const Icon(Icons.image,color:Colors.deepPurple),
//             //     //  ),
//             //     ),
//                 const SizedBox(height: 5),
//                 //phone_number
//                 TextFormField(
//                   controller: controller.phone_number_Controller,
//                   validator: (v) {},
//                   onSaved: (v) {
//                     controller.phone_number = v!;
//                   },
//                   keyboardType: TextInputType.visiblePassword,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     labelText: "phone_number",
//                     prefixIcon: const Icon(Icons.phone,color:Colors.deepPurple),
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 // price
//                 TextFormField(
//                   controller: controller.price_Controller,
//                   validator: (v) {
//                     //return controller.validatePassword(v!);
//                   },
//                   onSaved: (v) {
//                     controller.price = v as int;
//                   },
//                   keyboardType: TextInputType.number,
//                   //  obscureText: true,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     labelText: "price",
//                     prefixIcon: const Icon(Icons.price_check,color:Colors.deepPurple),
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 //fiften
//                 TextFormField(
//                   controller: controller.fifteen_Controller,
//                   validator: (v) {},
//                   onSaved: (v) {
//                     controller.fifteen = v as double;
//                   },
//                   keyboardType: TextInputType.visiblePassword,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     labelText: "fifteen",
//                     prefixIcon: const Icon(Icons.star,color:Colors.deepPurple ,),
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 //therty
//                 TextFormField(
//                   controller: controller.therty_Controller,
//                   validator: (v) {},
//                   onSaved: (v) {
//                     controller.therty = v! as double;
//                   },
//                   keyboardType: TextInputType.visiblePassword,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     labelText: "therty",
//                     prefixIcon: const Icon(Icons.star,color:Colors.deepPurple),
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 //quantity
//                 TextFormField(
//                   controller: controller.quantity_Controller,
//                   validator: (v) {},
//                   onSaved: (v) {
//                     controller.quantity = v as int;
//                   },
//                   keyboardType: TextInputType.visiblePassword,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     labelText: "quantity",
//                     prefixIcon: const Icon(Icons.star,color:Colors.deepPurple),
//                   ),
//                 ),
//                 const SizedBox(height: 5),
//                 // expration_date
//                 TextFormField(
//                   controller: controller.expration_date_Controller,
//                   validator: (v) {},
//                   onSaved: (v) {
//                     controller.expration_date = v as DateTime;
//                   },
//                   keyboardType: TextInputType.visiblePassword,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     labelText: "expration_date",
//                     prefixIcon: const Icon(Icons.date_range,color:Colors.deepPurple),
//                   ),
//                 ),
//
//
//                 const SizedBox(height: 5),
//
//
//               ], //children
//             )),
//           floatingActionButton: FloatingActionButton(
//           heroTag: FloatingActionButtonLocation.centerFloat,
//           backgroundColor: Colors.deepPurple,
//           child: Icon(Icons.add_link),
//           onPressed: () {   controller.donewproduct();
//           controller.postloading == true
//               ? Get.offAllNamed(Routes.showmyproduct)
//               : const Center(child: CircularProgressIndicator());},
//         ),
//         )
//     );
//   }
// }
