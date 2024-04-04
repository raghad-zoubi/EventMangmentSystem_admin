import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:animated_radial_menu/animated_radial_menu.dart';
import 'package:flutter/material.dart';
import 'package:lara_push_noti/logic/controllers/Button_Controller.dart';
import 'package:lara_push_noti/routes/app_pages.dart';
import '../add/Add_Screeen.dart';
import '../my/My-Screen.dart';


import '../books/Books-Screen.dart';
import '../chat/Chat-Screen.dart';
import '../home/Home-Screen.dart';
import 'package:get/get.dart';
import 'package:circular_menu/circular_menu.dart';

//
//
// var selectedIndex;
//
//
// @override
// Widget build(BuildContext context) {
//   return //SafeArea(
//     //  child:
//     Scaffold(
//       //child: (
//       body: listWidgets[selectedIndex],
//       bottomNavigationBar: ConvexAppBar(
//         // .badge({3: '21+'},
//
//         backgroundColor: Colors.teal.shade400,
//
//         elevation: 23,
//
//         gradient: LinearGradient(
//             colors: [Colors.teal.shade400, Colors.teal.shade900]),
//
//         items: const [
//           TabItem(icon: Icons.home),
//           TabItem(icon: Icons.book_outlined),
//           TabItem(
//             icon: Icons.message,
//           ),
//           //  TabItem(icon: Icons.bar_chart_sharp),
//           TabItem(
//             icon: Icons.perm_contact_calendar_rounded,
//           ),
//         ],
//
//         //initialActiveIndex: 0, //optional, default as 0
//
//         onTap: onItemTapped,
//       ),
//       //  )
//       //) ,
//     );
// }
//
// void onItemTapped(int index) {
//   setState(() {
//     selectedIndex = index;
//   });
// }
// }


class Button extends StatelessWidget {
  var controller = Get.put(ButtonController());
  var selectedIndex=0;

  List<Widget> listWidgets = [

    HomeScreen(),
    BooksScreen(),
    ChatScreen(),
    AddScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ButtonController>(
        init: ButtonController(),
        builder: (controller) {return
          Scaffold(

            body: listWidgets[controller.index.value],
            bottomNavigationBar: ConvexAppBar(
              backgroundColor: Colors.teal.shade400,

              elevation: 23,

              gradient: LinearGradient(
                  colors: [Colors.teal.shade400, Colors.teal.shade900]),

              items: const [
                TabItem(icon: Icons.home),
                TabItem(icon: Icons.book_outlined),
                TabItem(
                  icon: Icons.message,
                ),
                //  TabItem(icon: Icons.bar_chart_sharp),
                TabItem(
                  icon: Icons.my_library_add,
                ),
              ],
              onTap:(index) => {controller.onItemTapped(index),
              selectedIndex = controller.index.value,}
              //initialActiveIndex: 0, //optional, default as 0


            ),

          );});
  }
}






















//________________________________________
class RadialMenuUI extends StatelessWidget {
  //State<RadialMenuUI> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Radial Speed Dial"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            RadialMenu(
              children: [
                RadialButton(
                    icon: Icon(Icons.delete),
                    buttonColor: Colors.red,
                    onPress: () => Get.to(HomeScreen())),
                RadialButton(
                    icon: Icon(Icons.edit),
                    buttonColor: Colors.blue,
                    onPress: () => Get.to(HomeScreen())),
                RadialButton(
                    icon: Icon(Icons.add_circle),
                    buttonColor: Colors.yellow,
                    onPress: () => Get.to(HomeScreen())),
                RadialButton(
                    icon: Icon(Icons.mic_external_on),
                    buttonColor: Colors.indigo,
                    onPress: () => Get.to(HomeScreen())),
                // RadialButton(
                //     icon: Icon(Icons.watch),
                //     buttonColor: Colors.pink,
                //     onPress: () => Get.to(HomeScreen())),
                // RadialButton(
                //     icon: Icon(Icons.settings),
                //     buttonColor: Colors.blue,
                //     onPress: () => Get.to(HomeScreen())),
                // RadialButton(
                //     icon: Icon(Icons.mail_outline),
                //     buttonColor: Colors.yellow,
                //     onPress: () => Get.to(HomeScreen())),
                // RadialButton(
                //     icon: Icon(Icons.logout),
                //     buttonColor: Colors.red,
                //     onPress: () => Get.to(HomeScreen())),
              ],
            ),
            Positioned(
              top: 30,
              left: 10,
              child: ElevatedButton(
                  onPressed: () {
                    if (Get.isDarkMode) {
                      Get.changeTheme(ThemeData.light());
                    } else {
                      Get.changeTheme(ThemeData.dark());
                    }
                  },
                  child: Text("change Theme")),
            )
          ],
        ),
      ),
    );
  }
}


