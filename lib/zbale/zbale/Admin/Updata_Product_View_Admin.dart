// import 'package:auth/My_All/logic/controllers/Add_My_Product_Controller.dart';
// import 'package:auth/My_All/logic/controllers/Updata_My_Product_Controller.dart';
// import 'package:auth/My_All/routes/app_pages.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get.dart';
// import 'package:get/get.dart';
//
// class UpdataProductsView extends GetView<Updata_ProductController> {
//   // var controller = Get.put(Updata_ProductController);
//   //Show_MyProductController());
//
//   var id2;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: ' upyourProductsView',
//       theme: ThemeData(
//           appBarTheme: AppBarTheme(
//         color: Colors.deepPurple,
//       )),
//       home: Scaffold(
//         // debugShowCheckedModeBanner: false,
//         appBar: AppBar(
//           title: Text("products"),
//         ),
//         body: SizedBox.expand(
//             child: Column(children: [
//           // Text("item.name")]));}}
//           Expanded(child: Obx(() {
//              return
//             // controller.getloading.value
//             //     ? Center(
//             //         child: CircularProgressIndicator(),
//             //       )
//             //     :
//             // ListView.builder(
//             //         itemCount: controller.detil2.length,
//             //         itemBuilder: (context, index) {
//             //           var item = controller.detil2[index];
//             //           id2 = item.id;
//             //           print("kkkllllllllllllllllllllllllll");
//             //           print (item.id);
//                      // return
//              Container(
//                           child: Column(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               children: <Widget>[
//                             const SizedBox(height: 20),
//                             // GetX<Updata_ProductController>(
//                             //          //   builder: (c) => Center(
//                             //               // child: GetBuilder<Updata_ProductController>(
//                             //                   builder: (c) {
//                             //                       return Column(children: [
//                             //                         const SizedBox(height: 10.0),
//
//                               TextFormField(
//                                 controller: controller.name_Controller..text=controller.name,
//                                     //'jjj',//controller.name,
//                                 validator: (v) {},
//                                 onSaved: (v) {
//                                   controller.name = v!;
//                                 },
//                                 keyboardType: TextInputType.text,
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(5),
//                                   ),
//                                //   labelText: "name",
//                                   prefixIcon: const Icon(Icons.nature_sharp,color:Colors.deepPurple),
//                                 ),
//                               ),
//                               const SizedBox(height: 5),
//                               //image_path
//                               TextFormField(
//                                 controller: controller.image_path_Controller..text=controller.image_path,
//                                 validator: (v) {},
//                                 onSaved: (v) {
//                                   controller.image_path = v!;
//                                 },
//
//                                 //  keyboardType: TextInputType.emailAddress,
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(5),
//                                   ),
//                                   labelText: "image",
//                                   prefixIcon: const Icon(Icons.image,color:Colors.deepPurple),
//                                 ),
//                               ),
//                               const SizedBox(height: 5),
//                               //phone_number
//                               TextFormField(
//                                 controller: controller.phone_number_Controller..text=controller.phone_number,
//                                 validator: (v) {},
//                                 onSaved: (v) {
//                                   controller.phone_number = v!;
//                                 },
//                                 keyboardType:TextInputType.number,
//                                  //TextInputType.visiblePassword,
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(5),
//                                   ),
//                                   labelText: "phone_number",
//                                   prefixIcon: const Icon(Icons.phone,color:Colors.deepPurple),
//                                 ),
//                               ),
//                               const SizedBox(height: 5),
//                               // price
//                               TextFormField(
//                                 controller: controller.price_Controller..text=controller.price as String ,
//                                 validator: (v) {
//                                   //return controller.validatePassword(v!);
//                                 },
//                                 onSaved: (v) {
//                                   controller.price = v as int;
//                                 },
//                                 keyboardType: TextInputType.number,
//                                 //  obscureText: true,
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(5),
//                                   ),
//                                   labelText: "price",
//                                   prefixIcon: const Icon(Icons.price_check,color:Colors.deepPurple),
//                                 ),
//                               ),
//                               const SizedBox(height: 5),
//                               //fiften
//                               TextFormField(
//                                 controller: controller.fifteen_Controller..text=controller.fifteen as String,
//                                 validator: (v) {},
//                                 onSaved: (v) {
//                                   controller.fifteen = v as double;
//                                 },
//                                 keyboardType: TextInputType.numberWithOptions(),
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(5),
//                                   ),
//                                   labelText: "fifteen",
//                                   prefixIcon: const Icon(Icons.star,color:Colors.deepPurple ,),
//                                 ),
//                               ),
//                               const SizedBox(height: 5),
//                               //therty
//                               TextFormField(
//                                 controller: controller.therty_Controller..text=controller.therty as String,
//                                 validator: (v) {},
//                                 onSaved: (v) {
//                                   controller.therty = v! as double;
//                                 },
//                                 keyboardType: TextInputType.numberWithOptions(),
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(5),
//                                   ),
//                                   labelText: "therty",
//                                   prefixIcon: const Icon(Icons.star,color:Colors.deepPurple),
//                                 ),
//                               ),
//                               const SizedBox(height: 5),
//                               //quantity
//                               TextFormField(
//                                 controller: controller.quantity_Controller..text=controller.quantity as String,
//                                 validator: (v) {},
//                                 onSaved: (v) {
//                                   controller.quantity = v as int;
//                                 },
//                                 keyboardType: TextInputType.number,
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(5),
//                                   ),
//                                   labelText: "quantity",
//                                   prefixIcon: const Icon(Icons.star,color:Colors.deepPurple),
//                                 ),
//                               ),
//                               const SizedBox(height: 5),
//                               // expration_date
//                               TextFormField(
//                                 controller: controller.expration_date_Controller..text=controller.expration_date as String,
//                                 validator: (v) {},
//                                 onSaved: (v) {
//                                   controller.expration_date = v as DateTime;
//                                 },
//                                 keyboardType: TextInputType.datetime,
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(5),
//                                   ),
//                                   labelText: "expration_date",
//                                   prefixIcon: const Icon(Icons.date_range,color:Colors.deepPurple),
//                                 ),
//                               ),
//
//                               // const SizedBox(height: 5),
//                               // Obx(() => controller.postloading.value == true
//                               //     ? const Center(child: CircularProgressIndicator())
//                               //     : const Text("")),
//                               const SizedBox(height: 5),
//
//                             //]);})
//                             //))
//                           ]));
//                    // });
//           }))
//         ])), //children
//
//         floatingActionButton: FloatingActionButton(
//           heroTag: FloatingActionButtonLocation.centerFloat,
//           backgroundColor: Colors.deepPurple,
//           child: Icon(Icons.storage),
//           onPressed: () {
//             controller.upproduct(controller.id);
//
//                controller.postloading == true
//               ?  Get.offAllNamed(  Routes.ShowDetil_My,
//                    arguments: {"id": '${30}'})
//
//             : const Center(child: CircularProgressIndicator());
//
//           },
//         ),
//       ),
//     );
//   }
// }
