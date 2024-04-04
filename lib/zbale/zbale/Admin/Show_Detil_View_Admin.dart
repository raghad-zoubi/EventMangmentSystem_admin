// import 'package:auth/My_All/database/models/Detils_Product_Model.dart';
// import 'package:auth/My_All/logic/controllers/Comments_Prodct_Controller.dart';
// import 'package:auth/My_All/routes/app_pages.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:auth/My_All/logic/controllers/Detil_Product_Controller.dart';
//
//   Widget ff (var product_id,BuildContext context){
//
//   var controller = Get.put(CommentProductController(product_id));
//
//     return Container(
//
//         child: RaisedButton(
//             child: Icon(Icons.text_snippet,
//                 color: Colors.deepPurple),
//             //const Text('showModalBottomSheet'),
//             onPressed: () {
//               showModalBottomSheet(
//                   context: context,
//                   isScrollControlled: true,
//                   isDismissible: true,
//                   shape: const RoundedRectangleBorder(
//                       borderRadius:
//                       BorderRadius.vertical(top: Radius.circular(16))),
//                   builder: (context) =>
//                       DraggableScrollableSheet(
//                         initialChildSize: 0.4,
//                         minChildSize: 0.2,
//                         maxChildSize: 0.75,
//                         expand: false,
//                         builder: (_, CommentProductController) =>
//                             Column(
//                                 children: [
//                                   Icon(
//                                     Icons.remove,
//                                     color: Colors.grey[600],
//                                   ),
//                                   Expanded(child:
//                                   Column(children: [
//                                     Expanded(child: Obx(() {
//                                       return controller.getloading.value
//                                           ? Center(
//                                         child: CircularProgressIndicator(),
//                                       )
//                                           :
//                                       ListView.builder(
//
//     itemCount: controller.comments.length,
//     itemBuilder: (context, index) {
//     var item = controller.comments[index];
//
//      // var item = controller.comments[index];
//                                           return Card(
//                                             child: Padding(
//                                               padding: EdgeInsets.all(8),
//                                               child:
//                                               Center( child: Column(
//                                                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                                   children: <Widget>[
//                                                   Text(item.value,
//                                                         style: const TextStyle(
//                                                             fontSize: 22,
//                                                             fontWeight: FontWeight.bold,color: Colors.deepPurple))
//                                                   ]))
//
//
//                                             ),
//                                           );
//                                         },
//                                       );
//                                     }
//                                     ),)
//                                   ],
//                                   ),)
//                                 ]
//                             ),)
//               );
//             }));
//
//   }
//
//
//
//
//   class ShowDetilPage_My extends StatelessWidget {
//   var controller = Get.put(Detil_ProductController());
//   var id2;
//   late Detils_ProductModel ditel3;
//
//   @override
//   Widget build(BuildContext context) {
//   return MaterialApp(
//   debugShowCheckedModeBanner: false,
//   theme: ThemeData(
//   appBarTheme: AppBarTheme(
//   color: Colors.deepPurple,
//   )),
//   home: Scaffold(
//   appBar: AppBar(
//   title: Text("ShowDetilPage_My"),
//   ),
//   body: SizedBox.expand(
//   child: Column(children: [
//   Expanded(child: Obx(() {
//   return controller.postloading.value
//   ? Center(
//   child: CircularProgressIndicator(),
//   )
//       : ListView.builder(
//   itemCount: controller.detils.length,
//   itemBuilder: (context, index) {
//   var item = controller.detils[index];
//   ditel3 = controller.detils[index];
//   id2 = item.id;
//   return Container(
//   child: Column(
//   mainAxisAlignment: MainAxisAlignment.spaceAround,
//   children: <Widget>[
//   const SizedBox(height: 20),
//   Center(
//   child: Container(
//   child: FlatButton(
//   onPressed: () => {controller.callpostmethod()},
//   color: Colors.white,
//   padding: EdgeInsets.all(10.0),
//   child: Column(
//   // Replace with a Row for horizontal icon + text
//   children: <Widget>[
//   Icon(
//   '${controller.like.value.last.user_like}' ==
//   '1'
//   ? Icons.add
//       : Icons.visibility_outlined,
//   color: Colors.deepPurple),
//   Text(
//   '${controller.like.value.last.sum_likes}')
//   ],
//   ),
//   ),
//   )),
//   Center(
//   child: Container(
//   child: Text(
//   '${controller.like.value.last.sum_likes}',
//   style: const TextStyle(
//   fontSize: 21,
//   fontWeight: FontWeight.bold)))),
//   Center(
//   child: ff(id2,context),),
//   const SizedBox(height: 20),
//   Center(
//   child: Container(
//   child: Text(
//   '${controller.like.value.last.user_like}',
//   style: const TextStyle(
//   fontSize: 21,
//   fontWeight: FontWeight.bold)))),
//
//   const SizedBox(height: 20),
//
//   Center(
//   child: Container(
//   child: Text(item.phone_number,
//   style: const TextStyle(
//   fontSize: 21,
//   fontWeight: FontWeight.bold)))),
//
//
//   const SizedBox(height: 20),
//   Center(
//   child: Container(
//   child:  Image.network(
//   "http://192.168.1.102:8000/uploads/products/1648808684.jpg",
//       //"${item.image_path}",
//   ),)),
//   const SizedBox(height: 20),
//   Center(
//   child: Container(
//   child: Text('${item.id}',
//   style: const TextStyle(
//   fontSize: 21,
//   fontWeight: FontWeight.bold)))),
//   const SizedBox(height: 20),
//   Center(
//   child: Container(
//   child: Text('${item.zbale.views}',
//   style: const TextStyle(
//   fontSize: 21,
//   fontWeight: FontWeight.bold)))),
//   const SizedBox(height: 20),
//   Center(
//   child: Container(
//   child: Text('${item.category_id}',
//   style: const TextStyle(
//   fontSize: 21,
//   fontWeight: FontWeight.bold)))),
//   const SizedBox(height: 20),
//   Center(
//   child: Container(
//   child: Text('${item.price}',
//   style: const TextStyle(
//   fontSize: 21,
//   fontWeight: FontWeight.bold)))),
//   const SizedBox(height: 20),
//   Center(
//   child: Container(
//   child: Text('${item.therty}',
//   style: const TextStyle(
//   fontSize: 21,
//   fontWeight: FontWeight.bold)))),
//   const SizedBox(height: 20),
//   Center(
//   child: Container(
//   child: Text('${item.fifteen}',
//   style: const TextStyle(
//   fontSize: 21,
//   fontWeight: FontWeight.bold)))),
//   const SizedBox(height: 20),
//   Center(
//   child: Container(
//   child: Text('${item.quantity}',
//   style: const TextStyle(
//   fontSize: 21,
//   fontWeight: FontWeight.bold)))),
//   const SizedBox(height: 20),
//   Center(
//   child: Container(
//   child: Text('${item.saly}',
//   style: const TextStyle(
//   fontSize: 21,
//   fontWeight: FontWeight.bold)),
//   )),
//   const SizedBox(height: 21),
//   ],
//   ));
//   });
//   }))
//   ])),
//
//
//   floatingActionButton:
//   Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
//   FloatingActionButton.extended(
//   onPressed: () {
//   Get.offAllNamed(Routes.showmyproduct);
//   },
//   heroTag: FloatingActionButtonLocation.centerFloat,
//   backgroundColor: Colors.deepPurple,
//   icon: Icon(Icons.arrow_back),
//   label: Text('go_back'),
//   ),
//   FloatingActionButton.extended(
//   onPressed: () {
//   Get.offAllNamed(Routes.updatamyproduct, arguments: {
//   "id": '${id2}',
//   "name": '${ditel3.name}',
//   "category_id": '${ditel3.category_id}',
//   "saly": '${ditel3.saly}',
//   "zbale.views": '${ditel3.zbale.views}',
//   "fifteen": '${ditel3.fifteen}',
//   "image_path": '${ditel3.image_path}',
//   "phone_number": '${ditel3.phone_number}',
//   "expration_date": '${ditel3.expration_date}',
//   "therty": '${ditel3.therty}',
//   "quantity": '${ditel3.quantity}',
//   "category_id": '${ditel3.category_id}',
//   "price": '${ditel3.price}',
//   "user_like": '${ditel3.user_like}',
//   "sum_likes": '${ditel3.sum_likes}',
//   });
//   },
//   icon: Icon(Icons.edit),
//   label: Text('edit'),
//   backgroundColor: Colors.deepPurple,
//   ),
//   ]),
//   ));
//   }
//   }
