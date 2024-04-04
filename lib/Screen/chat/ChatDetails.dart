
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/routes/app_pages.dart';

import '../../database/models/chat/message_Model.dart';
import '../../logic/controllers/chat/Message_Controller.dart';
// massages in chat
class ChatDetails  extends GetView<Message_Controller> {
  final messageInsert = TextEditingController();
  // List<Map> messsages = [];
  int i=0;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Message_Controller>(
          init: Message_Controller(),
          builder: (_controller) {
            return Scaffold(


                body:
                Container(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 40,
                      ),
                      Card(
                        child: ListTile(
                          trailing:
                          IconButton(
                            onPressed: () {
                              //   ChatDetailsController().DEConecting();
                              Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            ),
                          ),
                          leading:

                          CircleAvatar(

                            radius: 20,
                           backgroundColor: Colors.teal,
                           child: Center(child:Text(controller.name.value[0])),
                          ),
                          title: Text("${controller.name.value}",
                            //  controller.Title.value,
                            // style: Themes.bodyText1,
                          ),

                        ),
                      ),

                      Flexible(
                          child: ListView.builder(
                              reverse: true,
                              itemCount: controller.messsages.length,
                              itemBuilder: (context, index) =>
                                  controller.chat(
                                      controller.messsages[index]["message"].toString(),
                                      controller.messsages[index]["data"]))),

                      Divider(
                        height: 5.0,
                        color: Colors.grey.shade600,
                        thickness: 1,
                      ),
                      Container(
                        child: ListTile(
                          title: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(10)),
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey.shade300,
                                width: 1,
                              ),
                            ),
                            padding: EdgeInsets.only(left: 15),
                            child: TextFormField(
                              controller: messageInsert,
                              decoration: InputDecoration(
                                hintText: "  write... ",
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
                              onPressed: () async {
                                if (messageInsert.text.isEmpty) {
                                  print("empty message");
                                } else {
                                  controller.messsages.insert(
                                      0  , {
                                    "data": 0,
                                    "message": messageInsert.text
                                  });
                                  await controller.add_Massage(
                                    //       await services.add_Massage(token:await storage.read(key: 'token')
                                    //           ,IdConversation: IdConversation,
                                    //           body:messageInsert.text);
                                    messageInsert.text,
                                  );


                                  messageInsert.text='';


                                }
                                FocusScopeNode currentFocus = FocusScope.of(
                                    context);
                                if (!currentFocus.hasPrimaryFocus) {
                                  currentFocus.unfocus();
                                }
                              }),
                        ),
                      ),

                      // SizedBox(
                      //    height: 50.0,
                      //  )
                    ],
                  ),
                ));
          });
  }


}

