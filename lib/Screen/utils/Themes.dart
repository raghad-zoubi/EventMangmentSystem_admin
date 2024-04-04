import 'package:flutter/material.dart';

class Themes {

  static Color   colorBackground = Colors.teal.shade100;
  static Color  colorTextbackground = Colors.teal.shade500;
  static Color  colorAppbar =Colors.teal.shade400;
  static Color  colorIcon1 =Colors.teal.shade900;
  static Color  colorIcon2 = Colors.teal.shade200;
  static Color  onClick = Colors.teal.shade100;
  static Color  offClick =Colors.white;

  static Color  colorBorder1 = Colors.grey.shade600;
  static Color  colorBorder2 = Colors.teal.shade900;

  static Color  colorLight= Colors.white;
  static Color  colorDark = Color(0xff000000);
  static Color  color= Colors.black;

  static  TextStyle headline1 = TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.w500,
      fontFamily: 'Roboto');
  static TextStyle  headline2 = TextStyle(
      decoration: TextDecoration.underline, color: color, fontSize: 18);
  static TextStyle  headline4 =
  TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold);


  static TextStyle textAppBar = TextStyle(fontSize: 20, color: Colors.white70);
  static TextStyle  headline5 = TextStyle(
      fontSize: 22, decoration: TextDecoration.underline, color: color);


  static TextStyle  subtitle1 =
      TextStyle(fontSize: 14, color: Colors.black87, fontFamily: 'Roboto');
  static TextStyle  subtitle2 = TextStyle(fontSize: 14, color: Colors.grey);
  static TextStyle  subtitle3 = TextStyle(fontSize: 12, color: Colors.grey);

  static TextStyle  bodyText1 = TextStyle(fontSize: 16, color: Colors.black);
  static TextStyle  bodyText2 = TextStyle(fontSize: 16, color: color);
  static TextStyle bodyText3 =
      TextStyle(fontSize: 16, color: Colors.grey.shade600);
  static TextStyle  bodyText4 = TextStyle(fontSize: 16, color: Colors.white);
  static TextStyle bodyText5 =
      TextStyle(fontSize: 16, color: Colors.grey.shade600);




}
