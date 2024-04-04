import 'package:flutter/material.dart';
import 'package:lara_push_noti/routes/app_pages.dart';
import 'package:get/get.dart';
class BookList extends StatelessWidget {
  var name;
  var date;
  var id;
  var kind;
  BookList({required this.name,required this.date,required this.id,required this.kind});
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        Get.toNamed(
           Routes.BookDetails,arguments: {"id":"$id","kind":"$kind"});

      },
      child: Container(
        padding: EdgeInsets.only(left: 26,right: 86,top: 30),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  SizedBox(width: 16,),
                  Expanded(
                    child: Container(
                    //  margin: EdgeInsets.only(bottom: 13),
                      padding: EdgeInsets.only(right:13,left: 13 ),
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[Row(children: [  Icon(Icons.arrow_right,size: 16,color: Colors.teal[800],),
                          Text(name, style: TextStyle(fontSize: 17),),],),

                          SizedBox(height: 6,),
                          // Text(widget.name),//style: TextStyle(fontSize: 13,color: Colors.grey.shade600, fontWeight: widget.id?FontWeight.bold:FontWeight.normal),),
                        ],
                      ),
                    ),
                  ),
                  Container(  //margin: EdgeInsets.only(bottom: 13),
               //     padding: EdgeInsets.only(right:42,left: 3 ),
                    child: Text(date),),

                ],
              ),
            ),

            //,style: TextStyle(fontSize: 12,fontWeight: widget.id?FontWeight.bold:FontWeight.normal),),

          ],
        ),

      ),

    );
  }
}