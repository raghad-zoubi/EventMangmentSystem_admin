//
// import 'package:auth/My_All/logic/controllers/Comments_Prodct_Controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class ff extends StatelessWidget {
//   var id2;
//
//   ff({required this.id2});
//
//    var controller = Get.put(CommentProductController());
//
//   @override
//   Widget build(BuildContext context) {
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
//                       builder: (_, CommentProductController) =>
//                             Column(
//                                 children: [
//                                   Icon(
//                                     Icons.remove,
//                                     color: Colors.grey[600],
//                                   ),
//                                   Expanded(child:
//                                   Column(children: [
//                                     Expanded(child: Obx(() {
//                                       var getloading;
//                                       return controller.getloading.value
//                                           ? Center(
//                                         child: CircularProgressIndicator(),
//                                       )
//                                           :
//                                       ListView.builder(
//
//                                         itemCount: 100,
//                                         itemBuilder: (_, index) {
//                                           return Card(
//                                             child: Padding(
//                                               padding: EdgeInsets.all(8),
//                                               child: Text(
//                                                   "Element at index($index)"),
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
// }