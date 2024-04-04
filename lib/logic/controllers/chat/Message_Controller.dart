import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/Screen/chat/ConversationList.dart';


import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:lara_push_noti/notificationApi.dart';
import '../../../database/models/chat/conversation_Model.dart';
import '../../../database/models/chat/message_Model.dart';
import '../../../database/services/chat/Chat_Service.dart';

class Message_Controller extends GetxController {
  final profileFormkey = GlobalKey<FormState>();
  var storage = const FlutterSecureStorage();
  var conversations = <ConversationModel>[].obs;
  var messages = <MessageModal>[].obs;
  // List<Map> messsages = [];
  var messsages= [].obs ;
  var listmessage = <MessageModal>[].obs ;
  late List<dynamic> jsonResponse;

  late List<ConversationModel> result;
  final messageInsert = TextEditingController();
  Conversation_Services services = Conversation_Services();
  var postloading = true.obs;

  var iduser=''.obs;
  var IdConversation=''.obs;
  var IdMessage=''.obs;
  var name=''.obs;
  var url_img=''.obs;

  void onInit() {

    print("____________________________________________");
    print("in Conversation_Controller  at onInit");
    IdConversation.value = Get.arguments['IdConversation'];
    print(IdConversation.value);
    name.value = Get.arguments['name'];
    url_img.value = Get.arguments['url_img'];

    get();
    get_another();
    super.onInit();
  }



  preview_Massages( var idconv) async {

    try {
      postloading(true);

    //
    // List<MessageModal> result = [
    //     MessageModal(id:'1',status:'1',body: "Hello, Will", direction: "1",created_at:'1-1-2002'),
    //     MessageModal(id:'2',status:'1',body: "How have you been?", direction: "1",created_at:'1-1-2002'),
    //     MessageModal(id:'3',status:'1',body: "Hey Kriss, I am doing fine dude. wbu?", direction: "2",created_at:'1-1-2002'),
    //     MessageModal(id:'4',status:'1',body: "ehhhh, doing OK.", direction: "1",created_at:'1-1-2002'),
    //     MessageModal(id:'5',status:'0',body: "Is there any thing wrong?", direction: "2",created_at:'1-1-2002'),
    //   ];
     var result =  await services.preview_Massages(token:await storage.read(key: 'token'),
         IdConversation: idconv);
      if (result != null && result!="is empty") {
        print('_________________________________________________\n in method Show_info_profile at Profile_Controller after fetsh data of profile and states is 200 ');
        messages.assignAll(result);

        // print(   conversations.value.toList());
     //   print(conversations.value.elementAt(0).);

      } else {
        print("Errooooooooooooooooor in Show_info_profile ");
      }
      if (result != null && result=="is empty") {
        print('_________________________________________________\n in method Show_info_profile at Profile_Controller after fetsh data of profile and states is 200 ');
        List<MessageModal>  result =
        [        MessageModal(id:'430k',
            status:'1',body: "Hello, Will",
            direction: "1",
            created_at:'1-1-2002'),
        ];
        messages.assignAll(result);

      } else {
        print("Errooooooooooooooooor in Show_info_profile ");
      }
    } finally {
      postloading.value = false;
    }
    update();
  }

  add_Massage( var Newmessage) async {

    try {
      postloading(true);


      var result=
      await services.add_Massage(token:await storage.read(key: 'token')
          ,IdConversation: IdConversation.value,
          body:Newmessage);
      if (result != null) {
        print('_________________________________________________\n in method Show_info_profile at Profile_Controller after fetsh data of profile and states is 200 ');
        //    massages.assignAll(result);
        // print(   conversations.value.toList());
        // print(conversations.value.elementAt(0).url_img);
        print(result);

      } else {
        print("Errooooooooooooooooor in Show_info_profile ");
      }
    } finally {
      postloading.value = false;
    }
    update();
  }

  delete_Massage( var IdMessage) async {

    try {
      postloading(true);


      var result=
      await services.delete_Massage(token:await storage.read(key: 'token'),IdMessage: IdMessage);
      if (result != null) {
        print('_________________________________________________\n in method Show_info_profile at Profile_Controller after fetsh data of profile and states is 200 ');
        messages.assignAll(result);
        print(   conversations.value.toList());
        print(conversations.value.elementAt(0).url_img);

      } else {
        print("Errooooooooooooooooor in Show_info_profile ");
      }
    } finally {
      postloading.value = false;
    }
    update();
  }


  Widget chat(String message, int data) {

    print(message);
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment:
        data == 1 ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [





          Padding(

            padding: EdgeInsets.all(10.0),
            child: Container(
                  decoration: BoxDecoration(
                    color: data == 0 ? Colors.teal: Colors.black,
                    border: Border.all(
                      width: 1,
                      color:
                      Colors.white,
                    ),
                    borderRadius:
                    BorderRadius.only(
                      bottomRight:
                      Radius.circular(
                          390),
                     bottomLeft: Radius.circular(390),
                      topRight:
                      Radius.circular(
                          390),
                         topLeft: Radius.circular(390)),
                    ),



               padding: EdgeInsets.all(12),

               // elevation: 0.0,
                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      Flexible(
                          child: Container(
                            constraints: BoxConstraints(maxWidth: 200),
                            child: Text(
                              message,
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ))
                    ],
                  ),
                )
            ),
          )

        ],
      ),
    );
  }



  get_another()async{

    await FirebaseMessaging.instance.getToken();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Got a message whilst in the foreground!');

      final title = message.notification?.title;
     final  body = message.notification?.body;
print(title);
      print(message.notification.toString());
      // message.notification.
   if (message.notification != null)
      {
     //   if (title !=name.value )
        ///  NotificationApi.showNotification( body:'${body}',title:'${title}' );

    if (title ==name.value ) {


          print("0000000000000000");

          print("0000000000000000");

          messsages.insert(
              0 , {
            "data": 1,
            "message": body
          });
          update();






        }}
    });
  }


  get() async {

print(messages.length);

var result2 =
await services.preview_Massages(token:await storage.read(key: 'token'),
    IdConversation:  IdConversation.value);
if (result2 != null) {
  listmessage.assignAll(result2);





  for(int i=0;i<listmessage.length;i++) {
        if (listmessage
            .elementAt(i)
            .direction ==1)
          messsages.insert(
              0, {
            "data": 0,
            "message": listmessage
                .elementAt(i)
                .body
          });
        else
          messsages.insert(
              0, {
            "data": 1,
            "message": listmessage
                .elementAt(i)
                .body
          });
      }



    update();
  }





}}
