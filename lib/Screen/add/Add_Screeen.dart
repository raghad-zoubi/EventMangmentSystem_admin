import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/Screen/const/const_data.dart';
import 'package:lara_push_noti/Screen/const/function.dart';

import 'package:lara_push_noti/logic/controllers/Man'
    'ge/Add_Contoller.dart';

import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';

import 'package:parent_child_checkbox/parent_child_checkbox.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class AddScreen extends StatelessWidget {
  bool value = false;

  var controller = Get.put(Add_Controller());
  late String category, subCategory;
  ColorSwatch _mainColor = Colors.blue;

  ConstFnction constfun = ConstFnction();
  Constdata constdata = Constdata();
  bool lightTheme = false;
  Color currentColor = Colors.amber;
  var colorHistory = <Color>{};

  var set_size_man_woman = <String>{};
  var set_size_Kids = <String>{};
  var list_size_Kids = <String>{};
  var list_size = [];
 var temp_color;
  var set_color = <Color>{};
  String str_size_man_woman = "pop";

  String str_size_Kids = "pop";

  Color str_color = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Add_Controller>(
        init: Add_Controller(),
        builder: (controller2) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: ' Add new Service',
              theme: ThemeData(
                  appBarTheme: const AppBarTheme(
                    color: Colors.teal,
                  )),
              home: Scaffold(
                backgroundColor: Colors.teal[50],
                appBar: AppBar(
                  elevation: 5,
                  backgroundColor: Colors.teal,
                ),
                drawer: Drawer(
                  child: ProfileScreen(),
                ),
// end appBar_________________________________________________________________

                body: SingleChildScrollView(
                    child: GetBuilder<Add_Controller>(
                        init: Add_Controller(),
                        builder: (controller) {
                          return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                  height: MediaQuery.of(context).size.height,
                                  child: Form(
                                      key: controller.productFormkey,
                                      child: Column(children: [

//Text("category___________________________________________________________________________"),

                                        Expanded(
                                          flex: 1,
                                          child:
                                          FutureBuilder(
                                            //  future: _fetchListItems(),
                                              builder: (context,
                                                  AsyncSnapshot snapshot) {
                                                // if (!snapshot.hasData) {
                                                // return Center(child: CircularProgressIndicator());
                                                // } else {
                                                return Container(
                                                    child: ListView.builder(
                                                        scrollDirection:
                                                        Axis.horizontal,
                                                        itemCount: constdata
                                                            .bas_cat.length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          var item = constdata
                                                              .bas_cat[index];
                                                          print("${item.id}");
                                                          category =
                                                              item.name.toString();
                                                          return InkWell(
                                                              child: Container(
                                                                decoration:
                                                                BoxDecoration(
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .teal
                                                                          .shade900,
                                                                      width: 2),
                                                                  color: item.id ==
                                                                      controller
                                                                          .Tabbar0
                                                                          .value
                                                                      ? Colors.teal
                                                                      .shade100
                                                                      : Colors
                                                                      .white,
                                                                  borderRadius:
                                                                  const BorderRadius
                                                                      .all(
                                                                      Radius.circular(
                                                                          7445.0) //                 <--- border radius here
                                                                  ),
                                                                ),
                                                                margin:
                                                                const EdgeInsets
                                                                    .only(
                                                                    left: 4,
                                                                    right: 4,
                                                                    top: 5,
                                                                    bottom: 1),
                                                                width: MediaQuery.of(
                                                                    context)
                                                                    .size
                                                                    .width /
                                                                    3,
                                                                height: MediaQuery.of(
                                                                    context)
                                                                    .size
                                                                    .height /
                                                                    800,
                                                                alignment: Alignment
                                                                    .center,
                                                                child: Text(
                                                                  item.name,
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .teal
                                                                          .shade900),
                                                                ),
                                                              ),
                                                              onTap: () {
                                                                controller.Tabbar0
                                                                    .value =
                                                                    item.id;
                                                                controller
                                                                    .changeTabbar0(
                                                                    item.id);
                                                                print(controller
                                                                    .Tabbar0.value);

                                                                print(controller
                                                                    .Tabbar0);
                                                                controller
                                                                    .condition(item
                                                                    .id
                                                                    .toString());
                                                              });
                                                        }));
                                              }),
                                        ),
//Text("Supcategory___________________________________________________________________________"),

                                        Expanded(
                                          flex:1,
                                          child: FutureBuilder(builder:
                                              (context,
                                              AsyncSnapshot snapshot) {
                                            return Container(
                                                child: ListView.builder(
                                                    padding: EdgeInsets.only(
                                                        left: 7),
                                                    scrollDirection:
                                                    Axis.horizontal,
                                                    itemCount: constdata.bas_cat
                                                        .elementAt(controller
                                                        .idhom.value)
                                                        .sec_cat
                                                        .length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      var item = constdata
                                                          .bas_cat
                                                          .elementAt(controller
                                                          .idhom.value)
                                                          .sec_cat[index];
                                                      print("${item.id}");
                                                      subCategory = item
                                                          .secondcat_name
                                                          .toString();
                                                      return InkWell(
                                                          child: Container(
                                                            decoration:
                                                            BoxDecoration(
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .teal
                                                                      .shade900,
                                                                  width: 2),
                                                              color: item.id ==
                                                                  controller
                                                                      .Tabbar
                                                                      .value
                                                                  ? Colors.teal
                                                                  .shade100
                                                                  : Colors
                                                                  .white,
                                                              borderRadius:
                                                              const BorderRadius
                                                                  .all(
                                                                  Radius.circular(
                                                                      7445.0) //                 <--- border radius here
                                                              ),
                                                            ),
                                                            margin:
                                                            const EdgeInsets
                                                                .only(
                                                                left: 4,
                                                                right: 4,
                                                                top: 5,
                                                                bottom: 1),
                                                            width: MediaQuery.of(
                                                                context)
                                                                .size
                                                                .width /
                                                                3.8,
                                                            height: MediaQuery.of(
                                                                context)
                                                                .size
                                                                .height /
                                                                800,
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                              item.secondcat_name,
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .teal
                                                                      .shade900),
                                                            ),
                                                          ),
                                                          onTap: () {
                                                            controller.Tabbar
                                                                .value =
                                                                item.id;
                                                            controller
                                                                .changeTabbar(
                                                                item.id);
                                                            print(controller
                                                                .Tabbar.value);
                                                            controller.name_category_id2.value=item.secondcat_name.toString();
                                                            print(controller
                                                                .Tabbar);
                                                          });
                                                    }));
                                          }),
                                        ),
//Text("Images___________________________________________________________________________"),
                                        Container(
                                          padding: EdgeInsets.only(
                                              top: 20, bottom: 20),
                                          child: Center(
                                            // child: RaisedButton.icon(
                                            //   shape: RoundedRectangleBorder(
                                            //       borderRadius:
                                            //       BorderRadius.all(
                                            //           Radius.circular(
                                            //               10.0))),
                                            //   onPressed: () {
                                            //     controller.selectImages();
                                            //   },
                                            //
                                            //   label: Text(
                                            //     'Selected Images From Gallary',
                                            //     style: TextStyle(
                                            //         color: Colors.white),
                                            //   ),
                                            //   icon: Icon(
                                            //     Icons.camera_alt,
                                            //     color: Colors.white,
                                            //   ),
                                            //   textColor: Colors.white,
                                            //   splashColor: Colors.red,
                                            //   color: Colors.teal,
                                            // ),
                                          ),
                                        ),

                                        //    image
                                        controller.imageListTemp.isEmpty
                                            ? SizedBox(height: 2)
                                            : Expanded(
                                            flex: 5,
                                            child: Padding(
                                                padding:
                                                const EdgeInsets.only(
                                                    right: 1.0,
                                                    left: 1.0,
                                                    top: 4.0,
                                                    bottom: 8),
                                                child: Center(
                                                  child: ListView.builder(
                                                      itemCount: controller
                                                          .imageListTemp
                                                          .length,
                                                      scrollDirection:
                                                      Axis.horizontal,
                                                      itemBuilder:
                                                          (BuildContext
                                                      context,
                                                          int index) {
                                                        //  controller.rr.value.add(controller.imageListTemp.value[index].path);
                                                        return Center(
                                                            child: Image.file(
                                                                File(controller
                                                                    .imageListTemp
                                                                    .value[
                                                                index]
                                                                    .path),
                                                                fit: BoxFit
                                                                    .fitWidth));
                                                      }),
                                                ))),

//Text("FoRm Text___________________________________________________________________________"),



                                            Form(
                                                key: controller.profileFormkey,
                                                child: Padding(
                                                    padding:
                                                    const EdgeInsets.only(
                                                        right: 4.0,
                                                        left: 4.0,
                                                        top: 10.0,
                                                        bottom: 8.0),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        children: [
                                                          const SizedBox(
                                                              height: 5),

                                                          // name
                                                          Visibility(
                                                            visible:controller.Tabbar0.value!=2&&
                                                                controller.Tabbar0.value!=6&&
                                                                controller.Tabbar0.value!=5?true:false, child:
                                                          Container(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                  left: 12,
                                                                  right: 12,
                                                                  top: 5,
                                                                  bottom:
                                                                  5),
                                                              child:

                                                              TextFormField(
                                                                controller:
                                                                controller
                                                                    .name_Controller,
                                                                //'jjj',//controller.name,
                                                                validator:
                                                                    (v) {},
                                                                // onSaved: (v) {
                                                                // controller.name = v!;
                                                                //  },
                                                                keyboardType:
                                                                TextInputType
                                                                    .text,
                                                                decoration:
                                                                InputDecoration(
                                                                  border:
                                                                  OutlineInputBorder(
                                                                    borderRadius:
                                                                    BorderRadius
                                                                        .circular(5),
                                                                  ),
                                                                  labelText:
                                                                  "name",
                                                                  prefixIcon: const Icon(
                                                                      Icons
                                                                          .crop,
                                                                      color: Colors
                                                                          .teal),
                                                                ),
                                                              )),
                                                          ),

                                                          Visibility(
                                                            visible:controller.Tabbar0.value!=2?true:false, child:   const SizedBox(
                                                              height: 5),
                                                          ),
                                                          // price
                                                          Visibility(//controller.Tabbar0.value==2?true:false,
                                                              visible:true,
                                                              child:   Container(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                      left: 12,
                                                                      right: 12,
                                                                      top: 5,
                                                                      bottom:
                                                                      5),
                                                                  child:
                                                                  TextFormField(
                                                                    controller:
                                                                    controller
                                                                        .price_Controller,
                                                                    //  ..text = controller.price as String,
                                                                    validator: (v) {
                                                                      //return controller.validatePassword(v!);
                                                                    },
                                                                    // onSaved: (v) {
                                                                    //   controller.price = v as int;
                                                                    // },
                                                                    keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                    //  obscureText: true,
                                                                    decoration:
                                                                    InputDecoration(
                                                                      border:
                                                                      OutlineInputBorder(
                                                                        borderRadius:
                                                                        BorderRadius
                                                                            .circular(5),
                                                                      ),
                                                                      labelText:
                                                                      "price",
                                                                      prefixIcon: const Icon(
                                                                          Icons
                                                                              .price_change_outlined,
                                                                          color: Colors
                                                                              .teal),
                                                                    ),
                                                                  )) ,),

                                                          const SizedBox(
                                                              height: 5),
                                                          //location
                                                          Visibility(
                                                            visible:controller.Tabbar0.value!=2&&
                                                                controller.Tabbar0.value!=6&&
                                                                controller.Tabbar0.value!=5?true:false, child:
                                                          Container(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                  left: 12,
                                                                  right: 12,
                                                                  top: 5,
                                                                  bottom:
                                                                  5),
                                                              child:
                                                              TextFormField(
                                                                controller:
                                                                controller
                                                                    .location_Controller,
                                                                //   ..text = controller.location as String,
                                                                validator:
                                                                    (v) {},
                                                                // onSaved: (v) {
                                                                //   controller.location = v!;
                                                                // },
                                                                keyboardType:
                                                                TextInputType
                                                                    .name,
                                                                decoration:
                                                                InputDecoration(
                                                                  border:
                                                                  OutlineInputBorder(
                                                                    borderRadius:
                                                                    BorderRadius
                                                                        .circular(5),
                                                                  ),
                                                                  labelText:
                                                                  "location",
                                                                  prefixIcon: const Icon(
                                                                      Icons
                                                                          .location_on_outlined,
                                                                      color: Colors
                                                                          .teal),
                                                                ),
                                                              )),
                                                          ),
                                                          Visibility(
                                                            visible:controller.Tabbar0.value!=2?true:false, child: const SizedBox(
                                                              height: 5),
                                                          ),
                                                          //description
                                                          Visibility(
                                                            visible:controller.Tabbar0.value!=2 && controller.Tabbar0.value!=3 ?true:false, child:
                                                          Container(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                  left: 12,
                                                                  right: 12,
                                                                  top: 5,
                                                                  bottom:
                                                                  5),
                                                              child:
                                                              TextFormField(
                                                                controller:
                                                                controller
                                                                    .description_Controller,
                                                                //     ..text = controller.description as String,
                                                                validator:
                                                                    (v) {},
                                                                // onSaved: (v) {
                                                                //   controller.description = v!;
                                                                // },
                                                                keyboardType:
                                                                TextInputType
                                                                    .name,
                                                                decoration:
                                                                InputDecoration(
                                                                  border:
                                                                  OutlineInputBorder(
                                                                    borderRadius:
                                                                    BorderRadius
                                                                        .circular(5),
                                                                  ),
                                                                  labelText:
                                                                  "description",
                                                                  prefixIcon: const Icon(
                                                                      Icons
                                                                          .account_balance_wallet_outlined,
                                                                      color: Colors
                                                                          .teal),
                                                                ),
                                                              )),),
                                                          Visibility(
                                                            visible:controller.Tabbar0.value!=2?true:false, child:
                                                          const SizedBox(
                                                              height: 5),),
                                                          //capcity
                                                          Visibility(
                                                              visible:controller.Tabbar0.value!=0?false:true, child:
                                                          Container(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                  left: 12,
                                                                  right: 12,
                                                                  top: 5,
                                                                  bottom:
                                                                  5),
                                                              child:
                                                              TextFormField(
                                                                controller:
                                                                controller
                                                                    .capcity_Controller,
                                                                //     ..text = controller.description as String,
                                                                validator:
                                                                    (v) {},
                                                                // onSaved: (v) {
                                                                //   controller.description = v!;
                                                                // },
                                                                keyboardType:
                                                                TextInputType
                                                                    .visiblePassword,
                                                                decoration:
                                                                InputDecoration(
                                                                  border:
                                                                  OutlineInputBorder(
                                                                    borderRadius:
                                                                    BorderRadius
                                                                        .circular(5),
                                                                  ),
                                                                  labelText:
                                                                  "capcity",
                                                                  prefixIcon: const Icon(
                                                                      Icons
                                                                          .reduce_capacity_outlined,
                                                                      color: Colors
                                                                          .teal),
                                                                ),
                                                              ))),
                                                          Visibility(
                                                            visible:controller.Tabbar0.value!=2?true:false, child:
                                                          const SizedBox(
                                                              height: 5),),
                                                          //Size


                                                        ]))),

