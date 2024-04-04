import 'package:flutter/material.dart';
import 'package:lara_push_noti/Screen/my/My-Screen.dart';

import '../../database/models/chat/conversation_Model.dart';
import '../../logic/controllers/chat/Conversation_Controller.dart';
import 'ConversationList.dart';
import 'package:get/get.dart';
class ChatScreen extends StatelessWidget{
  //
  // import 'package:chatfront/models/chatUsersModel.dart';
  // import 'package:flutter/material.dart';
  //
  // import 'chatDetailPage.dart';
  // import 'conversationList.dart';
  //
  // class ChatPage extends StatefulWidget {
  // @override
  // _ChatPageState createState() => _ChatPageState();
  // }

 // class _ChatPageState extends State<ChatPage> {
 //  List<ConversationModel> chatUsers = [
 //  ConversationModel(id: '1',name: "Jane Russel", count_unread_message: "1", url_img: "images/userImage1.jpeg", date_latest_message: "Now"),
 //  ConversationModel(id: '2',name: "Glady's Murphy", count_unread_message: "2", url_img: "images/userImage2.jpeg", date_latest_message: "Yesterday"),
 //  ConversationModel(id: '3',name: "Jorge Henry", count_unread_message: "0", url_img: null, date_latest_message: "31 Mar"),
 //  ConversationModel(id: '4',name: "Philip Fox", count_unread_message: "1", url_img: "images/userImage4.jpeg", date_latest_message: "28 Mar"),
 //  ConversationModel(id: '5',name: "Debra Hawkins", count_unread_message: "2", url_img: "images/userImage5.jpeg", date_latest_message: "23 Mar"),
 //  ConversationModel(id: '6',name: "Jacob Pena", count_unread_message: "4", url_img: "images/userImage6.jpeg", date_latest_message: "17 Mar"),
 //  ConversationModel(id: '7',name: "Andrey Jones", count_unread_message: "1", url_img: null, date_latest_message: "24 Feb"),
 //  ConversationModel(id: '8',name: "John Wick", count_unread_message: "1", url_img: "images/userImage8.jpeg", date_latest_message: "18 Feb"),
 //  ];

    var controller = Get.put(Conversation_Controller());

    //Color s= Color(0xffffffff);
    @override
    Widget build(BuildContext context) {
      return
        GetBuilder<Conversation_Controller>(
          init: Conversation_Controller(),
      builder: (controller) {
      return
      Scaffold(
    appBar: AppBar(

      elevation: 5,
      backgroundColor: Colors.teal,
    ),
        drawer: Drawer(
          elevation: 45,
          child: ProfileScreen(),
        ),
  body: SingleChildScrollView(
  physics: BouncingScrollPhysics(),
  child: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[


  ListView.builder(

      itemCount: controller.conversations.length,


  shrinkWrap: true,
  padding: EdgeInsets.only(top: 16),
  physics: NeverScrollableScrollPhysics(),
  itemBuilder: (context, index){
    var item = controller.conversations[index];
  return ConversationList(
  name: item.name.toString(),
  count_unread_message: item.count_unread_message.toString(),
  url_img: item.url_img??"j",
  date_latest_message: item.date_latest_message.toString(),
  id: item.id.toString(),

 // isMessageRead: (index == 0 || index == 3)?true:false,
  );
  },

  ),


  ],
  ),
  ),
  );
      }) ;
  }}


