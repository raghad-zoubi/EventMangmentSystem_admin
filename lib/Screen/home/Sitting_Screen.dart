



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lara_push_noti/Screen/const/function.dart';
import 'package:lara_push_noti/database/models/Home/Detils_Model.dart';
import 'package:lara_push_noti/logic/controllers/Home/Detlis_Contoller.dart';






ThemeData _darkTheme = ThemeData(
    accentColor: Colors.red,
    brightness: Brightness.dark,
    primaryColor: Colors.amber,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.amber,
      disabledColor: Colors.grey,
    ));

ThemeData _lightTheme = ThemeData(
    accentColor: Colors.pink,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.blue,
      disabledColor: Colors.grey,
    ));
//
// class MyAppf extends StatelessWidget {
//   RxBool _isLightTheme = false.obs;
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: _lightTheme,
//       darkTheme: _darkTheme,
//       themeMode: ThemeMode.system,
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Dark Mode Demo'),
//         ),
//         body: Container(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//









class sos extends StatelessWidget{

 // RxBool _isLightTheme = true.obs;

 RxBool _isLightTheme = false.obs;

  int _toggleValue = 0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        theme: _lightTheme,
        darkTheme: _darkTheme,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: Scaffold(

          appBar: AppBar(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(1.0),
                    bottomLeft: Radius.circular(1.0))),
            elevation: 5,
            backgroundColor: Colors.teal,
            leading: IconButton(

              onPressed: () {
                Get.back();

              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 29,
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                //     Obx(
                //     () => Text(
                //   'Click on switch to change to ${_isLightTheme.value ? 'Dark' : 'Light'} theme',
                // ),
                // ),
                // ObxValue(
                // (data) => Switch(
                // value: _isLightTheme.value,
                // onChanged: (val) {
                // _isLightTheme.value = val;
                // Get.changeThemeMode(
                // _isLightTheme.value ? ThemeMode.light : ThemeMode.dark,
                // );
                // //_saveThemeStatus();
                // },
                // ),
                // false.obs,
                // ),










                AnimatedToggle(
                  values: ['English', 'Arabic'],
                  onToggleCallback: (value) {
                    // setState(() {
                    //   _toggleValue = value;
                    // });
                  },
                  buttonColor:  Colors.teal,
                  backgroundColor: const Color(0xFFB5C1CC),
                  textColor: const Color(0xFFFFFFFF),
                ),
                //     Text('Toggle Value : $_toggleValue'),


                AnimatedToggle(
                  values: ['Dak', 'Light'],
                  onToggleCallback: (value) {
                 //   setState(() {
                      _toggleValue = value;
                 //   });
                  },
                  buttonColor:  Colors.teal,
                  backgroundColor: const Color(0xFFB5C1CC),
                  textColor: const Color(0xFFFFFFFF),
                ),
                //   Text('Toggle Value : $_toggleValue'),


                AnimatedToggle(
                  values: ['mute', 'un_mute'],
                  onToggleCallback: (value) {
                    // setState(() {
                    //   _toggleValue = value;
                    // });
                  },
                  buttonColor:  Colors.teal,
                  backgroundColor: const Color(0xFFB5C1CC),
                  textColor: const Color(0xFFFFFFFF),
                ),
                // Text('Toggle Value : $_toggleValue'),




              ],
            ),
          ),
        )
    );
  }
}





class AnimatedToggle extends StatefulWidget {
  final List<String> values;
  final ValueChanged onToggleCallback;
  final Color backgroundColor;
  final Color buttonColor;
  final Color textColor;

  AnimatedToggle({
    required this.values,
    required this.onToggleCallback,
    this.backgroundColor = const Color(0xFFe7e7e8),
    this.buttonColor = const Color(0xFFFFFFFF),
    this.textColor = const Color(0xFF000000),
  });
  @override
  _AnimatedToggleState createState() => _AnimatedToggleState();
}

class _AnimatedToggleState extends State<AnimatedToggle> {
  bool initialPosition = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.6,
      height: Get.width * 0.13,
      margin: EdgeInsets.all(20),
      child: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              initialPosition = !initialPosition;
              var index = 0;
              if (!initialPosition) {
                index = 1;
              }
              widget.onToggleCallback(index);
              setState(() {});
            },
            child: Container(
              width: Get.width * 0.6,
              height: Get.width * 0.13,
              decoration: ShapeDecoration(
                color: widget.backgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Get.width * 0.1),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  widget.values.length,
                      (index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: Get.width * 0.05),
                    child: Text(
                      widget.values[index],
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        fontSize: Get.width * 0.045,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xAA000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedAlign(
            duration: const Duration(milliseconds: 250),
            curve: Curves.decelerate,
            alignment:
            initialPosition ? Alignment.centerLeft : Alignment.centerRight,
            child: Container(
              width: Get.width * 0.33,
              height: Get.width * 0.13,
              decoration: ShapeDecoration(
                color: widget.buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Get.width * 0.1),
                ),
              ),
              child: Text(
                initialPosition ? widget.values[0] : widget.values[1],
                style: TextStyle(
                  fontFamily: 'Rubik',
                  fontSize: Get.width * 0.045,
                  color: widget.textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
