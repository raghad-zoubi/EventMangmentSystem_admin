import 'package:flutter/material.dart';
import 'package:lara_push_noti/database/services/book/Book_Service.dart';
import 'package:get/get.dart';
import '../../logic/controllers/Book/Order_Controller.dart';
import '../../logic/controllers/chat/Conversation_Controller.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
class BookDetilsData extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Book_Services services= Book_Services();
  var name;
  var date;
  var id;
  var quantity;
  var time;
  var user_location;
  var size;
  var notes;
  var status;
  var customer_id;
  var service_id;
  var kind;

  BookDetilsData(
      {this.name,
      this.date,
      this.id,
      this.customer_id,
      this.service_id,
      this.time,
      this.size,
      this.status,
      this.notes,
      this.user_location,
      this.quantity,
      this.kind});
  var controller1 = Get.put(Conversation_Controller());
  var controller = Get.put(Book_Order_Controller());
  var storage = const FlutterSecureStorage();
  @override
  Widget build(BuildContext context) {
    return     GetBuilder<Book_Order_Controller>(
    init: Book_Order_Controller(),
    builder: (controller) {
      return

        GestureDetector(
            onTap: () {
              Get.back();
            },


            child:GetBuilder<Conversation_Controller>(
                init: Conversation_Controller(),
                builder: (controller1) {return
                  Column(
                    children: [
                      // name!='null' ?
                      Column(
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          alldata('name', name),
                          SizedBox(height: 7,),
                          alldata('location', user_location),
                          SizedBox(height: 7,),
                          alldata('time', time),
                          SizedBox(height: 7,),
                          alldata('date', date),
                          SizedBox(height: 7,),
                          alldata('size', size),
                          SizedBox(height: 7,),
                          alldata('quantity', quantity),
                          SizedBox(height: 7,),
                          alldata('notes', notes),
                          SizedBox(height: 7,),
                          // alldata('customer_id', customer_id),
                          alldata('status', status),
                          SizedBox(height: 7,),
                          alldata('service_id', service_id),
                          SizedBox(height: 7,),
                          alldata('service_id', service_id),
                          SizedBox(height: 7,),
                          alldata('kind', kind),
                        ],),
                      SizedBox(height: 100,),

                      Align(alignment: Alignment.bottomCenter,child:
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            kind=='new'?
                            Row(
                              //     crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Column(
                                    children: [
                                      FloatingActionButton(
                                          heroTag: "btn1",
                                          backgroundColor: Colors.teal,
                                          child:  Icon(
                                            Icons.add_box_sharp,
                                          ),
                                          onPressed: () {controller.accept_ignore(id,'2');}),
                                      SizedBox(height: 17,),
                                      Text('Accept',
                                          style: TextStyle(color: Colors.teal,fontSize: 17,)),
                                    ],
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width/14,),
                                  Column(children: [
                                    FloatingActionButton(
                                        heroTag: "btn2",
                                        child:
                                        Icon(Icons.delete_forever),

                                        backgroundColor: Colors.teal,
                                        onPressed: () {controller.accept_ignore(id, '3');}),
                                    SizedBox(height: 17,),
                                    Text('ignor',
                                        style: TextStyle(color: Colors.teal,fontSize: 17,)),
                                  ],
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width/14,),
                                  Column(children: [

                                    FloatingActionButton(
                                        heroTag: "btn3",
                                        child:Icon(Icons.chat_outlined),
                                        backgroundColor: Colors.teal,
                                        onPressed: ()
                                        async {


                var result = await services.inconv(token:await storage.read(key: 'token'),
                custmerid:'2');

                if (result != null) {
                  if (result['message'] == 'already exists' &&
                      result['id'] == null) {
                    Get.snackbar("chat",
                        "it is chat created befor go to your convesation for find it");
                  }
                  else {
                    controller.id_user_ordor.value = result['id'].toString();
                    controller.name_user_ordor.value = result['name'];
                    TextEditingController bady = TextEditingController();
  var k;

                    Get.bottomSheet(
                        Container(

                          height: 300,
                          padding: EdgeInsets.all(22.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.teal, width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: ListView(
                            children: <Widget>[
                              ListTile(title: Text('Send masseg for ${ result['name']}',
                                  style: TextStyle(
                                      color: Colors.teal.shade700))),
                      Form(
                        key: controller1.chatFormkey,
                              child:
                              TextField(
                                  controller:controller1.bady_controller,



                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(

                                    enabledBorder: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(
                                          25.0),
                                      borderSide: BorderSide(color: Colors.teal
                                          .shade700),

                                    ),
                                    focusedBorder: new OutlineInputBorder(
                                      borderRadius: new BorderRadius.circular(
                                          25.0),
                                      borderSide: BorderSide(color: Colors.teal
                                          .shade700),

                                    ),
                                    icon: Icon(Icons.chat_outlined,
                                        color: Colors.teal.shade700),
                                    labelText: 'Enter an massage',

                                    labelStyle: TextStyle(
                                        color: Colors.teal.shade700
                                    )
                                ),
                              ),),
                              Container(
                                alignment: Alignment.center,
                                child: TextButton(
                                  //icon: Icon(Icons.send),
                                    child: Text(
                                        'Send ', style: TextStyle(color: Colors
                                        .teal.shade700)),
                                    onPressed: () {
                                  controller1.add_newConversation( result['id'].toString());
                                      Navigator.pop(context);
                                    }
                                ),
                              )
                            ],
                          ),
                        ));
                  }
                }
                else {

                Get.snackbar("error", "something was happen ");

                }
                }),





                                    SizedBox(height: 17,),
                                    Text('chat',
                                        style: TextStyle(color: Colors.teal,fontSize: 17,)),
                                  ],
                                  ),
                                  SizedBox(width: MediaQuery.of(context).size.width/9,),]):
                            Row(
                              //    crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Column(children: [
                                    FloatingActionButton(
                                        heroTag: "btn3",
                                        child:Icon(Icons.chat_outlined),
                                        backgroundColor: Colors.teal,
                                        onPressed: ()
                                        {

                                        controller.inconv('2');

                                        // this
                                        //     ._scaffoldKey
                                        //     .currentState!
                                        //     .showBottomSheet((ctx) =>
                                        // _buildBottomSheet(
                                        // ctx, customer_id));
                                        // }
                                          //----------------------------

                                     //     controller1.add_newConversation(customer_id, "kk");
                                        }),
                                    SizedBox(height: 17,),
                                    Text('chat',
                                        style: TextStyle(color: Colors.teal,fontSize: 17,)),
                                  ],
                                  )
                                  // SizedBox(height: 90,)

                                ]),


                          ])),


                    ],
                  );})
        );
    }
    );
  }
}

alldata(String key, value) {
  return Padding(
    padding: EdgeInsets.only(top: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.album_outlined,
            size: 20,
            color: Colors.teal[800],
          ),
        Flexible(child: Text(
          key,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
          ),
        ))  ,
         Flexible(child:Text(" : ",
              style: TextStyle(
                  color: Colors.teal[800],
                  fontSize: 26,
                  fontWeight: FontWeight.w900)) ) ,
         Flexible(child:  Text(
           value,
           style: TextStyle(
             color: Colors.black,
             fontSize: 20,
           ),
         )),
        ],
      ));
}

