import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/database/models/Home/Detils_Model.dart';
import 'package:lara_push_noti/logic/controllers/Mange/Update_Contoller.dart';
import 'package:image_picker/image_picker.dart';

import '../../main.dart';
import 'package:flutter/material.dart' hide showMenu;
import 'package:flutter/material.dart' as material show showMenu;

import '../../routes/app_pages.dart';
var s=0;
Future<String>
_showOptionsMenu(int hiveIndex, var context) async {
 // String value;
  int? selected = await showMenu(
    position: RelativeRect.fromLTRB(60.0, 60.0, 100.0, 100.0),
    context: context,
    items: [
      PopupMenuItem(
        value: 0,
        child: Row(
          children: [
            //   Icon(Icons.edit),
            Text("Cancel"),
          ],
        ),
      ),
      PopupMenuItem(
        value: 1,
        child: Row(
          children: [
            Text("delete"),
           //  TextButton.icon(
           //    onPressed: () {
           // //    return'1';
           //    },
           //    icon: Icon(Icons.delete, color: Colors.teal),
           //    label: Text("Delete", style: TextStyle(color: Colors.teal)),
           //  )
          ],
        ),
      ),
    ],
  );
  if (selected == 0) {
    s=0;
  return '0';
  } else {
    s=1;
    return '1';
  }
}

class Update_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Updata_Controller>(
        init: Updata_Controller(),
        builder: (controller2) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: ' Edite My Service',
              theme: ThemeData(
                  appBarTheme: const AppBarTheme(
                color: Colors.teal,
              )),
              home: Scaffold(
                appBar: AppBar(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(1.0),
                          bottomLeft: Radius.circular(1.0))),
                  elevation: 5,
                  backgroundColor: Colors.teal,
                  leading: IconButton(
                    onPressed: () {
                      Get.toNamed(Routes.detils,
                          arguments: {
                            "id": '${controller2.id}'
                          });
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 29,
                    ),
                  ),
                ),

                //==========================END APPBAR==================================
                body: SingleChildScrollView(
                    //   SingleChildScrollView
                    child: GetBuilder<Updata_Controller>(
                        init: Updata_Controller(),
                        builder: (controller) {
                          return Form(
                              key: controller.productFormkey,child:
                            Column(children: [
//============================= SHOW OUR IMAGE=============================
                            Container(
                              height: MediaQuery.of(context).size.width / 2,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child:
                                FutureBuilder(
                                  //  future: _fetchListItems(),
                                  builder:(context, AsyncSnapshot snapshot) {
                                    return
                                      GridView.builder(
                                        itemCount: controller.images.length,
                                        gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2),
                                        itemBuilder: (context, index)  {
                                          return  GestureDetector(
                                              onLongPress: () async{
                                            String  p=  await (_showOptionsMenu(index, context)) ;

                                                 if(p=='1')
                                                 {controller.deleteimages(index);}

                                              },
                                              child: Container(
                                                margin: EdgeInsets.only(left: 10),
                                                padding: EdgeInsets.all(10),
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                    0.5,
                                                height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                    0.2,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                    color: Colors.black,
                                                    width: 2,
                                                  ),
                                                  borderRadius:
                                                  BorderRadius.circular(25),
                                                ),
                                                child: Image.network(
                                                    "$APIimage" +
                                                        controller.images
                                                            .elementAt(index)
                                                            .url_image,
                                                    fit: BoxFit.cover),
                                              )
                                            //    Text("kkkk"));
                                          );
                                        });
                                  },),

                              ),
                            ),

//=========================================================================

                            Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  const SizedBox(height: 20),
                                  //Image
//========================SELECTED IMAGES FROM GALARY===================================
                                  ElevatedButton(
                                    onPressed: () {
                                      controller.selectImages();
                                    },
                                    child:  Text(
                                      'Select Images fromGalary',
                                      style: TextStyle(color: Colors.teal),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.white70),
                                    ),
                                  ),
                                  controller.imageListTemp.isEmpty
                                      ? SizedBox(height: 2)
                                      : Container(
                                          height: 89,
                                          padding: const EdgeInsets.only(
                                              right: 4.0, left: 4.0, top: 2.0),
                                          child: Center(
                                          child: Form(
                                          key: controller.productFormkey,
                                            child: GridView.builder(
                                                itemCount: controller
                                                    .imageListTemp.length,
                                                gridDelegate:
                                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                                  mainAxisSpacing: 40,
                                                  crossAxisSpacing: 24,
                                                  // width / height: fixed for *all* items
                                                  childAspectRatio: 0.75,
                                                  crossAxisCount: 2,
                                                ),
                                                itemBuilder:
                                                    (BuildContext context,
                                                        int index) {
                                                  //  controller.rr.value.add(controller.imageListTemp.value[index].path);
                                                  return
                                                    Center(
                                                      child: Image.file(
                                                          File(controller
                                                              .imageListTemp
                                                              .value[index]
                                                              .path),
                                                          fit: BoxFit.fill));
                                                }),
                                          ))),
