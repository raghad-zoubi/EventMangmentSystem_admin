import 'package:flutter/material.dart';
import 'package:lara_push_noti/database/models/Books/Book_Model.dart';
import 'package:lara_push_noti/logic/controllers/Book/Book_Controller.dart';
import 'package:lara_push_noti/routes/app_pages.dart';

import '../my/My-Screen.dart';
import 'BookList.dart';
import 'package:get/get.dart';

class BooksScreen extends StatelessWidget {
  var controller = Get.put(Book_Controller());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Book_Controller>(
        init: Book_Controller(),
        builder: (controller) {
          return DefaultTabController(
            initialIndex: 1,
            length: 3,
            child: Scaffold(
              drawer: Drawer(
                elevation: 45,
                child: ProfileScreen(),
              ),
              backgroundColor: Colors.teal[50],
              appBar: AppBar(
                backgroundColor: Colors.teal,
                bottom: TabBar(
                  indicatorSize: TabBarIndicatorSize.values.first,
                  indicatorWeight: 5.0,
                  labelColor: Colors.white,
                  labelPadding: EdgeInsets.only(top: 1.0),
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.white,
                  onTap: (value){
                    print("------------------------------");
                    print(value);
                    print("------------------------------");


                    if(value==0){
                      controller.Show_Book_kind("archive");
                    }   if(value==1){
                      controller.Show_Book_kind("Accept");
                    }   if(value==2){
                      controller.Show_Book_kind("new");
                    }
                  },
                  tabs: [
                    Tab(

                      text: 'Archive',
                      icon: Icon(
                        Icons.layers_clear_sharp,
                        color: Colors.white,
                      ),
                      iconMargin: EdgeInsets.only(bottom: 10.0),
                    ), Tab(
                        text: 'Accepted',
                        icon: Icon(
                          Icons.layers_sharp,
                          color: Colors.white,
                        ),
                        iconMargin: EdgeInsets.only(bottom: 10.0),
                      ),

                   Tab(
                        text: 'New',
                        icon: Icon(
                          Icons.fiber_new_rounded,
                          color: Colors.white,
                        ),
                        iconMargin: EdgeInsets.only(bottom: 10.0),
                      ),

                  ],
                ),
              ),
              body: TabBarView(
                children: [
                  Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 1.4,
                      child:


                          controller.postloading.value
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              :
                              ListView.builder(
                                  itemCount: controller.allBooks.length,
                                  itemBuilder: (context, index) {
                                    var item = controller.allBooks[index];
                                    print("in list view builder");
                                    print(item.id);
                                    return item.name == "7777" &&
                                            item.id == 7777 &&
                                            item.date == '7777'
                                        ? Container(
                                            width: double.infinity,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                1.4,
                                            child: const Center(
                                                child: Text("no data")))
                                        : BookList(
                                            name: item.name,
                                            date: item.date,
                                            id: item.id,
                                        kind:"archive"
                                          );
                                  },
                                )),
                  Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 1.4,
                      child:

                          // Column(children: [

                          controller.postloading.value
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              :
                              //Text("uyu")
                              ListView.builder(
                                  itemCount: controller.allBooks.length,
                                  itemBuilder: (context, index) {
                                    var item = controller.allBooks[index];
                                    print("in list view builder");
                                    print(item.id);
                                    return item.name == "7777" &&
                                            item.id == 7777 &&
                                            item.date == '7777'
                                        ? Container(
                                            width: double.infinity,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                1.4,
                                            child: const Center(
                                                child: Text("no order")))
                                        : BookList(
                                            name: item.name,
                                            date: item.date,
                                            id: item.id,
                                        kind:"Accept"
                                          );
                                  },
                                )),
                  Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 1.4,
                      child:

                          // Column(children: [

                          controller.postloading.value
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              :
                              //Text("uyu")
                              ListView.builder(
                                  itemCount: controller.allBooks.length,
                                  itemBuilder: (context, index) {
                                    var item = controller.allBooks[index];
                                    print("in list view builder");
                                    print(item.id);
                                    return item.name == "7777" &&
                                            item.id == 7777 &&
                                            item.date == '7777'
                                        ? Container(
                                            width: double.infinity,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
                                                1.4,
                                            child: const Center(
                                                child: Text("no order")))
                                        : BookList(
                                            name: item.name,
                                            date: item.date,
                                            id: item.id,
                                           kind:"new"
                                          );
                                  },
                                ))
                ],
              ),
            ),
          );
          // ),);
        });
  }
}
