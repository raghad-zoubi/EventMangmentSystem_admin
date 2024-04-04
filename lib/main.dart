import 'dart:async';
import 'dart:convert';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:lara_push_noti/logic/controllers/auth/auth_Controller.dart';
import 'package:booking_range_slider/booking_range_slider.dart';
import 'package:lara_push_noti/notificationApi.dart';
import 'package:lara_push_noti/routes/app_pages.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:booking_calendar/booking_calendar.dart';
import 'database/models/chat/message_Model.dart';
import 'logic/controllers/auth/auth_Controller.dart';
import 'package:flutter/material.dart' hide showMenu;
import 'package:flutter/material.dart' as material show showMenu;
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:collection';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import 'package:get/get.dart';

var e;
var token;
var name;
var role;
var write_info;
var fcm_token;

var API = 'http://192.168.43.211:8000/api';
var APIimage = 'http://192.168.43.211:8000/';
class asly{}
Future main() async {

runApp(MyHomePage(),);

// runApp(LOgout());

}

//
// class NOTIFICaTION{}
//
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:
      MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
   //   initialRoute:  Routes.Splash,
      //  initialRoute:Routes.button,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,

    );
  }
}


class logoutr{}
class LOgout extends StatefulWidget {
  @override
  _LOgoutState createState() => _LOgoutState();
}
class _LOgoutState extends State<LOgout> {

  var storage = const FlutterSecureStorage();


  Future clerestorage() async {
    await(storage.deleteAll());
    var iys = await(storage.read(key: 'token'));
    print(iys);
  }

  @override
  void initState() {
    clerestorage();
    Get.put(AuthController(), permanent: true);

    super.initState();
    Timer(Duration(seconds: 3),
            () =>
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder:
                    (context) =>
                    SecondScreen()
                )
            )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: FlutterLogo()
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: Routes.Splash,
      //  initialRoute:Routes.button,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,

    );
  }}




// void main() =>  runApp(MaterialApp(home: MyApp()));
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Material App',
//       home: Scaffold(
//         appBar: AppBar(title: Text('Parent Child Checkox')),
//         body:  Center(child:
//     )
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Material App',
//       home: Scaffold(
//         appBar: AppBar(title: Text('Parent Child Checkox')),
//         body: Column(
//           children: [
//             ParentChildCheckbox(
//               parent: Text('Parent 1'),
//               children: [
//                 Text('Children 1.1'),
//                 Text('Children 1.2'),
//                 Text('Children 1.3'),
//                 Text('Children 1.4'),
//               ],
//               parentCheckboxColor: Colors.orange,
//               childrenCheckboxColor: Colors.red,
//             ),
//             ParentChildCheckbox(
//               parent: Text('Parent 2'),
//               children: [
//                 Text('Children 2.1'),
//                 Text('Children 2.2'),
//                 Text('Children 2.3'),
//                 Text('Children 2.4'),
//               ],
//             ),
//             ElevatedButton(
//               child: Text('Get Data'),
//               onPressed: () {
//                 log(ParentChildCheckbox.isParentSelected.toString());
//                 log(ParentChildCheckbox.selectedChildrens.toString());
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }




class HomePageChacBox extends StatefulWidget {
  @override
  _HomePageChacBoxState createState() => _HomePageChacBoxState();
}

class _HomePageChacBoxState extends State<HomePageChacBox> {
  bool value = false;