//=================================================================================================
                                              //name
                                  controller.name_Controller.text=='l@a'?
                                      SizedBox(height: 0,):
                                  Container(
                                      padding: EdgeInsets.only(
                                          left: 12, right: 12, top: 5),
                                      child: TextFormField(
                                        controller: controller.name_Controller
                                       ..text = controller.name,

                                        validator: (v) {},

                                        keyboardType: TextInputType.text,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          //   labelText: "name",
                                          prefixIcon: const Icon(
                                              Icons.view_compact_outlined,
                                              color: Colors.teal),
                                        ),
                                      )),
                                  const SizedBox(height: 5),
                               //price
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 12, right: 12, top: 5),
                                    child: TextFormField(
                                      controller: controller.price_Controller
                                        ..text = controller.price as String,
                                      validator: (v) {
                                        //return controller.validatePassword(v!);
                                      },
                                      // onlong: (v) {
                                      //   controller.price = v as int;
                                      // },
                                      keyboardType: TextInputType.number,
                                      //  obscureText: true,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        labelText: "price",
                                        prefixIcon: const Icon(
                                            Icons.price_check,
                                            color: Colors.teal),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  //Saly

                                  Container(
                                      padding: EdgeInsets.only(
                                          left: 12, right: 12, top: 5),
                                      child: TextFormField(
                                        controller:
                                            controller.discount_Controller
                                              ..text = controller.discount,
                                        validator: (v) {},
                                        // onSaved: (v) {
                                        //   controller.discount = v!;
                                        // },
                                        keyboardType:
                                            TextInputType.numberWithOptions(),
                                        //TextInputType.visiblePassword,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          labelText: "discount",
                                          prefixIcon: const Icon(
                                              Icons.disc_full_outlined,
                                              color: Colors.teal),
                                        ),
                                      )),
                                  const SizedBox(height: 5),
                                  //size
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 12, right: 12, top: 5),
                                    child: TextFormField(
                                      controller: controller.size_Controller
                                        ..text = controller.size as String,
                                      validator: (v) {},
                                      // onSaved: (v) {
                                      //   controller.size = v as double;
                                      // },
                                      keyboardType:
                                          TextInputType.numberWithOptions(),
                                      //)numberWithOptions(),
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        labelText: "size",
                                        prefixIcon: const Icon(
                                          Icons.assistant_navigation,
                                          color: Colors.teal,
                                        ),
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 5),
                                  //location
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 12, right: 12, top: 5),
                                    child: TextFormField(
                                      controller: controller.location_Controller
                                        ..text = controller.location as String,
                                      validator: (v) {},
                                      // onSaved: (v) {
                                      //   controller.location = v!;
                                      // },
                                      keyboardType: TextInputType.streetAddress,
                                      //name,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        labelText: "location",
                                        prefixIcon: const Icon(
                                            Icons.location_on_outlined,
                                            color: Colors.teal),
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 5),
                                  //descriptionCancel
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 12, right: 12, top: 5),
                                    child: TextFormField(
                                      //autofocus: true,
                                      controller: controller
                                          .description_Controller
                                        ..text =
                                            controller.description as String,
                                      validator: (v) {},
                                      // onSaved: (v) {
                                      //   controller.description = v!;
                                      // },
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        labelText: "description",
                                        prefixIcon: const Icon(
                                            Icons.description,
                                            color: Colors.teal),
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 5),
                                  // expration_date
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: 12, right: 12, top: 5),
                                    child: TextFormField(
                                      controller: controller
                                          .expration_date_Controller
                                        ..text =
                                            controller.expration_date as String,
                                      //validator: (v) {},
                                      // onSaved: (v) {
                                      //   controller.expration_date =
                                      //       v as DateTime;
                                      // },
                                      keyboardType: TextInputType.datetime,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        labelText: "expration_date",
                                        prefixIcon: const Icon(Icons.date_range,
                                            color: Colors.teal),
                                      ),
                                    ),
                                  ),

                                  const SizedBox(height: 100),
                                ]),
                          ]));
                        })),
                //Supmit my update________________________________________________________________
                floatingActionButton: FloatingActionButton.extended(
                  onPressed: () {
                    controller2.edite(2);
                  },
                  heroTag: FloatingActionButtonLocation.endFloat,
                  backgroundColor: Colors.teal.shade500,
                  icon: Icon(Icons.send_sharp),
                  label: Text("Supmit"),
                ),
              ));
        });
  }
}
