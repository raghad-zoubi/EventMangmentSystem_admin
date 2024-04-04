// //
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:lara_push_noti/database/models/Category_Model.dart';
// //
// // class TjrepController extends GetxController {
// //   var isLoading = false.obs;
// //   var tempArray=[];
// //  // var tempArray = <Category_Model>[].obs;
// //
// //  // var  selectedIndex = ''.obs;
// //   var selectedValue='1';
// //   void onSelected(var value) {
// //     selectedValue = value;
// //     update();
// //   }
// //
// //   @override
// //   void onInit() {
// //
// //     super.onInit();
// //   }}
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// //
// // class ChangeListViewBGColor extends GetView<TjrepController> {
// //
// //  // var controller = Get.put(TjrepController());
// //   List<Category_Model> result = [
// //
// //     Category_Model(
// //       name: "Jane Russel",
// //       id: 1,
// //     ),
// //     Category_Model(
// //       name: "Jane Russel",
// //       id: 2,
// //     ),
// //     Category_Model(
// //       name: "Jane Russel",
// //       id: 3,
// //     ),
// //     Category_Model(
// //       name: "Jane Russel",
// //       id: 4,
// //     ),
// //     Category_Model(
// //       name: "Jane Russel",
// //       id: 5,
// //     ),
// //     Category_Model(
// //       name: "Jane Russel",
// //       id: 6,
// //     ),
// //     Category_Model(
// //       name: "Jane Russel",
// //       id: 7,
// //     ),
// //     Category_Model(
// //       name: "Jane Russel",
// //       id: 8,
// //     ),
// //   ];
// //   final List<String> resultr = [
// //     "Item 1",
// //     "Item 2",
// //     "Item 3",
// //     "Item 4",
// //     "Item 5",
// //     "Item 6",
// //     "Item 7",
// //     "Item 8",
// //   ];
// //
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         appBar: AppBar(
// //         title: Text('BG change'),
// //     ),
// //     body:
// //
// //     //GetX<TjrepController>(
// //     GetBuilder<TjrepController>( // specify type as Controller
// //         // intialize with the Controller
// //
// //         init: TjrepController(),
// //      builder: (c) => Center(child:
// //
// //
// //         ListView.builder(
// //         itemCount: result.length,
// //           itemBuilder: (context, index) => Container(
// //           color:
// //           c.selectedValue != null && c.selectedValue== index.toString()
// //          ? Colors.red :
// //             Colors.white,
// //
// //              child: ListTile(
// //                 title: CustomListTile(result[index].name),
// //                 onTap: (){   c.onSelected(index.toString());}
// //
// //
// //
// //                 ),
// //
// //         )
// //
// //     )
// //
// //      ))  );
// //     }
// //   }
// //
// //   class CustomListTile extends StatelessWidget {
// //
// //   var titleName;
// //
// //   CustomListTile(this.titleName);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //   return InkWell(
// //   child: Container(
// //   child: Text(
// //   this.titleName,
// //   style: TextStyle(
// //   fontSize: 20, color: Colors.green, fontWeight: FontWeight.w600),
// //   ),
// //   margin: EdgeInsets.symmetric(vertical: 4),
// //   padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
// //   width: 150,
// //
// //   )
// //   );
// //   }
// //   }
//
//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:lara_push_noti/logic/controllers/Detlis_Contoller.dart';
//
// class Favorite extends StatelessWidget {
//   var check_tap;
//
//   @override
//   Widget build(BuildContext context) {
//     return
// GetBuilder<Detil_Controller>(
// init: Detil_Controller(),
// builder: (controller2) {
// return Directionality(
// textDirection: TextDirection.rtl,
// child: Scaffold(
//
// body: Padding(
// padding: const EdgeInsets.only(top: 8.0),
// child: GetBuilder<Detil_Controller>(
// init: Detil_Controller(),
// builder: (controller) {
// return Column(children: <Widget>[
//
// SizedBox(
// height: 30,
// ),
// Row(children: [
// SizedBox(
// width: MediaQuery.of(context).size.width * 0.5,
// child: InkWell(
// child: Container(
// child: Center(
// child: Column(
// children: [
// Text("المنتجات",
// style:TextStyle(color:
// controller.Tabbar.value == 2
//     ?
//
// Colors.red :
// Colors.white,  ),
// textAlign: TextAlign.center),
//
// ],
// ),
// )),
// onTap: () {
// controller.Tabbar.value = 1;
// controller.changeTabbar(1);
// print(controller.Tabbar.value);
// },
// )),
// SizedBox(
// width: MediaQuery.of(context).size.width * 0.5,
// child: InkWell(
// child: Container(
// child: Center(
// child: Column(
// children: [
// Text("المتاجر",
// style: controller.Tabbar.value == 2
// ? Themes.headline1
//     : Themes.bodyText5,
// textAlign: TextAlign.center),
// Divider(
// thickness:
// controller.Tabbar.value == 2
// ? 3
//     : 1,
// color: controller.Tabbar.value == 2
// ? Themes.color
//     : Colors.grey.shade200,
// )
// ],
// ),
// )),
// onTap: () {
// controller.Tabbar.value = 2;
// controller.changeTabbar(2);
// print(controller.Tabbar);
// },
// ))
// ]),
//
// SizedBox(
// height: 20,
// ),
//
// /////////////////////////////
// controller.Tabbar.value == 2
// ? Flexible(
// child: GridView.builder(
// padding: const EdgeInsets.symmetric(
// horizontal: 10),
// itemCount: 10,
// itemBuilder: (ctx, i) {
// return Container(
// child: Column(
// children: [
// Center(
// child: InkWell(
// onTap: () {
// Get.to(ShopProfile());
// },
// child: CircleAvatar(
// backgroundImage: i == 0
// ? AssetImage(
// "images/shop2.jpg")
//     : i == 1
// ? AssetImage(
// "images/4.jpg")
//     : AssetImage(
// "images/8.jpg"),
// //NetworkImage('https://cdn.pixabay.com/photo/2013/05/11/08/28/sunset-110305_1280.jpg'),
// backgroundColor:
// Colors.red.shade800,
// radius: 45,
// ),
// )),
// Container(
// margin:
// EdgeInsets.only(right: 40),
// child: Row(
// children: [
// InkWell(
// onTap: () {
// Get.to(ShopProfile());
// },
// child: Text('اسم المتجر ',
// style:
// Themes.bodyText1),
// ),
// Icon(
// Icons.star_outline_rounded,
// color: Colors.blue,
// size: 20,
// ),
// ],
// ),
// ),
// Container(
// margin:
// EdgeInsets.only(right: 40),
// child: Row(
// children: const [
// Icon(
// Icons.star,
// color: Colors.yellow,
// size: 15,
// ),
// Icon(
// Icons.star,
// color: Colors.yellow,
// size: 15,
// ),
// Icon(
// Icons.star,
// color: Colors.yellow,
// size: 15,
// ),
// Icon(
// Icons.star,
// color: Colors.yellow,
// size: 15,
// ),
// Icon(
// Icons.star,
// color: Colors.pink,
// size: 15,
// )
// ],
// )),
// ],
// ),
// //   ],
// // ),
// );
// },
// gridDelegate:
// SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 2,
// ),
// ),
// )
//     : Flexible(
// child: GridView.builder(
// padding: const EdgeInsets.symmetric(
// horizontal: 10),
// itemCount: 4,
// itemBuilder: (ctx, i) {
// return Container(
// width: MediaQuery.of(context).size.width *
// 0.5,
// margin: EdgeInsets.all(5),
// padding: EdgeInsets.all(5),
// child: Column(
// crossAxisAlignment:
// CrossAxisAlignment.stretch,
// children: [
// Expanded(
// child: InkWell(
// onTap: () {
// Get.to(ProductDeatil());
// },
// child: Center(
// child: i == 0
// ? Image.asset(
// "images/th.jpg")
//     : i == 1
// ? Image.asset(
// "images/tt.jpg")
//     : i == 3
// ? Image.asset(
// "images/100.jpg")
//     : Image.asset(
// "images/44.jpg"),
// ),
// ),
// ),
// Center(
// child: InkWell(
// onTap: () {
// Get.to(ProductDeatil());
// },
// child: Text(
// 'حقيبة كروشيه',
// style: Themes.bodyText1,
// ),
// ),
// ),
// Container(
// child: Row(
// children: [
// Icon(
// Icons.tag_faces_outlined,
// color: Colors.orange,
// size: 20,
// ),
// SizedBox(
// width: 4,
// ),
// Text(
// '(15 تقييم)',
// style: Themes.subtitle3,
// ),
// ],
// mainAxisAlignment:
// MainAxisAlignment.center,
// )),
// ],
// ),
// );
// },
// gridDelegate:
// SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 2,
// mainAxisSpacing: 50,
// mainAxisExtent: 200,
// ),
// )),
// ]);
// },
// ),
// )));
// });
// }
// }