import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/Screen/const/function.dart';
import 'package:lara_push_noti/database/models/Home/Detils_Model.dart';
import 'package:lara_push_noti/logic/controllers/Home/Detlis_Contoller.dart';
import 'package:lara_push_noti/routes/app_pages.dart';
import 'package:image_picker/image_picker.dart';
import 'package:comment_box/comment/comment.dart';

import '../../logic/controllers/Comments_Controller.dart';
import '../../main.dart';

class oneDetils extends StatelessWidget {
  final formKey = GlobalKey<FormState>();

  final TextEditingController commentController = TextEditingController();

  var controller = Get.put(Detil_Controller());
  var id2;
  late Detils_Model ditel3;
  var images = <Images_Model>[];
  //List<XFile>? imagesfile = [];
 List  <XFile>imagesxfile=[];
  late dynamic f;
  List<dynamic>? imagesdynamic= [];
  ConstFnction constfun = ConstFnction();
  late DateTime _selectedDate;
  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      body: SafeArea(
        child: SizedBox.expand(
            child: Column(children: [
              Expanded(
                  flex: 5,
                  child: Obx(() {
                    return controller.postloading.value
                        ? Center(
                      child: CircularProgressIndicator(),
                    )
                        : ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: controller.detils.length,
                      itemBuilder: (context, index) {
                        var item = controller.detils[index];
                        //         ditel3 = controller.detils[index];
                        id2 = item.id;
                        return Center(
                            child: Container(
                                decoration: BoxDecoration(
                                  //color: Colors.teal.shade200,
                                ),
                                child: Column(
                                  // mainAxisAlignment:
                                  // MainAxisAlignment.spaceAround,
                                  //crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          IconButton(
                                            //padding: EdgeInsets.only(right: 22,left: 22),
                                            onPressed: () {
                                              print("ppppppppppppppppppoooooooooooooooooooppppppp");
                                              print(controller.idhom.value);
                                              // if( controller.idhom.value=='00')
                                              // {        Get.offAllNamed(Routes.button);
                                              // }else
                                              {
                                                String t ='2';
                                                    //controller.idhom.value; //$t
                                                print(
                                                    "popopppppppppppppppppppppppppppppppopopppppppppppppppppppppppppopo");
                                                print(t);
                                                Get.back();
                                                // Get.toNamed(
                                                //     Routes.Detil_one,
                                                //         arguments: {
                                                //           "idhom":'${controller.idhom.value}'
                                                //         });

                                              }
                                            },
                                            icon: const Icon(
                                              Icons.arrow_back_ios,
                                              color: Colors.white,
                                              size: 25,
                                            ),
                                          ),
                                        ]),
//images======================================================================================

                                    Center(
                                      child: Container(
                                        margin: EdgeInsets.only(bottom: 10),
                                        width:
                                        MediaQuery.of(context).size.width,
                                        height: MediaQuery.of(context)
                                            .size
                                            .height *
                                            0.25,
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            shrinkWrap: true,
                                            itemCount: item.images.length,
                                            itemBuilder: (context, index) {
                                              var initem = item.images[index];
                                              // images.assignAll(item.images);
                                              imagesdynamic
                                                  ?.assignAll(item.images);
                                              imagesxfile.add(XFile(
                                                  "$APIimage" +
                                                      initem.url_image));
                                              //           imagesxfile?.assignAll(imageFile);
                                              //    imagesdynamic.assignAll(item.images);
                                              return Center(
                                                  child: Container(
                                                    //
                                                    padding: EdgeInsets.only(
                                                      right: 7,
                                                      left: 7,
                                                    ),
                                                    width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                        1.3,
                                                    height: MediaQuery.of(context)
                                                        .size
                                                        .height,
                                                    decoration: BoxDecoration(
                                                      //   color: Colors.teal.shade200,
                                                      // color: Colors
                                                      //     .grey.shade200,
                                                        border: Border.all(
                                                          width: 1,
                                                          color:
                                                          Colors.teal,
                                                        ),
                                                        borderRadius:
                                                        const BorderRadius
                                                            .only(
                                                            bottomLeft:
                                                            Radius.circular(
                                                                390),
                                                            bottomRight:
                                                            Radius.circular(
                                                                390),
                                                            topLeft: Radius
                                                                .circular(
                                                                390),
                                                            topRight:
                                                            Radius
                                                                .circular(
                                                                390)),
                                                        image: DecorationImage(
                                                          //  image: AssetImage(
                                                            image: NetworkImage(
                                                              "$APIimage" +
                                                                  initem
                                                                      .url_image,
                                                            ),
                                                            fit: BoxFit.fill)),
                                                  ));
                                            }),
                                      ),
                                    ),

// end image---------------------------------------------------------------------------

                                    Container(
                                        padding: EdgeInsets.only(
                                          top: 0,
                                          bottom: 0,
                                          left: 30,
                                          //  right: 12
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.teal,
                                            width: 2,
                                          ),
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(50),
                                              topLeft: Radius.circular(50)),
                                        ),
                                        child: Column(
                                          children: [
                                            //name company+rate ==================================================================================
                                            Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceAround,
                                                children: [

                                                  Container(
                                                    child: Column(children: [
                                                      Row(
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .end,
                                                          children: [
                                                            //Rate
                                                            Container(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                    right:
                                                                    12),
                                                                child:
                                                               constfun
                                                                      .ColorRatej(
                                                                      item.serv_rate),


                                                              )
                                                          ]),
                                                    ]),
                                                  ),

                                                  //   SizedBox(width: 10),
                                                ]),

//words======================================================================================
                                            item.name != 'l@a'
                                                ?
                                            //name
                                            Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .start,
                                                children: [
                                                  // paddingOnly(right: 3)  ,

                                                  constfun
                                                      .const2("name:"),

                                                  //   Text("name:",style: TextStyle(color: Colors.teal),),

                                                  constfun.const1(
                                                    item.name,
                                                  ),
                                                  // SizedBox(width:MediaQuery.of(context).size.width/7),
                                                ])
                                                : SizedBox(width: 0),
                                            item.description != 'l@a'
                                                ?
                                            //description
                                            Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .start,
                                                children: [
                                                  Container(
                                                    //padding: EdgeInsets.only(right: 33),
                                                    child: constfun.const2(
                                                        "description:"),
                                                  ),
                                                  Flexible(
                                                    child:
                                                    constfun.const1(
                                                      item.description,
                                                    ),
                                                  )
                                                ])
                                                : SizedBox(width: 0),
                                            item.price != 'l@a'
                                                ?
                                            //pirce
                                            Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .start,
                                                children: [
                                                  Container(
                                                    //padding: EdgeInsets.only(right: 33),
                                                    child:
                                                    constfun.const2(
                                                        "price: "),
                                                  ),
                                                  constfun.const1(
                                                    item.price,
                                                  ),
                                                ])
                                                : SizedBox(width: 0),
                                            //size
                                            item.size != 'l@a'
                                                ? Container(
                                                height: 40.0,
                                                child:
                                                Row_size(item.size))
                                                : SizedBox(width: 0),
                                            item.size != 'l@a'
                                                ? SizedBox(
                                              height: 20,
                                            )
                                                : SizedBox(width: 0),

                                            item.color != 'l@a'
                                                ? Container(
                                                height: 22.0,
                                                child:
                                                Row_color(item.color))
                                                : SizedBox(width: 0),

                                            //discount

                                            item.discount != 0
                                                ? Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .start,
                                                children: [
                                                  Container(
                                                    //padding: EdgeInsets.only(right: 33),
                                                    child:
                                                    constfun.const2(
                                                        "discount: "),
                                                  ),
                                                  constfun.const1(
                                                    item.discount,
                                                  ),
                                                ])
                                                : SizedBox(width: 0),

                                            //location
                                            item.location !='l@a'
                                                ? Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .start,
                                                children: [
                                                  Container(
                                                    //padding: EdgeInsets.only(right: 33)
                                                    child:
                                                    constfun.const2(
                                                        "location: "),
                                                  ),
                                                  constfun.const1(
                                                    item.location,
                                                  ),
                                                ])
                                                : SizedBox(width: 0),

                                            //expration_date
                                            item.discount != 0
                                                ? Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .start,
                                                children: [
                                                  Container(
                                                    //padding: EdgeInsets.only(right: 33),
                                                    child: constfun.const2(
                                                        "expration_date: "),
                                                  ),
                                                  constfun.const1(
                                                    item.expration_date,
                                                  ),
                                                ])
                                                : SizedBox(width: 0),
//coments+date+order ===========================================================================================

