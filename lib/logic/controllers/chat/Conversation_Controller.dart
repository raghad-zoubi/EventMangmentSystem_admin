import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import '../../../database/models/chat/conversation_Model.dart';
import '../../../database/models/chat/message_Model.dart';
import '../../../database/services/chat/Chat_Service.dart';

import 'package:intl/intl.dart';

class Conversation_Controller extends GetxController {

  var storage = const FlutterSecureStorage();
  var conversations = <ConversationModel>[].obs;
  var massages = <MessageModal>[].obs;
  late List<ConversationModel> result;
  Conversation_Services services = Conversation_Services();
  late TextEditingController bady_controller;
  final chatFormkey = GlobalKey<FormState>();
  var postloading = true.obs;

  var iduser='.obs';
  var IdConversation='.obs';
  var IdMessage='.obs';

  String bady = ' ';
  void onInit() {
    print("____________________________________________");
    print("in Conversation_Controller  at onInit");

    bady_controller = TextEditingController();
    preview_Conversations();
    super.onInit();
  }

preview_Conversations() async {
    postloading(true);
    try {
      print("jjjjjjjjjjjjjjjjjjjjj");
      var data = await services.preview_Conversations(
          token: await storage.read(key: 'token'));
      if (data != null) {
        print('_________________________________________________\n in method Show_info_profile at Profile_Controller after fetsh data of profile and states is 200 ');
        conversations.assignAll(data);
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

add_newConversation( var iduser) async {

    try{print("chhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhaaaaaaaaaaaaaat");

      postloading(true);


      dynamic result;
   await services.add_newConversation(token:await storage.read(key: 'token'),iduser: iduser,body:bady_controller.text);
      if (result != null) {
        print('_________________________________________________\n in method Show_info_profile at Profile_Controller after fetsh data of profile and states is 200 ');
        conversations.assignAll(result);
        print(   conversations.value.toList());
        print(conversations.value.elementAt(0).url_img);
        Get.snackbar("chat",
            'open your convirsation created new chat');


      } else {
        print("Errooooooooooooooooor in Show_info_profile ");
      }
    } finally {
      postloading.value = false;
    }
    update();
  }

delete_Conversations( var IdConversation) async {

    try {
      postloading(true);


      var result=
      await services.delete_Conversations(token:await storage.read(key: 'token'),IdConversation: IdConversation);
      if (result != null) {
        print('_________________________________________________\n in method delete_Conversations at chat_Controller after delete conversation ');


      } else {
        print("Errooooooooooooooooor in Show_info_profile ");
      }
    } finally {
      postloading.value = false;
    }
    update();
  }


}



class TimeAgo {
  static timeAgoSinceDate(dataString) {
    DateTime sdate = DateTime.parse(dataString);
    int stimestamp = sdate.microsecondsSinceEpoch;
    DateTime notificationDate = DateTime.fromMicrosecondsSinceEpoch(stimestamp);

    final date2 = DateTime.now();
    final diff = date2.difference(notificationDate);
    if (diff.inDays > 8) {
      return DateFormat("dd-MM-yyyy HH:mm:ss").format(notificationDate);
    } else if ((diff.inDays / 7).floor() >= 1) {
      return 'Last Week';
    } else if (diff.inDays >= 2) {
      return '${diff.inDays} day ago';
    } else if (diff.inDays >= 1) {
      return '1 day ago';
    } else if (diff.inHours >= 2) {
      return '${diff.inHours} hours ago';
    } else if (diff.inHours >= 1) {
      return '1 hours ago';
    } else if (diff.inMinutes >= 2) {
      return '${diff.inMinutes} minutes ago';
    } else if (diff.inMinutes >= 1) {
      return '1 minutes ago';
    } else if (diff.inSeconds >= 3) {
      return ' ${diff.inSeconds}second ago';
    } else {
      return 'just now';
    }
  }

  static bool isSameDay(dataString) {
    DateTime sdate = DateTime.parse(dataString);
    int stimestamp = sdate.microsecondsSinceEpoch;
    DateTime notificationDate = DateTime.fromMicrosecondsSinceEpoch(stimestamp);
    final date2 = DateTime.now();
    final diff = date2.difference(notificationDate);
    if (diff.inDays > 0)
      return true;
    else
      return false;
  }
}