// Text("FoRm clothes___________________________________________________________________________"),
                                        Visibility(
                                          visible:controller.Tabbar0.value==2?true:false,
                                          child:  Expanded(
                                              flex:3,
                                              child:
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 2.0,
                                                    left: 2.0,
                                                    top: 2.0),
                                                child: Center(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                    children: <Widget>[
                                                      /** Checkbox Widget **/
                                                      Row(children: [
                                                        Checkbox(
                                                          checkColor: Colors.teal,
                                                          activeColor:
                                                          Colors.white,
                                                          value: controller.Checkbox_Man.value,
                                                          onChanged:
                                                              (bool? value) {
                                                                controller.type.value='2';
                                                          //  controller.change_Checkbox_Man(value!);
                                                                controller.change_Checkbox_Woman(false);
                                                                controller.change_Checkbox_Man(true );
                                                                controller.change_Checkbox_Kids(false);
                                                          },
                                                        ),
                                                        SizedBox(width: 1),
                                                        Text(
                                                          'Man ',
                                                          style: TextStyle(
                                                              fontSize: 13.0,
                                                              color: Colors.teal),
                                                        ),
                                                      ]),

                                                      SizedBox(
                                                          width: 5), //SizedBox
                                                      /** Checkbox Widget **/
                                                      Row(children: [
                                                        Checkbox(
                                                          checkColor: Colors.teal,
                                                          value: controller.Checkbox_Woman.value,
                                                          activeColor: Colors.white,
                                                          onChanged:
                                                              (bool? value) {
                                                            controller.type.value='1';
                                                            print("tyyyyyyyyyyyyyyyyyyyyyype");
                                                            print(controller.type.value);
                                                          //  controller.change_Checkbox_Woman(value!);
                                                                controller.change_Checkbox_Woman(true);
                                                                controller.change_Checkbox_Man(false);
                                                                controller.change_Checkbox_Kids(false);
                                                          },

                                                        ),
                                                        SizedBox(width: 1),
                                                        Text(
                                                          'Woman',
                                                          style: TextStyle(
                                                              fontSize: 13.0,
                                                              color: Colors.teal),
                                                        ),
                                                      ]),
                                                      //Text
                                                      SizedBox(width: 5),
                                                      /** Checkbox Widget **/
                                                      Row(
                                                        children: [
                                                          Checkbox(
                                                            checkColor:
                                                            Colors.teal,
                                                            activeColor: Colors.white,
                                                            value: controller.Checkbox_Kids.value,
                                                            onChanged:
                                                                (bool? value) {
                                                                  controller.type.value='3';
                                                                  print("tyyyyyyyyyyyyyyyyyyyyyype");
                                                                  print(controller.type.value);
                                                             // controller.change_Checkbox_Kids(value!);
                                                                  controller.change_Checkbox_Woman(false);
                                                                  controller.change_Checkbox_Man(false);
                                                                  controller.change_Checkbox_Kids(true );
                                                            },
                                                          ),
                                                          SizedBox(width: 1),
                                                          Text(
                                                            'Kids ',
                                                            style: TextStyle(
                                                                fontSize: 13.0,
                                                                color:
                                                                Colors.teal),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(width: 5), //Text

                                                      /** Checkbox Widget **/
                                                      //Checkbox
                                                    ], //<Widget>[]
                                                  ),
                                                ),
                                              )),
                                        ),

                                        Visibility(
                                          visible:controller.Tabbar0.value==2?true:false,
                                          child:   Expanded(
                                              flex:3,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 4.0,
                                                    left: 4.0,
                                                    top: 2.0),

                                                child:Column(children: [
                                                  Row(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceEvenly,
                                                  children: [
                                                    Column(children: [
                                                      IconButton(
                                                          icon: Icon(
                                                              Icons
                                                                  .donut_small_outlined,
                                                              color: Colors.teal),
                                                          onPressed: () {
                                                            showDialog(
                                                                context: context,
                                                                builder:
                                                                    (_) => Dialog(
                                                                  backgroundColor:
                                                                  Colors.transparent,
                                                                  child: Container(
                                                                      height: MediaQuery.of(context).size.height,
                                                                      alignment: FractionalOffset.center,
                                                                      child: Column(
                                                                        children: [
                                                                          ParentChildCheckbox(
                                                                            parent: Text('Kids'),
                                                                            children: [
                                                                              Text('1'),
                                                                              Text('2'),
                                                                              Text('3'),
                                                                              Text('4'),
                                                                              Text('5'),
                                                                              Text('6'),
                                                                              Text('7'),
                                                                              Text('8'),
                                                                              Text('9'),
                                                                              Text('10'),
                                                                            ],
                                                                            parentCheckboxColor: Colors.teal.shade900,
                                                                            childrenCheckboxColor: Colors.teal.shade200,
                                                                          ),
                                                                          ElevatedButton(

                                                                            child: Text('Get Size'),
                                                                            onPressed: () {   list_size.clear();
                                                                            String str=(ParentChildCheckbox.selectedChildrens.toString());
                                                                            Navigator.of(context)
                                                                                .pop();
                                                                            controller.Size_kids(ParentChildCheckbox.selectedChildrens.toString());
                                                                            String start ='Kids: [';
                                                                            String end =']';
                                                                            final startIndex = str.indexOf(start);
                                                                            final endIndex = str.indexOf(end, startIndex + start.length);
                                                                            String p=(str.substring(startIndex + start.length, endIndex));

                                                                            list_size = p.split(",");
                                                                            },

                                                                          ),
                                                                        ],
                                                                      )),
                                                                ));
                                                          },
                                                          focusColor: Colors.teal,
                                                          splashRadius: 1,
                                                          splashColor:
                                                          Colors.teal,
                                                          hoverColor:
                                                          Colors.teal),
                                                      Text(
                                                        'kids',
                                                        style: TextStyle(
                                                            color: Colors.black),
                                                      )
                                                    ]),
                                                    Column(children: [
                                                      IconButton(
                                                          icon: Icon(
                                                              Icons.donut_small,
                                                              color: Colors.teal),
                                                          onPressed: () {
                                                            showDialog(
                                                                context: context,
                                                                builder:
                                                                    (_) => Dialog(
                                                                  backgroundColor:
                                                                  Colors.transparent,
                                                                  child: Container(
                                                                      height: MediaQuery.of(context).size.height,
                                                                      alignment: FractionalOffset.center,
                                                                      child: Column(
                                                                        children: [
                                                                          ParentChildCheckbox(
                                                                            parent: Text('adults'),
                                                                            children: [
                                                                              Text('M'),
                                                                              Text('S'),
                                                                              Text('XS'),
                                                                              Text('L'),
                                                                              Text('XL'),
                                                                              Text('XXL'),
                                                                              Text('XXXL'),
                                                                              Text('XXXXL'),
                                                                            ],
                                                                            parentCheckboxColor: Colors.teal.shade900,
                                                                            childrenCheckboxColor: Colors.teal.shade200,
                                                                          ),
                                                                          ElevatedButton(
                                                                            child: Text('Get Size'),
                                                                            onPressed: () {
                                                                              list_size.clear();
                                                                              String str=(ParentChildCheckbox.selectedChildrens.toString());
                                                                              Navigator.of(context)
                                                                                  .pop();
                                                                              controller.Size_other(ParentChildCheckbox.selectedChildrens.toString());
                                                                              String start ='adults: [';
                                                                              String end =']';
                                                                              final startIndex = str.indexOf(start);
                                                                              final endIndex = str.indexOf(end, startIndex + start.length);
                                                                              String p=(str.substring(startIndex + start.length, endIndex));

                                                                              list_size = p.split(",");
                                                                            },
                                                                          ),

                                                                        ],
                                                                      )),
                                                                ));
                                                          },

                                                          color: Colors.teal,
                                                          focusColor: Colors.teal,
                                                          splashRadius: 34,
                                                          splashColor:
                                                          Colors.teal,
                                                          hoverColor:
                                                          Colors.teal),
                                                      Text(
                                                        'adults',
                                                        style: TextStyle(
                                                            color: Colors.black),
                                                      )
                                                    ]),
                                                  ],
                                                ),
                                                  Flexible(
                                                      child: ListView(
                                                        itemExtent:50 ,
                                                        scrollDirection: Axis.horizontal,
                                                        children: [
                                                          for (String name in list_size)

                                                            Container(

                                                              child:Text('$name',style: TextStyle(fontSize: 15,color: Colors.black)),
                                                              //   padding: EdgeInsets.all(20),// or ClipRRect if you need to clip the content

                                                              // inner content
                                                            ),




                                                        ],
                                                      )),],)

                                              )),
                                        ),



                                        Visibility(
                                          visible:controller.Tabbar0.value==2?true:false, child:      Expanded(
                                            flex: 3,
                                            child: Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 4.0,
                                                    left: 4.0,
                                                    top: 2.0),
                                                child: Column(
                                                  children: [
                                                    Column(children:[   Container(
                                                        height: 56,
                                                        width: 45,
                                                        child: AnimatedTheme(
                                                          data: lightTheme
                                                              ? ThemeData
                                                              .light()
                                                              : ThemeData
                                                              .dark(),
                                                          child: InkWell(
                                                            child: Icon(
                                                              Icons.color_lens,
                                                              color:
                                                              Colors.teal,
                                                              size: 24.0,
                                                            ),
                                                            onTap: () {
                                                              showDialog(
                                                                context:
                                                                context,
                                                                builder: (_) {
                                                                  return AlertDialog(
                                                                    contentPadding:
                                                                    const EdgeInsets.all(
                                                                        6.0),
                                                                    title: Text(
                                                                        'color'),
                                                                    content: MaterialColorPicker(
                                                                        selectedColor: _mainColor,
                                                                        allowShades: false,
                                                                        onMainColorChange: (value) {
                                                                            temp_color=value.toString();
                                                                            print ('pop');
                                                                            String start ='value: Color(';
                                                                            String end ='))';
                                                                            final startIndex = temp_color.indexOf(start);
                                                                            final endIndex = temp_color.indexOf(end, startIndex + start.length);
                                                                            String p=(temp_color.substring(startIndex + start.length, endIndex));
                                                                            temp_color=p;
                                                                            print (p);

                                                                        }),
                                                                    actions: [
                                                                      // FlatButton(
                                                                      //   child: Text(
                                                                      //       'CANCEL'),
                                                                      //   onPressed:(){
                                                                      //     Navigator.of(context)
                                                                      //         .pop();
                                                                      //
                                                                      //   },  ),
                                                                      // FlatButton(
                                                                      //   child: Text(
                                                                      //       'SUBMIT'),
                                                                      //   onPressed:
                                                                      //       () {
                                                                      //       controller.ass_color(temp_color.toString());
                                                                      //     Navigator.of(context)
                                                                      //         .pop();
                                                                      //       int value = int.parse(temp_color);
                                                                      //       Color color = Color(value).withOpacity(1);
                                                                      //     set_color.add(color);
                                                                      //     // setState(() => _mainColor = _tempMainColor);
                                                                      //     // setState(() => _shadeColor = _tempShadeColor);
                                                                      //   },
                                                                      // ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        )),     Text(
                                                      'Colors',
                                                      style: TextStyle(
                                                          color: Colors.black),
                                                    )]),

                                                    Flexible(
                                                        child: ListView(
                                                          itemExtent:30 ,
                                                          scrollDirection: Axis.horizontal,
                                                          children: [
                                                            for (Color name in set_color)

                                                              Container(
                                                                padding: EdgeInsets.all(20),// or ClipRRect if you need to clip the content
                                                                decoration: BoxDecoration(
                                                                  shape: BoxShape.circle,
                                                                  color: name, // inner circle color
                                                                ),
                                                                // inner content
                                                              ),




                                                          ],
                                                        ))
                                                  ],
                                                ))),
                                        ),


//Text("zrar___________________________________________________________________________"),
                                        Expanded(
                                          flex: 2,
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: Padding(
                                                padding:
                                                EdgeInsets.only(left: 20),
                                                child: Row(
                                                  // mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                                  children: [
                                                    //  Text('Sorted by',style: TextStyle(fontSize: 20,color: Colors.teal)),
                                                    SizedBox(
                                                      height: 10,
                                                    ),

                                                    ElevatedButton.icon(
                                                      onPressed: () {
                                                        set_size_man_woman
                                                            .clear();
                                                        set_color.clear();
                                                        set_size_Kids.clear();
                                                        controller.imageListTemp
                                                            .clear();
                                                        list_size.clear();
                                                       // controller.cancel();
                                                        controller.onInit();
                                                      },
                                                      icon: Icon(
                                                        Icons
                                                            .scatter_plot_outlined,
                                                        color:
                                                        Colors.white,
                                                        size: 24.0,
                                                      ),
                                                      label: Text("Cancel"),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary: Colors.teal,
                                                        shape:
                                                        new RoundedRectangleBorder(
                                                          borderRadius:
                                                          new BorderRadius
                                                              .circular(
                                                              10.0),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    ElevatedButton.icon(
                                                      onPressed: () {
                                                        controller2
                                                            .Addservice();
                                                        controller.imageListTemp.clear();
                                                      },
                                                      icon: Icon(
                                                        Icons.stream,
                                                        color:
                                                        Colors.white,
                                                        size: 24.0,
                                                      ),
                                                      label: Text("Send"),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary: Colors.teal,
                                                        shape:
                                                        new RoundedRectangleBorder(
                                                          borderRadius:
                                                          new BorderRadius
                                                              .circular(
                                                              10.0),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )),
                                          ),
                                        ),
                          Visibility(
                          visible:controller.Tabbar0.value!=2 && controller.Tabbar0.value!=0
                              ?true:false, child:      Expanded(
                          flex: 3,
                          child:SizedBox(height: 7),),),
                          Visibility(
                          visible:controller.Tabbar0.value==6 ||controller.Tabbar0.value==0 ||controller.Tabbar0.value==5
                              ?true:false, child:      Expanded(
                          flex:1,
                          child:SizedBox(height: 7),),),


                                      ]))));
                        })),
              ));
        });
  }
}
