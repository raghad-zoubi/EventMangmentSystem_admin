import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/routes/app_pages.dart';


class ConversationList extends StatelessWidget{
  var name;
  var count_unread_message;
  var url_img;
  var date_latest_message;
  var id;

  ConversationList({
    required this.name,required this.count_unread_message,
    required this.url_img,required this.date_latest_message,required this.id});
  @override
  Widget build(BuildContext context) {


    return GestureDetector(
    onTap: (){
      print ("________---------------------------------------");
      print ("in on tap  at ConversationList  and id =");
      print( id);
      print( url_img);
      print( name);

      Get.toNamed(
          Routes.ChatDetails,arguments: {"IdConversation":"$id","name":'$name',"url_img":'$url_img'});

    },
      child: Container(
        padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[


                  Container(
                    height: 60,
                    width: 60,
                    decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.teal.shade300,
                     // image: NetworkImage(url_img),
                    ),

               child:  url_img =='j'?Center(child: Text(name[0])):
               CircleAvatar(

                 backgroundImage: AssetImage(url_img),
                 maxRadius: 30,
               )
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(name, style: TextStyle(fontSize: 16),),
                          SizedBox(height: 6,),


                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container( height: 5,
              width: 5,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.teal,
                // image: NetworkImage(widget.url_img),
              ),
            ),
            SizedBox(width: 3,),



          ],
        ),

      ),

    );
  }
}