  @override
//App widget tree
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('GeeksforGeeks'),
          backgroundColor: Colors.greenAccent[400],
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          ), //IcoButton
        ), //AppBar
        body: Center(
          /** Card Widget **/
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: 200,
                height: 200,
                child:
                Column(

                  children: [
                    Text(
                      'Size',
                      style: TextStyle(
                          color: Colors.greenAccent[400],
                          fontSize: 30), //TextStyle
                    ), //Text
                    SizedBox(height: 10),
                    Column(
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ), //SizedBox
                        Text(
                          'Man ',
                          style: TextStyle(fontSize: 17.0),
                        ), //Text
                        SizedBox(width: 10), //SizedBox
                        /** Checkbox Widget **/
                        Checkbox(
                          value: value,
                          onChanged: (bool? value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                          // onChanged: (bool value) {
                          //   setState(() {
                          //     this.value = value;
                          //   });
                          // },
                        ), //Che
                        Text(
                          'Woman ',
                          style: TextStyle(fontSize: 17.0),
                        ), //Text
                        SizedBox(width: 10), //SizedBox
                        /** Checkbox Widget **/
                        Checkbox(
                          value: value,
                          onChanged: (bool? value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                          // onChanged: (bool value) {
                          //   setState(() {
                          //     this.value = value;
                          //   });
                          // },
                        ),
                        Text(
                          'Kids ',
                          style: TextStyle(fontSize: 17.0),
                        ), //Text
                        SizedBox(width: 10), //SizedBox
                        /** Checkbox Widget **/
                        Checkbox(
                          value: value,
                          onChanged: (bool? value1) {
                            setState(() {
                              this.value = value1!;
                            });
                          },
                          // onChanged: (bool value) {
                          //   setState(() {
                          //     this.value = value;
                          //   });
                          // },
                        ), //Checkbox
                      ], //<Widget>[]
                    ), //Row
                  ],
                ), //Column
              ), //SizedBox
            ), //Padding
          ), //Card
        ), //Center//Center
      ), //Scaffold
    ); //MaterialApp
  }
}








//__________________________________________________________________________________________________________________________
class color2{}


