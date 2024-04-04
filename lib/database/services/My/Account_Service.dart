
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lara_push_noti/database/models/Books/Order_Model.dart';
import 'dart:convert' as convert;
import 'package:lara_push_noti/main.dart';

import '../../models/chat/conversation_Model.dart';
import '../../models/chat/message_Model.dart';

class AccountService{
  change_password({required  token, oldPassword,password,   cpassword}) async {
    try {
      var response = await http
          .post(
        (Uri.parse('$API/auth/change')),
        headers: {'Content-Type': 'application/json',
          'Authorization':'Bearer  '+'$token',
          'Accept':'application'},
        body: jsonEncode(<String, dynamic>{
          "old_password": oldPassword,
          "new_password": password,
          "c_password": cpassword,

        }),
      )
          .timeout(const Duration(seconds: 20), onTimeout: () {
        print("addnewConversation");
        throw TimeoutException("connection time out try agian");
      });

      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        Map<String, dynamic> jsonresponsep =
        Map<String, dynamic>.from(json.decode(response.body));

        return 'succses';
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }

  logout({String? token})  async {
    try {
      var response = await http
          .get(
        (Uri.parse('$API/auth/logout')),
        headers: {'Content-Type': 'application/json',
          'Authorization':'Bearer  '+'$token',
          'Accept':'application'},
     )

          .timeout(const Duration(seconds: 20), onTimeout: () {
        print("addnewConversation");
        throw TimeoutException("connection time out try agian");
      });

      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {

        return 'succses';
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }

  delete_account({String? token, password})  async {
    try {
      print('in function elet account a password is');
      print (password.toString());
      var response = await http
          .delete(
        (Uri.parse('$API/auth/deleteAccount')),
        headers: {'Content-Type': 'application/json',
          'Authorization':'Bearer  '+'$token',
          'Accept':'application'},
        body: jsonEncode(<String, String>{

          "password": password.toString(),


        }),
      )
          .timeout(const Duration(seconds: 20), onTimeout: () {
        print("addnewConversation");
        throw TimeoutException("connection time out try agian");
      });

      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        // Map<String, dynamic> jsonresponsep =
        // Map<String, dynamic>.from(json.decode(response.body));
          print("jjjjjjjjjjjjj");
        return 'succses';
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }
}