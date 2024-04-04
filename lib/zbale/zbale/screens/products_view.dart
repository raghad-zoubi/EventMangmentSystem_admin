// import 'package:auth/auth_all/logic/controllers/auth_Controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:auth/auth_all/routes/routes.dart';
// import 'package:auth/auth_all/zbale.views/widgets/product_card_widget.dart';
//
//
// class ProductsView extends StatelessWidget {
//
//   final AuthController authController =Get.find();
//   @override
//   Widget build(BuildContext context) {
//         return SizedBox(
//           height: MediaQuery.of(context).size.height/6,
//           child: Scaffold(
//               appBar: AppBar(title: Text("name"),
//                 leading: IconButton(
//                 onPressed: () =>authController.dologout(),
//                   icon: const Icon(Icons.exit_to_app),
//               ),
//               ), // IconButton, AppBar
//
//             body: ListView.builder(
//               itemCount: 20,
//               itemBuilder: (context, index) {
//                 return  InkWell(
//                   onTap: () {
//                     Get.toNamed(AppRoutes.productDetails);
//                   },
//                   child: Container(
//                     padding: const EdgeInsets.all(10),
//                     margin: const EdgeInsets.all(10),
//                     child: const ProductCard(
//                         name: "name", price: "price", time: "time", category: "category"
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         );
//   }
// }