// void main() => runApp(App());
//
// class App extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Material Color Picker",
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatefulWidget {
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State {
// // Use temp variable to only update color when press dialog 'submit' button
//   late ColorSwatch _tempMainColor;
//   late Color _tempShadeColor;
//   ColorSwatch _mainColor = Colors.blue;
//   Color? _shadeColor = Colors.blue[800];
//
//   void _openDialog( ) {
//     showDialog(
//       context: context,
//       builder: (_) {
//         return AlertDialog(
//           contentPadding: const EdgeInsets.all(6.0),
//           title: Text('color'),
//           content:  MaterialColorPicker(
//             selectedColor: _mainColor,
//             allowShades: false,
//             onMainColorChange: (color) => setState(() { _tempMainColor = color!;
//           print(_tempMainColor);
//         })
//         ),
//           actions: [
//             FlatButton(
//               child: Text('CANCEL'),
//               onPressed: Navigator.of(context).pop,
//             ),
//             FlatButton(
//               child: Text('SUBMIT'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 // setState(() => _mainColor = _tempMainColor);
//                 // setState(() => _shadeColor = _tempShadeColor);
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   // void _openColorPicker() async {
//   //   _openDialog(
//   //     "Color picker",
//   //     MaterialColorPicker(
//   //       selectedColor: _shadeColor,
//   //       onColorChange: (color) => setState(() => _tempShadeColor = color),
//   //       onMainColorChange: (color) => setState(() => _tempMainColor = color!),
//   //     ),
//   //   );
//   // }
//
//   void _openMainColorPicker() async {
//     _openDialog(
//
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             "Material color picker",
//            // style: Theme.of(context).textTheme.headline,
//           ),
//           const SizedBox(height: 62.0),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // CircleAvatar(
//               //   backgroundColor: _mainColor,
//               //   radius: 35.0,
//               //   child: const Text("MAIN"),
//               // ),
//               const SizedBox(width: 16.0),
//               CircleAvatar(
//           //      backgroundColor: _shadeColor,
//                 radius: 35.0,
//                 child: const Text("SHADE"),
//               ),
//             ],
//           ),
//           const SizedBox(height: 32.0),
//           // OutlineButton(
//           //   onPressed: _openColorPicker,
//           //   child: const Text('Show color picker'),
//           // ),
//        //   OutlinedButton(onPressed: _openColorPicker,child: const Text('Show color picker')),
//           const SizedBox(height: 16.0),
//           // OutlineButton(
//           //   onPressed: _openMainColorPicker,
//           //   child: const Text('Show main color picker'),
//           // ),
//           OutlinedButton( onPressed: _openDialog,  child: const Text('Show main color picker'),),
//           const Text('(only main color)')
//         ],
//       ),
//     );
//   }
// }


class lise{}

// const totalItems = 100;
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Kindacode.com',
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   final random = Random();
//
//   // Generate dummy data
//   final List<String> _myList = List.generate(totalItems, (i) => "Item $i");
//
//   final ItemScrollController _itemScrollController = ItemScrollController();
//
//   // This function will be triggered when the user presses the floating button
//   void _scrollToIndex(int index) {
//     _itemScrollController.scrollTo(
//         index: index,
//         duration: const Duration(seconds: 2),
//         curve: Curves.easeInOutCubic);
//   }
//
//   // The view will scroll to the item which has the index of 50
//   // You can specify another number if you like
//   final _desiredItemIndex = 50;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Kindacode.com'),
//       ),
//       body: ScrollablePositionedList.builder(
//         itemScrollController: _itemScrollController,
//         itemCount: _myList.length,
//         itemBuilder: (context, index) {
//           return Card(
//             key: ValueKey(_myList[index]),
//             margin: const EdgeInsets.all(20),
//             elevation: 10,
//             child: Container(
//               // give each container a random height
//               height: random.nextDouble() * 1050 + 50,
//               color: _desiredItemIndex == index ? Colors.purple : Colors.amber,
//               alignment: Alignment.center,
//               child: Text(
//                 _myList[index],
//                 style: const TextStyle(fontSize: 24),
//               ),
//             ),
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//           onPressed: () => _scrollToIndex(_desiredItemIndex),
//           child: const Icon(Icons.arrow_downward)),
//     );
//   }
// }
//
//
// class ListDetailWidget extends StatelessWidget {
//   // _DetailPageState d =_DetailPageState();
//   var f = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       PageView.builder(
//         itemCount: 7,
//         //allowImplicitScrolling: true,
//         itemBuilder: (context, index) {
//           return
//             ListView(children: [
//               Container(child: Center(child: Text("jjjj" + '${++f}'),),
//                 color: Colors.white54,)
//             ],);
//           // GestureDetector(
//           // onTap: () {
//           //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//           //     return DetailPage(index);
//           //   }));
//           // },
//           // child:
//
//           // Hero(
//           //   tag: index,
//           //   child: Card(
//           //     shape: RoundedRectangleBorder(
//           //       borderRadius: BorderRadius.circular(8),
//           //     ),
//           //     child: Container(
//           //       padding: EdgeInsets.all(8),
//           //       child: Stack(
//           //         children: <Widget>[
//           //           Positioned(
//           //             top: 0,
//           //             bottom: 20,
//           //             child: Image.asset(
//           //               'images/camera.png',
//           //               fit: BoxFit.cover,
//           //             ),
//           //           ),
//           //           // Positioned(
//           //           //   right: 10,
//           //           //   bottom: 0,
//           //           //   child: CircleAvatar(
//           //           //     backgroundColor: Colors.red,
//           //           //     child: Icon(
//           //           //       Icons.arrow_forward,
//           //           //       color: Colors.white,
//           //           //       size: 24,
//           //           //     ),
//           //           //   ),
//           //           // )
//           //         ],
//           //       ),
//           //     ),
//           //   ),
//           // ),
//           // );
//         },
//
//       );
//   }
// }


class chat1{}

// void main() {
//   runApp(new FriendlychatApp());
// }
//
// final ThemeData kIOSTheme = new ThemeData(
//   primarySwatch: Colors.orange,
//   primaryColor: Colors.grey[100],
//   primaryColorBrightness: Brightness.light,
// );
//
// final ThemeData kDefaultTheme = new ThemeData(
//   primarySwatch: Colors.purple,
//   accentColor: Colors.orangeAccent[400],
// );
//
// const String _name = "Your Name";
//
// class FriendlychatApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: "Friendlychat",
//       theme: defaultTargetPlatform == TargetPlatform.iOS
//           ? kIOSTheme
//           : kDefaultTheme,
//       home: new ChatScreenn(),
//     );
//   }
// }
//
// class ChatMessage extends StatelessWidget {
//   ChatMessage({required this.text, required this.animationController});
//   final String text;
//   final AnimationController animationController;
//   @override
//   Widget build(BuildContext context) {
//     return new SizeTransition(
//         sizeFactor: new CurvedAnimation(
//             parent: animationController,
//             curve: Curves.easeOut
//         ),
//         axisAlignment: 0.0,
//         child: new Container(
//           margin: const EdgeInsets.symmetric(vertical: 10.0),
//           child: new Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               new Container(
//                 margin: const EdgeInsets.only(right: 16.0),
//                 child: new CircleAvatar(child: new Text(_name[0])),
//               ),
//               new Expanded(
//                 child: new Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: <Widget>[
//                     new Text(_name, //style: Theme.of(context).textTheme.subhead
//                     ),
//                     new Container(
//                       margin: const EdgeInsets.only(top: 5.0),
//                       child: new Text(text),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         )
//     );
//   }
// }
//
// class ChatScreenn extends StatefulWidget {
//   @override
//   State createState() => new ChatScreennState();
// }
//
// class ChatScreennState extends State<ChatScreenn> with TickerProviderStateMixin {
//   final List<ChatMessage> _messages = <ChatMessage>[];
//   final TextEditingController _textController = new TextEditingController();
//   bool _isComposing = false; // make it true whenever the user is typing in the input field.
//
//   /* Modify _handleSubmitted to update _isComposing to false
//   when the text field is cleared.*/
//   void _handleSubmitted(String text) {
//     _textController.clear();
//     setState(() {
//       _isComposing = false;
//     });
//     ChatMessage message = new ChatMessage(
//       text: text,
//       animationController: new AnimationController(
//         duration: new Duration(milliseconds: 700),
//         vsync: this,
//       ),
//     );
//     setState(() {
//       _messages.insert(0, message);
//     });
//     message.animationController.forward();
//   }
//
//   void dispose() {
//     for (ChatMessage message in _messages)
//       message.animationController.dispose();
//     super.dispose();
//   }
//
//   Widget _buildTextComposer() {
//     return new IconTheme(
//       data: new IconThemeData(color: Theme.of(context).accentColor),
//       child: new Container(
//           margin: const EdgeInsets.symmetric(horizontal: 8.0),
//           child: new Row(children: <Widget>[
//             new Flexible(
//               child: new TextField(
//                 controller: _textController,
//                 onChanged: (String text) {
//                   setState(() {
//                     _isComposing = text.length > 0;
//                   });
//                 },
//                 onSubmitted: _handleSubmitted,
//                 decoration:
//                 new InputDecoration.collapsed(hintText: "Send a message"),
//               ),
//             ),
//             new Container(
//                 margin: new EdgeInsets.symmetric(horizontal: 4.0),
//                 child: Theme.of(context).platform == TargetPlatform.iOS
//                     ? new CupertinoButton(
//                   child: new Text("Send"),
//                   onPressed: _isComposing
//                       ? () => _handleSubmitted(_textController.text)
//                       : null,
//                 )
//                     : new IconButton(
//                   icon: new Icon(Icons.send),
//                   onPressed: _isComposing
//                       ? () => _handleSubmitted(_textController.text)
//                       : null,
//                 )),
//           ]),
//           decoration: Theme.of(context).platform == TargetPlatform.iOS
//               ? new BoxDecoration(
//               border:
//               new Border(top: new BorderSide(color: Colors.grey)))
//               : null),
//     );
//   }
//
//   Widget build(BuildContext context) {
//     return
//       new Scaffold(
//       appBar: new AppBar(
//           title: new Text("Friendlychat"),
//           elevation:
//           Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0
//       ),
//       body:
//       new Container(
//           child: new Column(
//               children: <Widget>[
//                 new Flexible(
//                     child: new ListView.builder(
//                       padding: new EdgeInsets.all(8.0),
//                       reverse: true,
//                       itemBuilder: (_, int index) => _messages[index],
//                       itemCount: _messages.length,
//                     )
//                 ),
//                 new Divider(height: 1.0),
//                 new Container(
//                   decoration: new BoxDecoration(
//                       color: Theme.of(context).cardColor),
//                   child: _buildTextComposer(),
//                 ),
//               ]
//           ),
//           decoration:
//           Theme.of(context).platform == TargetPlatform.iOS ? new BoxDecoration(border:
//           new Border(top: new BorderSide(color: Colors.grey))) : null),//new
//     );
//   }}

class google_font{}

//
// class fontgoogle extends StatelessWidget {
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:Text('all kind of text ',
//           style: GoogleFonts.abhayaLibre(
//             color: const Color.fromARGB(255, 59, 59, 61),
//             fontSize: 10,
//             fontWeight: FontWeight.w900,
//           ),
//         ),
//       ),body:SingleChildScrollView(child: Center(child:   Column(crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment:MainAxisAlignment.center,
//         children: [
//           Text('abhayaLibre',
//             style: GoogleFonts.abhayaLibre(
//               color: const Color.fromARGB(255, 59, 59, 61),
//               fontSize: 22,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//           SizedBox(height: 5,),
//           Text('aBeeZee',
//             style: GoogleFonts.aBeeZee(
//               color: const Color.fromARGB(255, 59, 59, 61),
//               fontSize: 22,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//           SizedBox(height: 5,),
//           Text('abrilFatface',
//             style: GoogleFonts.abrilFatface(
//               color: const Color.fromARGB(255, 59, 59, 61),
//               fontSize: 22,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//           SizedBox(height: 5,),
//           Text('acme',
//             style: GoogleFonts.acme(
//               color: const Color.fromARGB(255, 59, 59, 61),
//               fontSize: 22,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//           SizedBox(height: 5,),
//           Text('admina',
//             style: GoogleFonts.adamina(
//               color: const Color.fromARGB(255, 59, 59, 61),
//               fontSize: 22,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//           SizedBox(height: 5,),
//           Text('actor',
//             style: GoogleFonts.actor(
//               color: const Color.fromARGB(255, 59, 59, 61),
//               fontSize: 22,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//           SizedBox(height: 5,),
//           Text('adventpro',
//             style: GoogleFonts.adventPro(
//               color: const Color.fromARGB(255, 59, 59, 61),
//               fontSize: 22,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//           SizedBox(height: 5,),
//           Text('aclonica',
//             style: GoogleFonts.aclonica(
//               color: const Color.fromARGB(255, 59, 59, 61),
//               fontSize: 22,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//           SizedBox(height: 5,),
//           Text('akayaKanadaka',
//             style: GoogleFonts.akayaKanadaka(
//               color: const Color.fromARGB(255, 59, 59, 61),
//               fontSize: 22,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//           SizedBox(height: 5,),
//           Text('alegreyaSansSc',
//             style: GoogleFonts.alegreyaSansSc(
//               color: const Color.fromARGB(255, 59, 59, 61),
//               fontSize: 22,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//           SizedBox(height: 5,),
//           Text('alikeAngular',
//             style: GoogleFonts.alikeAngular(
//               color: const Color.fromARGB(255, 59, 59, 61),
//               fontSize: 22,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//           SizedBox(height: 5,),
//           Text('alegreya',
//             style: GoogleFonts.alegreya(
//               color: const Color.fromARGB(255, 59, 59, 61),
//               fontSize: 22,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//           SizedBox(height: 5,),
//           Text('alata',
//             style: GoogleFonts.alata(
//               color: const Color.fromARGB(255, 59, 59, 61),
//               fontSize: 22,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//           SizedBox(height: 5,),
//
//           Text('aBeeZee',
//             style: GoogleFonts.aBeeZee(
//               color: const Color.fromARGB(255, 59, 59, 61),
//               fontSize: 22,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//           SizedBox(height: 5,),
//         ]),) ,)
//
//
//
//     );
//   }
// }

class bottomshet{}

//
// void main() => runApp(new MyApp());
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return new MaterialApp(
//       title: 'Flutter Demo',
//       theme: new ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home:TestPage()
//       //new MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class TestPage extends StatefulWidget {
//   const TestPage({Key? key}) : super(key: key);
//
//   @override
//   _TestPageState createState() => _TestPageState();
// }
//
// class _TestPageState extends State<TestPage> {
//   String textResult = "";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("text Result ${textResult}"),
//                 TextButton(
//                     onPressed: () {
//                       showModalBottomSheet(
//
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
//                           backgroundColor: Colors.white,
//                           context: context,
//                           isScrollControlled: true,
//                           builder: (context) => Padding(
//                             padding: const EdgeInsets.symmetric(horizontal:30 ),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisSize: MainAxisSize.min,
//                               children: <Widget>[
//                                 // GestureDetector(
//                                 //   behavior: HitTestBehavior.opaque,
//                                 //   child: Container(height: 5,
//                                 //     child: Text('Bottom sheet widget'),),
//                                 //   onTap: () {
//                                 //
//                                 //   },
//                                 // ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(top: 40.0,left: 20,bottom: 40),
//                                   child: Text('Enter your masseg',
//                                       style: TextStyle(color: Colors.teal.shade700)),
//                                 ),
//                                 SizedBox(
//                                   height: 8.0,
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.only(
//                                       bottom: MediaQuery.of(context).viewInsets.bottom),
//                                   child: TextField(
//                                     decoration: InputDecoration(
//                                         hintText: 'masseg'
//                                     ),
//                                     autofocus: true,
//                                   ///  controller: _newMediaLinkAddressController,
//                                   ),
//                                 ),
//          TextButton(onPressed: (){   Navigator.of(context).pop();}, child: Text("done")),
//                                 SizedBox(height: 80),
//                               ],
//                             ),
//                           ));
//
//                       //----------------------------
//
//                     },
//                     child: Text('Press'))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//


class data{}
// void main() => runApp(MaterialApp(home:_WidgetPageState()));
//
//
// class _WidgetPageState extends StatelessWidget {
//   late DateTime _selectedDate;
//   DateTime now = DateTime.now();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body:
//         Center(
//           child: Container(
//
//             padding: const EdgeInsets.symmetric(horizontal: 25),
//           //  child: Expanded(
//               child: Row(
//                 children: <Widget>[
//              Expanded(child:
//               Container(
//               child: InputDecorator(
//               decoration: InputDecoration(
//               labelText: "expration_date",
//                 icon:Icon(Icons.date_range, color: Colors.teal) ,
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(5.0),
//                 ),
//               ),
//            // child: Icon(Icons.date_range, color: Colors.teal),
//             child: DatePickerWidget(
//
//               looping: false, // default is not looping
//               firstDate: DateTime(1990, 01, 01),
//               lastDate: DateTime(2030, 1, 1),
//               initialDate: DateTime(1991, 10, 12),
//
//               dateFormat: "dd-MMM-yyyy",
//               locale: DatePicker.localeFromString('en'),
//               onChange: (DateTime newDate, _) =>
//               _selectedDate = newDate,
//               pickerTheme: const DateTimePickerTheme(
//                 itemTextStyle:
//                 TextStyle(color: Colors.black, fontSize: 19),
//                 dividerColor: Colors.teal,
//               ),
//             ),
//           ),
//         ),),
//
//                   Expanded(
//                     child: TextButton(
//                       onPressed: (){
//
//                         print('current_date: $_selectedDate');
//                       },
//                       child: const Text('submit'),
//                     ),
//                   ),
//                 ],
//               ),
//            // ),
//           ),
//         ),
//       ),
//     );
//   }
// }
class Pop_Meue_In_Long_Press{}
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Popup Menu Usage',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Popup Menu Usage', ),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({ required this.title}) ;
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   var _count = 0;
//   var _tapPosition;
//
//   void _showCustomMenu() {
//     final RenderObject? overlay = Overlay.of(context)!.context.findRenderObject();
//     //Overlay.of(context).context.findRenderObject();
//
//     showMenu(
//         context: context,
//         items: <PopupMenuEntry<int>>[PlusMinusEntry()],
//         position: RelativeRect.fromRect(
//             _tapPosition & const Size(40, 40), // smaller rect, the touch area
//             Offset.zero & const Size(40, 40),   // Bigger rect, the entire screen
//         )
//     // This is how you handle user selection
//
//     )
//     ;
//
//
//   }
//
//   void _storePosition(TapDownDetails details) {
//     _tapPosition = details.globalPosition;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             GestureDetector(
//               // This does not give the tap position ...
//               onLongPress: _showCustomMenu,
//
//               // Have to remember it on tap-down.
//               onTapDown: _storePosition,
//
//               child: Container(
//                 color: Colors.amberAccent,
//                 padding: const EdgeInsets.all(100.0),
//                 child: Text(
//                   '$_count',
//                   style: const TextStyle(
//                       fontSize: 100, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class PlusMinusEntry extends PopupMenuEntry<int> {
//   @override
//   double height = 100;
//
//
//   @override
//   PlusMinusEntryState createState() => PlusMinusEntryState();
//
//   @override
//   bool represents(int? n) {
//   return n == 1 || n == -1;
//   }
// }
//
// class PlusMinusEntryState extends State<PlusMinusEntry> {
//   void _plus1() {
//     print("fff");
//     // This is how you close the popup menu and return user selection.
//   //  Navigator.pop<int>(context, 1);
//   }
//
//   void _minus1() {
//     //  print("jjjj");
//    Navigator.pop<int>(context, -1);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: <Widget>[
//         Expanded(child: FlatButton(onPressed: _plus1, child: Text('delete'))),
//         Expanded(child: FlatButton(onPressed: _minus1, child: Text('cancle'))),
//       ],
//     );
//   }
// }

class collor{}



//void main() => runApp( MaterialApp(home: MyAppu()));
//
// class MyAppu extends StatefulWidget {
//
//
//   @override
//   State<StatefulWidget> createState() => _MyAppuState();
// }
//
// class _MyAppuState extends State<MyAppu> {
//   bool lightTheme = true;
//   Color currentColor = Colors.amber;
// //  List<Color> currentColors = [Colors.yellow, Colors.green];
//   var colorHistory = <Color>{};
//
//   void changeColor(Color color) => setState(() {
//
//     currentColor = color;
//     print (color);
//     colorHistory.add(color);
//     print(colorHistory);
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     //   final foregroundColor = useWhiteForeground(currentColor)
//
//     return
//       AnimatedTheme(
//       data: lightTheme ? ThemeData.light() : ThemeData.dark(),
//       child: Builder(builder: (context) {
//         return Scaffold(
//           appBar: AppBar(
//             title: const Text('Flutter Color Picker Example'),
//             backgroundColor: currentColor,
//             //    foregroundColor: foregroundColor,
//
//           ),
//           body: Container(
//             child: InkWell(
//               onTap: () {
//                 showColorPicker();
//               },
//
//             ),
//           ),
//         );
//       }),
//     );
//   }
//
//   void showColorPicker() {
//     showDialog(context: context, builder: (BuildContext context) {
//       return AlertDialog(
//         title: Text("Pick a color"),
//         content: SingleChildScrollView(
//           child: ColorPicker(
//               pickerColor: Color(0xff443a49),
//               paletteType: PaletteType.hueWheel,
//               onColorChanged: changeColor
//           ),
//         ),
//       );
//     });
//   }
// }
class chat2{}

//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(
//     MaterialApp(
//       home: ChatScreen(),
//     ),
//   );
// }
//
// class ChatScreen extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return ChatScreenState();
//   } //
// }
//
// // Add the ChatScreenState class definition in main.dart.
//
// class ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
//   final TextEditingController _textController = TextEditingController();
//   Stream firestoreStream = FirebaseFirestore.instance
//       .collection("chats")
//       .doc("david_aaron")
//       .collection("david_aaron")
//       .orderBy('timestamp', descending: true)
//       .snapshots();
//
//   void _handleSubmitted(String text) async{
//     await FirebaseFirestore.instance
//         .collection("chats")
//         .doc("david_aaron")
//         .collection("david_aaron")
//         .add({
//       "content":text
//     });
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Friendlychat")),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: StreamBuilder(
//                 stream: firestoreStream,
//                 builder: (context, snapshot) {
//                   if (snapshot.hasData) {
//                     QuerySnapshot doc = snapshot.data as QuerySnapshot;
//                     List<String> msgs = [];
//                     doc.docs.forEach((e) {
//                       Map s = e.data() as Map<String, dynamic>;
//                       msgs.add(s['content']);
//                     });
//
//                     // return Container(child: Text("DONE"));
//                     return Flexible(
//                       child: ListView.builder(
//                         padding: EdgeInsets.all(8.0), //
//                         reverse: true, //
//                         itemBuilder: (_, int index) => ChatMessage(
//                           animate: index == 0,
//                           key: UniqueKey(),
//                           text: msgs[index],
//                         ), //
//                         itemCount: msgs.length, //
//                       ), //
//                     );
//                   }
//                   return Text("pop");
//                     //Center(child: Constants.loadingIndicator);
//                 }),
//           ),
//           Divider(height: 1.0), //
//           Container(
//             //
//             decoration: BoxDecoration(color: Theme.of(context).cardColor), //
//             child: _buildTextComposer(), //modified
//           ), //
//         ], //
//       ), //
//     );
//   }
//
//   Widget _buildTextComposer() {
//     return IconTheme(
//       //
//       data: IconThemeData(color: Theme.of(context).colorScheme.secondary), //
//       child: Container(
//         //modified
//         margin: const EdgeInsets.symmetric(horizontal: 8.0),
//         child: Row(
//           children: <Widget>[
//             Flexible(
//               child: TextField(
//                 controller: _textController,
//                 onChanged: (String text) {
//
//                 },
//                 onSubmitted: _handleSubmitted,
//                 decoration:
//                 const InputDecoration.collapsed(hintText: "Send a message"),
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 4.0),
//               child: IconButton(
//                   icon: Icon(Icons.send),
//                   onPressed: () =>
//                       _handleSubmitted(_textController.text) //modified
//
//               ),
//             ),
//           ],
//         ),
//       ), //
//     );
//   }
// }
//
// class ChatMessage extends StatefulWidget {
//   ChatMessage({
//     Key? key,
//     required this.text,
//     this.animate = false,
//   }) : super(key: key);
//   final String text;
//   final bool animate;
//
//   @override
//   State<ChatMessage> createState() => _ChatMessageState();
// }
//
// class _ChatMessageState extends State<ChatMessage>
//     with TickerProviderStateMixin {
//   late AnimationController animationController;
//   late double opacity;
//   @override
//   void initState() {
//     super.initState();
//     animationController = AnimationController(
//         vsync: this,
//         duration: Duration(milliseconds: widget.animate ? 800 : 0));
//     opacity = .7;
//     animationController.addListener(() {
//       if (animationController.isCompleted) {
//         print("completed");
//         setState(() {
//           opacity = 1;
//         });
//       }
//     });
//     animationController.forward();
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     animationController.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Opacity(
//       opacity: widget.animate ? opacity : 1,
//       child: SizeTransition(
//           sizeFactor: CurvedAnimation(
//             parent: animationController,
//             curve: Curves.linearToEaseOut,
//           ),
//           axisAlignment: 0.0,
//           child: Container(
//             margin: const EdgeInsets.symmetric(vertical: 10.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Container(
//                   width: 200,
//                   height: 40,
//                   decoration: BoxDecoration(
//                     color: Colors.grey,
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 8.0, top: 8),
//                     child: Container(
//                       child: Text(widget.text),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//       ),
//     );
//   }
// }

class clendar{}
// void main() {
//
//   runApp(const MyApp());
//
// }

//
// class MyApp extends StatelessWidget {
//
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//
//       title: 'Flutter  Beautiful Slider',
//
//       debugShowCheckedModeBanner: false,
//
//       home: Cal(width: 54,height: 44,),
//
//     );
//
//   }
//
// }
//
// class Cal extends StatefulWidget {
//
//   const Cal({ required this.width,
//     required this.height,}) ;
//   final double width;
//   final double height;
//   @override
//   State<Cal> createState() => _CalState();
// }
//
// class _CalState extends State<Cal> {
//
//   final now = DateTime.now();
//   late BookingService mockBookingService;
//
//   @override
//   void initState() {
//     super.initState();
//     // DateTime.now().startOfDay
//     // DateTime.now().endOfDay
//     mockBookingService = BookingService(
//         serviceName: 'Mock Service',
//         serviceDuration: 30,
//         bookingEnd: DateTime(now.year, now.month, now.day, 18, 0),
//         bookingStart: DateTime(now.year, now.month, now.day, 8, 0));
//   }
//
//   Stream<dynamic> getBookingStreamMock(
//       {required DateTime end, required DateTime start}) {
//     return Stream.value([]);
//   }
//
//   Future<dynamic> uploadBookingMock(
//       { required BookingService newBooking}) async {
//     await Future.delayed(const Duration(seconds: 1));
//     converted.add(DateTimeRange(
//         start: newBooking.bookingStart, end: newBooking.bookingEnd));
//     print('${newBooking.toJson()} has been uploaded');
//   }
//
//   List<DateTimeRange> converted = [];
//
//   List<DateTimeRange> convertStreamResultMock({dynamic streamResult}) {
//     ///here you can parse the streamresult and convert to [List<DateTimeRange>]
//     DateTime first = now;
//     DateTime second = now.add(Duration(minutes: 55));
//     DateTime third = now.subtract(Duration(minutes: 240));
//     DateTime fourth = now.subtract(Duration(minutes: 500));
//     converted
//         .add(DateTimeRange(start: first, end: now.add(Duration(minutes: 30))));
//     converted.add(
//         DateTimeRange(start: second, end: second.add(Duration(minutes: 23))));
//     converted.add(
//         DateTimeRange(start: third, end: third.add(Duration(minutes: 15))));
//     converted.add(
//         DateTimeRange(start: fourth, end: fourth.add(Duration(minutes: 50))));
//     return converted;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return
//
//       Scaffold(
//           body:
//
//
//
//           BookingCalendar(
//
//             bookingService: mockBookingService,
//             convertStreamResultToDateTimeRanges: convertStreamResultMock,
//             getBookingStream: getBookingStreamMock,
//             uploadBooking: uploadBookingMock,
//           )
//       );
//   }
// }
///////////////////////////////////////////////////////////