//________________________________________

class Circular_Menu extends StatefulWidget {
  @override
  _Circular_MenuState createState() => _Circular_MenuState();
}

class _Circular_MenuState extends State<Circular_Menu> {
  String _colorName = 'No';
  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: CircularMenu(
          alignment: Alignment.bottomRight,
          backgroundWidget: Center(
            child:
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 28),
                children: <TextSpan>[
                  TextSpan(
                    text: _colorName,
                    style:
                    TextStyle(color: _color, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' button is clicked.'),
                ],
              ),
            ),
          ),
          toggleButtonColor: Colors.teal,
          items: [
            CircularMenuItem(onTap: () {},
              // icon: Icons.add,
              // color: Colors.green,
              // onTap: () {
              // setState(() {
              //   _color = Colors.green;
              //   _colorName = 'Green';
              // });
              // }
            ),
            CircularMenuItem(
                icon: Icons.delete,
                color: Colors.red,
                onTap: () {
                  // setState(() {
                  //   _color = Colors.red;
                  //   _colorName = 'Blue';
                  // });
                }),
            CircularMenuItem(
                icon: Icons.edit,
                color: Colors.orange,
                onTap: () {
                  // setState(() {
                  //   _color = Colors.orange;
                  //   _colorName = 'Orange';
                  // });
                }),
            CircularMenuItem(
                icon: Icons.all_out_sharp,
                color: Colors.purple,
                onTap: () {
                  // setState(() {
                  //   _color = Colors.purple;
                  //   _colorName = 'Purple';
                  // });
                }),
            CircularMenuItem(
                icon: Icons.add_to_photos_rounded,
                color: Colors.brown,
                onTap: () {
                  // setState(() {
                  //   _color = Colors.brown;
                  //   _colorName = 'Brown';
                  // });
                })
          ],
        ),
      ),
    );
  }
}

//________________________________________

class Circular_Menu2 extends StatelessWidget {
  late String _colorName;

  late Color _color;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    // MaterialApp(
    //  debugShowCheckedModeBanner: false,

    Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(1.0),
                bottomLeft: Radius.circular(1.0))),
        elevation: 5,
        backgroundColor: Colors.teal,
        leading: IconButton(
          //padding: EdgeInsets.only(right: 22,left: 22),
          onPressed: () {
            // Get.offAllNamed(Routes.button);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 29,
          ),
        ),

        //Icon(Icons.arrow_back, color: Colors.white,),
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 22, left: 22),
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_drop_down_circle,
              color: Colors.white,
              size: 29,
            ),
          ),
          // TextField(
          //   decoration: InputDecoration(
          //     hintText: "Search...",
          //     hintStyle: TextStyle(color: Colors.grey.shade600),
          //     prefixIcon: Icon(
          //       Icons.search,
          //       color: Colors.grey.shade600,
          //       size: 17,
          //     ),
          //     filled: true,
          //     fillColor: Colors.teal.shade100,
          //     contentPadding: EdgeInsets.only(top: 5),
          //     enabledBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(700),
          //         borderSide: BorderSide(color: Colors.grey.shade100)),
          //   ),
          // ),
        ],
      ),
      body: CircularMenu(
        alignment: Alignment.bottomRight,
        backgroundWidget: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                  padding: const EdgeInsets.all(100.0),
                  child: Text('jjjjjjjjjjj')

              ),
            ),
          ],
        ),
        curve: Curves.easeInExpo,
        reverseCurve: Curves.bounceInOut,
        toggleButtonColor: Colors.teal,
        items: [

          CircularMenuItem(
              icon: Icons.delete,
              color: Colors.red,
              onTap: () {
                // setState(() {
                //   _color = Colors.red;
                //   _colorName = 'Blue';
                // });
              }),
          CircularMenuItem(
              icon: Icons.edit,
              color: Colors.orange,
              onTap: () {
                // setState(() {
                //   _color = Colors.orange;
                //   _colorName = 'Orange';
                // });
              }),
          CircularMenuItem(
              icon: Icons.all_out_sharp,
              color: Colors.purple,
              onTap: () {
                // setState(() {
                //   _color = Colors.purple;
                //   _colorName = 'Purple';
                // });
              }),
          CircularMenuItem(
              icon: Icons.add_to_photos_rounded,
              color: Colors.brown,
              onTap: () {
                // setState(() {
                //   _color = Colors.brown;
                //   _colorName = 'Brown';
                // });
              })
        ],
      ),
    ),
    );
  }
}
//____________________
