// child: Column(
// children: [
//
//
// Row(
// mainAxisAlignment:
// MainAxisAlignment.end,
// children: <Widget>[
// Column(
// children: [
// IconButton(
// onPressed: () {
// showDialog(
// context: context,
// builder:
// (_) =>
// Dialog(
// backgroundColor:
// Colors.transparent,
// child: Container(
// height: MediaQuery.of(context).size.height/1.5,
// alignment: FractionalOffset.center,
// child: Container(
//
// decoration: BoxDecoration(
// color: Colors.grey.shade200,
// border: Border.all(
// color: Colors.teal,
// width: 2,
// ),
// borderRadius: BorderRadius.only(
// topRight: Radius.circular(50),
// bottomLeft: Radius.circular(50),
// bottomRight: Radius.circular(50),
// topLeft: Radius.circular(50)),
// ),
// //  color: Colors.white.withOpacity(0.8),
// height: MediaQuery.of(context).size.height/3 ,
// width: MediaQuery.of(context).size.width*1.5,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Container(
// alignment: Alignment.center,
// padding: EdgeInsets.only(left: 12, right: 12, top: 5, bottom: 5),
// child: //
// TextFormField(
// controller: controller.expration_date_Controller..text ='${item.expration_date}',
//
// keyboardType: TextInputType.datetime,
// decoration: InputDecoration(
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(5),
// ),
// labelText: "expration_date",
// prefixIcon: const Icon(Icons.date_range, color: Colors.teal),
// ),
// ),
//
// // Center(
// //   child: Container(
// //
// //     padding: const EdgeInsets.symmetric(horizontal: 25),
// //     //  child: Expanded(
// //     child: Row(
// //       children: <Widget>[
// //         Expanded(child:
// //         Container(
// //           child: InputDecorator(
// //             decoration: InputDecoration(
// //               labelText: "expration_date",
// //               icon:Icon(Icons.date_range, color: Colors.teal) ,
// //               border: OutlineInputBorder(
// //                 borderRadius: BorderRadius.circular(5.0),
// //               ),
// //             ),
// //             // child: Icon(Icons.date_range, color: Colors.teal),
// //             child: DatePickerWidget(
// //
// //               looping: false, // default is not looping
// //               firstDate: DateTime(1990, 01, 01),
// //               lastDate: DateTime(2030, 1, 1),
// //               initialDate: DateTime(1991, 10, 12),
// //
// //               dateFormat: "dd-MMM-yyyy",
// //               locale: DatePicker.localeFromString('en'),
// //               onChange: (DateTime newDate, _) =>
// //               _selectedDate = newDate,
// //               pickerTheme: const DateTimePickerTheme(
// //                 itemTextStyle:
// //                 TextStyle(color: Colors.black, fontSize: 19),
// //                 dividerColor: Colors.teal,
// //               ),
// //             ),
// //           ),
// //         ),),
// //
// //         // Expanded(
// //         //   child: TextButton(
// //         //     onPressed: (){
// //         //
// //         //       print('current_date: $_selectedDate');
// //         //     },
// //         //     child: const Text('submit'),
// //         //   ),
// //         // ),
// //       ],
// //     ),
// //     // ),
// //   ),
// // ),
// ),
// Container(
// alignment: Alignment.center,
// padding: EdgeInsets.only(left: 12, right: 12, top: 5),
// child: TextFormField(
// controller: controller.discount_Controller..text ='${item.discount}',
//
// validator: (v) {},
//
// keyboardType: TextInputType.numberWithOptions(),
//
// decoration: InputDecoration(
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(5),
// ),
// labelText: "discount",
// prefixIcon: const Icon(Icons.discount, color: Colors.teal),
// ),
// )),
//
//
// Align(alignment: Alignment.bottomLeft,child:
// Row(
// crossAxisAlignment: CrossAxisAlignment.end,
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//
// children: [
// SizedBox(
// width: MediaQuery.of(context).size.width /2,
// height: 67,
// ),
//
//
// FloatingActionButton(
// //heroTag: "btn3",
// child:Icon(Icons.send_sharp),
// backgroundColor: Colors.teal,
// onPressed: ()
// {
//
//
// controller.addtodiscount(item.id);
//
//
//
// }),
// ],
// ))
// ],
// ))),
// ));
// },
// icon: const Icon(
// Icons.discount,
// color: Colors.teal,
// size: 20,
// ),
// focusColor:
// Colors.redAccent,
// splashRadius: 67,
// splashColor:
// Colors.lightGreen,
// hoverColor:
// Colors.deepPurple),
// Text(
// "discount",
// style: TextStyle(
// color: Colors.teal),
// )
// ],
// ),
// //--------------------------------------------------
// Column(
// children: [
//
// IconButton(
// onPressed: () {
// print("raghadddddddddddddddaaaaaaaaaaaaddddddddddddddrafgg");
// print(controller.idhom.value);
// Get.toNamed(
// Routes.Update,
// arguments: {
// "images":
// item.images ,
// "imagesxfile":
// imagesxfile,
// "imagesdynamic":
// imagesdynamic ,
// "name":
// "${item.name}",
// "id":
// "${item.id}",
// "company_name":
// "${item.company_name}",
// "category_id1":
// "${controller.idhom.value}",
// "category_id2":
// "${item.category_id2}",
// "price":
// "${item.price}",
// "discount":
// "${item.discount}",
// "serv_rate":
// "${item.serv_rate}",
// "url_image":
// "${item.images}",
// "expration_date":
// "${item.expration_date}",
// "location":
// "${item.location}",
// "description":
// "${item.description}",
// });
// },
// icon: const Icon(
// Icons
//     .edit_road_outlined,
// color: Colors.teal,
// size: 28,
// ),
// focusColor:
// Colors.redAccent,
// splashRadius: 67,
// splashColor:
// Colors.lightGreen,
// hoverColor:
// Colors.deepPurple),
// Text(
// "edit",
// style: TextStyle(
// color: Colors.teal),
// )
// ],
// ),
// ]),
//
// //==============================================================================================
// Row(children: [
// SizedBox(
// width: MediaQuery.of(context)
// .size
//     .width /
// 13),
// Container(
// height: MediaQuery.of(context)
// .size
//     .height /
// 15,
// width: MediaQuery.of(context)
// .size
//     .width /
// 8,
// decoration: BoxDecoration(
// border: Border.all(
// width: 0,
// color: Colors.teal,
// ),
// borderRadius:
// BorderRadius.only(
// bottomLeft: Radius
//     .circular(390),
// bottomRight:
// Radius.circular(
// 390),
// topLeft:
// Radius.circular(
// 390),
// topRight:
// Radius.circular(
// 390)),
// image: DecorationImage(
// image: AssetImage(
// 'images/userImage1.jpg'),
// // NetworkImage(
// //     '$APIimage' +'uploads/event/1656547865image_picker1467726155365278361.jpg'
// //   //controller.ditils.elementAt(0).url_image.toString() // "images/ist.jpg"
// // ),
// fit: BoxFit.fill)),
// ),
// SizedBox(width: 10),
// constfun.const3(
// item.company_name,
// ),
// ]),
//
// Container(
// child: Column(children: [
// Row(
// mainAxisAlignment:
// MainAxisAlignment.end,
// children: [
// //Rate
// Container(
// padding: EdgeInsets.only(
// right: 33),
// child:
// constfun.ColorRatej(
// item.serv_rate),
// )
// ]),
// // Row(
// //     mainAxisAlignment:
// //     MainAxisAlignment.end,
// //     children: [
// //       Container(
// //           padding: EdgeInsets.only(right: 33),
// //           child:
// //
// //           IconButton(
// //               onPressed: () {},
// //               icon: const Icon(
// //                 Icons.insert_comment_outlined,
// //                 color: Colors.teal,
// //                 size: 33,
// //               ),
// //               focusColor: Colors.redAccent,
// //               splashRadius: 67,
// //               splashColor: Colors.lightGreen,
// //               hoverColor: Colors.deepPurple)
// //       )
// //     ]),
// ]),
// ),
//
// //name
// Row(
// mainAxisAlignment:
// MainAxisAlignment.start,
// children: [
// // paddingOnly(right: 3)  ,
//
// constfun.const2("name:"),
//
// //   Text("name:",style: TextStyle(color: Colors.teal),),
//
// constfun.const1(
// item.name,
// ),
// // SizedBox(width:MediaQuery.of(context).size.width/7),
// ]),
//
// //description
// Row(
// mainAxisAlignment:
// MainAxisAlignment.start,
// children: [
// Container(
// //padding: EdgeInsets.only(right: 33),
// child: constfun
//     .const2("description:"),
// ),
// Flexible(
// child: constfun.const1(
// item.description,
// ),
// )
// ]),
//
// //pirce
// Row(
// mainAxisAlignment:
// MainAxisAlignment.start,
// children: [
// Container(
// //padding: EdgeInsets.only(right: 33),
// child: constfun
//     .const2("price: "),
// ),
// constfun.const1(
// item.price,
// ),
// ]),
// //size
// item.size != 0
// ? Row(
// mainAxisAlignment:
// MainAxisAlignment.start,
// children: [
// Container(
// //padding: EdgeInsets.only(right: 33),
// child: constfun
//     .const2("Size: "),
// ),
// constfun.const1(
// item.size,
// ),
// ])
// : SizedBox(width: 0),
//
// //discount
//
// item.discount != 0
// ? Row(
// mainAxisAlignment:
// MainAxisAlignment.start,
// children: [
// Container(
// //padding: EdgeInsets.only(right: 33),
// child: constfun.const2(
// "discount: "),
// ),
// constfun.const1(
// item.discount,
// ),
// ])
// : SizedBox(width: 0),
//
// //location
// item.location != 0
// ? Row(
// mainAxisAlignment:
// MainAxisAlignment.start,
// children: [
// Container(
// //padding: EdgeInsets.only(right: 33)
// child: constfun
//     .const2("Site: "),
// ),
// constfun.const1(
// item.location,
// ),
// ])
// : SizedBox(width: 0),
//
// //expration_date
// item.expration_date != 0
// ? Row(
// mainAxisAlignment:
// MainAxisAlignment.start,
// children: [
// Container(
// //padding: EdgeInsets.only(right: 33),
// child: constfun.const2(
// "expration_date: "),
// ),
// constfun.const1(
// item.expration_date,
// ),
// ])
// : SizedBox(width: 0),
//
// // constfun.const1(
// // item.id,
// // ),
// //
// //
//
// //  constfun.const1(
// //  item.category_id1,
// //  ),
// //  constfun.const1(
// //  item.category_id2,
// //  ),
// //
// //
// // constfun.const1(
// // item.location,
// // ),
// //
// //
// //
// //
// //  constfun.const1(
// //  item.id,
// //  ),
//
// Row(
// mainAxisAlignment:
// MainAxisAlignment.end,
// children: [
// Container(
// padding: EdgeInsets.only(
// right: 33,
// ),
// width:
// MediaQuery.of(context)
// .size
//     .width /
// 4,
// height:
// MediaQuery.of(context)
// .size
//     .height /
// 17,
// decoration: BoxDecoration(
// color: Colors.teal,
// border: Border.all(
// width: 1,
// color: Colors.teal,
// ),
// borderRadius:
// BorderRadius.only(
// bottomLeft:
// Radius.circular(
// 390),
// //    bottomRight: Radius.circular(390),
// topLeft:
// Radius.circular(
// 390),
// //      topRight: Radius.circular(390)),
// ),
// ),
// child: IconButton(
// onPressed: () {},
// icon: const Icon(
// Icons
//     .insert_comment_outlined,
// color: Colors.white,
// size: 33,
// ),
// focusColor:
// Colors.redAccent,
// splashRadius: 67,
// splashColor:
// Colors.lightGreen,
// hoverColor:
// Colors.deepPurple))
// ]),
// const Divider(
// thickness: 2,
// // thickness of the line
// indent: 30,
// // empty space to the leading edge of divider.
// endIndent: 30,
// // empty space to the trailing edge of the divider.
// color: Colors.teal,
// // The color to use when painting the line.
// height:
// 20, // The divider's height extent.
// ),
// SizedBox(
// height: MediaQuery.of(context)
// .size
//     .height /
// 5,
// )
// ],
// )