
import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:lara_push_noti/database/models/User_Model.dart';
import '../../../main.dart';
import 'dart:convert' as convert;
import 'package:firebase_messaging/firebase_messaging.dart';


 var token_user;
 var name_user;
 var role_user;

class AuthServices {
 // static String baseApi = "http://192.168.118.21:8000/api/auth";
  static var client = http.Client();
  static String state_fcm = 'pop';


  static register({
    required name,
    required email,
    required password,
    required cpassword,

  }) async {
//  var state_fcm;
    var user;
    var response = await http.post(Uri.parse('$API/auth/register'),
        headers: {'Content-Type': 'application/json'},
        body: convert.jsonEncode(<String, String>{
          "name": name,
          "email": email,
          "password": password,
          "c_password": cpassword,
          "role": '2'
        }));
    print(")))))))))))))))))batool))))))))))))))))))))");
    print(response.body);
    print(response.statusCode);
    if (response.statusCode == 200) {
      var stringObject = response.body;
      print("${stringObject}");


      user = userFromJson(stringObject);
      token = user.token;
      name = user.user.name;
      role = user.user.role;
      write_info = 'lsa';

    //  await send_update_fcm(token: user.token);

//   if(state_fcm=='200')
      return user;
// if(state_fcm!='pop' && state_fcm!='200'){
//       return null;
//     }
    }
    else
      return null;
  }

  //
  // static Future<void> send_update_fcm({
  //
  //   required token
  // }) async {
  //   print('fcm in  send send_update_fcm e:=========================');
  //
  //   final FirebaseMessaging firebaseMessaging = FirebaseMessaging.instance;
  //
  //   firebaseMessaging.getToken().then((value) async {
  //     var response = await http.post(Uri.parse('$API/auth/fcmtoken'),
  //         headers: {'Content-Type': 'application/json',
  //           'Authorization': 'Bearer  ' + '$token',
  //           'Accept': 'application'},
  //         body: convert.jsonEncode(<String, String>{
  //           "fcm_token": value.toString()
  //         }));
  //     if (response.statusCode == 200) {
  //       state_fcm = '200';
  //     }
  //     print(response.body);
  //     print(response.statusCode);
  //   });
  // }


  Login({required email, password}) async {
    var response = await client.post
      (Uri.parse("$API/auth/login"),
      headers: {'Content-Type': 'application/json'},
      body: convert.jsonEncode(
          <String, String>{"email": email, "password": password}),
    );
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      var stringobject = response.body;
      var user = userFromJson(stringobject);
      token = user.token;
      name = user.user.name;
      role = user.user.role;
      write_info = 'tm';
 //await send_update_fcm(token: user.token);

      return user;
// if(state_fcm!='pop' && state_fcm!='200'){
//       return null;
//     }
    }
    else
      return null;
  }
}