                                            SizedBox(
                                              height: 55,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              children: [
                                                InkWell(
                                                  child:
                                                  Container(
                                                    width:
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                        6,
                                                    height:
                                                    MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                        17,
                                                    decoration: BoxDecoration(
                                                      color:
                                                      Colors.teal,
                                                      border: Border.all(
                                                        width: 1,
                                                        color:
                                                        Colors.teal,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.only(
                                                        bottomLeft:
                                                        Radius.circular(
                                                            390),
                                                        //    bottopLeft: Radius.circular(39390),
                                                        topLeft:
                                                        Radius.circular(
                                                            390),
                                                        //      topRight: Radius.circular(390)),
                                                      ),
                                                    ),
                                                    child: Column(children: [
                                                     Icon(
                                                        Icons
                                                            .insert_comment_outlined,
                                                        color: Colors.white,
                                                        size: 30,
                                                      ),
                                      Text('comments',style: TextStyle(color: Colors.white,fontSize: 8),
                                                    ),
                                                ])),
                                                  onTap: () {
                                                    controller.list_comment();






                                                    Get.bottomSheet(
                                                      ListView(
                                                        children: [
                                                          Container(
                                                            padding:
                                                            EdgeInsets
                                                                .only(
                                                              top: 0,
                                                              bottom:
                                                              0,
                                                              left:
                                                              30,
                                                              //  right: 12
                                                            ),
                                                            decoration:
                                                            BoxDecoration(
                                                              color: Colors
                                                                  .grey,
                                                              border:
                                                              Border.all(
                                                                color:
                                                                Colors.teal,
                                                                width:
                                                                2,
                                                              ),
                                                              borderRadius: BorderRadius.only(
                                                                topRight: Radius.circular(50),
                                                                topLeft: Radius.circular(50),
                                                              ),
                                                            ),
                                                            child:
                                                            Container(
                                                                width: MediaQuery.of(context)
                                                                    .size
                                                                    .width,
                                                                height: MediaQuery.of(context)
                                                                    .size
                                                                    .width,
                                                                child:Column(
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                                                    children: [

                                                                      Icon(
                                                                        Icons.remove,
                                                                        color: Colors.grey[600],
                                                                      ),
                                                                      Expanded(
                                                                        child: Column(
                                                                          children: [
                                                                            Expanded(
                                                                              child: Obx(() {
                                                                                return controller.getloading.value
                                                                                    ? Center(
                                                                                  child: CircularProgressIndicator(),
                                                                                )
                                                                                    : ListView.builder(
                                                                                  reverse: true,
                                                                                  itemCount: controller.comments.length,
                                                                                  itemBuilder: (context, index) {
                                                                                    var item =
                                                                                    controller.comments[index];

// var item = controller.comments[index];
                                                                                    return
                                                                                      Padding(
                                                                                        padding: const EdgeInsets.fromLTRB(
                                                                                            2.0, 8.0, 2.0, 0.0),
                                                                                        child: ListTile(
                                                                                          leading: GestureDetector(
                                                                                            onTap: () async {
// Display the image in large form.
                                                                                              print("Comment Clicked");
                                                                                            },
                                                                                            child: Container(
                                                                                              height: 50.0,
                                                                                              width: 50.0,
                                                                                              decoration: new BoxDecoration(
                                                                                                  color: Colors.blue,
                                                                                                  borderRadius: new BorderRadius.all(
                                                                                                      Radius.circular(50))),
                                                                                              child: CircleAvatar(
                                                                                                radius: 50,

//backgroundImage:
//NetworkImage(data[i]['pic'] + "$i")
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          title: Text(
                                                                                            controller.comments[index]['name'].toString(),
                                                                                            style: TextStyle(fontWeight: FontWeight.bold),
                                                                                          ),
                                                                                          subtitle: Text(      controller.comments[index]['comment'].toString(),),
                                                                                        ),
                                                                                      );
                                                                                  },
                                                                                );
                                                                              }),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        height: 50,
                                                                        child: ListTile(
                                                                          leading: IconButton(
                                                                            icon: Icon(
                                                                              Icons.comment,
                                                                              color: Colors.grey.shade600,
                                                                              size: 35,
                                                                            ),
                                                                            onPressed: () {},
                                                                          ),
                                                                          title:
                                                                          Container(
                                                                            height: 40,
                                                                            decoration: BoxDecoration(
                                                                              borderRadius: BorderRadius.all(
                                                                                  Radius.circular(10)),
                                                                              color: Colors.white,
                                                                              border: Border.all(
                                                                                color: Colors.white,
                                                                                width: 2,
                                                                              ),
                                                                            ),
                                                                            padding: EdgeInsets.only(left: 15),
                                                                            child:
                                                                            TextFormField(
                                                                              controller: controller.comment_Controller,
                                                                              decoration: InputDecoration(
                                                                                hintText: " comment..... ",
//hintStyle: Themes.subtitle3,
                                                                                border: InputBorder.none,
                                                                                focusedBorder: InputBorder.none,
                                                                                enabledBorder: InputBorder.none,
                                                                                errorBorder: InputBorder.none,
                                                                                disabledBorder: InputBorder.none,
                                                                              ),
// style: Themes.bodyText1,
                                                                              onChanged: (value) {},
                                                                            ),
                                                                          ),
                                                                          trailing: IconButton(
                                                                              icon: Icon(
                                                                                Icons.send,
                                                                                size: 30.0,
                                                                                color: Colors.grey.shade600,
                                                                              ),
                                                                              onPressed: () {
                                                                                if (controller.comment_Controller.text.isEmpty) {
                                                                                  print("empty message");
                                                                                } else {
//seeeeeeeeeeeeeeeend
                                                                                  controller.comments.insert(0, {
                                                                                    "comment":  controller.comment_Controller.text,
                                                                                    "id":'my_comment',

                                                                                  });

                                                                                  controller.add_comment( controller.comment_Controller.text);
                                                                                  controller.comment_Controller.text = '';

                                                                                }
                                                                                FocusScopeNode currentFocus = FocusScope.of(
                                                                                    context);
                                                                                if (!currentFocus.hasPrimaryFocus) {
                                                                                  currentFocus.unfocus();
                                                                                }
                                                                              }),
                                                                        ),
                                                                      ),
                                                                    ])

                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      //    barrierColor: Colors.red[50],
                                                      //     isDismissible: false,
                                                      shape:
                                                      RoundedRectangleBorder(
                                                        //    borderRadius: BorderRadius.circular(35),
                                                          side: BorderSide(
                                                              width:
                                                              2,
                                                              color:
                                                              Colors.white)),
                                                      enableDrag:
                                                      false,
                                                    );











                                                  },
                                                ),
                                                InkWell(
                                                  child:
                                                  Container(
                                                    width:
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                        6,
                                                    height:
                                                    MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                        16,
                                                    decoration: BoxDecoration(
                                                      color:
                                                      Colors.teal,
                                                      border: Border.all(
                                                        width: 2,
                                                        color:
                                                        Colors.white,
                                                      ),
                                                      borderRadius:
                                                      BorderRadius.only(
                                                        bottomRight:
                                                        Radius.circular(
                                                            390),
                                                        //    bottopRight: Radius.circular(390),
                                                        topRight:
                                                        Radius.circular(
                                                            390),
                                                        //      topRight: Radius.circular(390)),
                                                      ),
                                                    ),
                                                    child: Column(children: [
                                                      Icon(
                                                          Icons.discount,
                                                          size: 30,
                                                          color:
                                                          Colors.white),
                                                      Text(
                                                        "discount",
                                                        style: TextStyle(
                                                            color: Colors.white,fontSize: 8),
                                                      )
                                                    ]),
                                                  ),
                                                  onTap: (){
                                                      showDialog(
                                                          context: context,
                                                          builder:
                                                              (_) =>
                                                              Dialog(
                                                                backgroundColor:
                                                                Colors.transparent,
                                                                child: Container(
                                                                    height: MediaQuery.of(context).size.height/1.5,
                                                                    alignment: FractionalOffset.center,
                                                                    child: Container(

                                                                        decoration: BoxDecoration(
                                                                          color: Colors.grey.shade200,
                                                                          border: Border.all(
                                                                            color: Colors.teal,
                                                                            width: 2,
                                                                          ),
                                                                          borderRadius: BorderRadius.only(
                                                                              topRight: Radius.circular(50),
                                                                              bottomLeft: Radius.circular(50),
                                                                              bottomRight: Radius.circular(50),
                                                                              topLeft: Radius.circular(50)),
                                                                        ),
                                                                        //  color: Colors.white.withOpacity(0.8),
                                                                        height: MediaQuery.of(context).size.height/3 ,
                                                                        width: MediaQuery.of(context).size.width*1.5,
                                                                        child: Column(
                                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                                          children: [
                                                                            Container(
                                                                              alignment: Alignment.center,
                                                                              padding: EdgeInsets.only(left: 12, right: 12, top: 5, bottom: 5),
                                                                              child: //
                                                                              TextFormField(
                                                                                controller: controller.expration_date_Controller..text ='${item.expration_date}',

                                                                                keyboardType: TextInputType.datetime,
                                                                                decoration: InputDecoration(
                                                                                  border: OutlineInputBorder(
                                                                                    borderRadius: BorderRadius.circular(5),
                                                                                  ),
                                                                                  labelText: "expration_date",
                                                                                  prefixIcon: const Icon(Icons.date_range, color: Colors.teal),
                                                                                ),
                                                                              ),


                                                                            ),
                                                                            Container(
                                                                                alignment: Alignment.center,
                                                                                padding: EdgeInsets.only(left: 12, right: 12, top: 5),
                                                                                child: TextFormField(
                                                                                  controller: controller.discount_Controller..text ='${item.discount}',

                                                                                  validator: (v) {},

                                                                                  keyboardType: TextInputType.numberWithOptions(),

                                                                                  decoration: InputDecoration(
                                                                                    border: OutlineInputBorder(
                                                                                      borderRadius: BorderRadius.circular(5),
                                                                                    ),
                                                                                    labelText: "discount",
                                                                                    prefixIcon: const Icon(Icons.discount, color: Colors.teal),
                                                                                  ),
                                                                                )),


                                                                            Align(alignment: Alignment.bottomLeft,child:
                                                                            Row(
                                                                              crossAxisAlignment: CrossAxisAlignment.end,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                                                              children: [
                                                                                SizedBox(
                                                                                  width: MediaQuery.of(context).size.width /2,
                                                                                  height: 67,
                                                                                ),


                                                                                FloatingActionButton(
                                                                                  //heroTag: "btn3",
                                                                                    child:Icon(Icons.send_sharp),
                                                                                    backgroundColor: Colors.teal,
                                                                                    onPressed: ()
                                                                                    {


                                                                                      controller.addtodiscount(item.id);



                                                                                    }),
                                                                              ],
                                                                            ))
                                                                          ],
                                                                        ))),
                                                              ));
                                                    },


                                                ),

                                              ],
                                            ),


                                            const Divider(
                                              thickness: 2,
                                              // thickness of the line
                                              indent: 30,
                                              // empty space to the leading edge of divider.
                                              endIndent: 30,
                                              // empty space to the trailing edge of the divider.
                                              color: Colors.teal,
                                              // The color to use when painting the line.
                                              height:
                                              20, // The divider's height extent.
                                            ),
                                          ],
                                        )),
                                  ],
                                )));
                      },
                    );
                  })),
            ])),
      ),
    );
  }

}





Row_color(String name) {
  var List_aftersplit =  name.split(",");

  var col=<Color>[];




  for(String str_col in List_aftersplit){
    int value = int.parse(str_col);
    Color color = Color(value).withOpacity(1);

    col.add(color);}





  return
    ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 20,bottom: 20,left: 10)),

        for(Color name in col)
          Container(

            padding: EdgeInsets.only(top: 25,bottom: 25,right: 2,left: 2),
            //padding: EdgeInsets.all(20),// or ClipRRect if you need to clip the content
            decoration: BoxDecoration(

              shape: BoxShape.circle,
              color: name,
              // inner circle color
            ),

            child: Center(child: Text('              ',)),
          )],


    );

}
Row_size(String size) {
  print(size);
  var List_aftersplit =  size.split(",");
  for(String name in List_aftersplit)
    print(name);
  return
    ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Padding(padding: EdgeInsets.all(10)),

        for(String name in List_aftersplit)
          Container(
              padding: EdgeInsets.only(top: 25,bottom: 25,right: 2,left: 2),

            //padding: EdgeInsets.all(20),// or ClipRRect if you need to clip the content
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: Colors.teal,
                ),
                shape: BoxShape.circle,
                color: Colors.white,
                // inner circle color
              ),

              child: Center(child: Text('  $name   ',style: TextStyle(fontSize:10,color: Colors.teal,)),))],


    )





  ;


}


