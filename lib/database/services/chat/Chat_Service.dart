import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lara_push_noti/database/models/Books/Order_Model.dart';
import 'dart:convert' as convert;
import 'package:lara_push_noti/main.dart';

import '../../models/chat/conversation_Model.dart';
import '../../models/chat/message_Model.dart';

class Conversation_Services {
  preview_Conversations({required token}) async {
    try {
      print("in service Conversation ");
      var response = await http
          .get((Uri.parse('$API/conversation/listCompany')), headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer  ' + '$token',
        'Accept': 'application'
      }).timeout(const Duration(seconds: 20), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        List jsonresponse = convert.jsonDecode(response.body);
        var c = (jsonresponse as List)
            .map((data) => ConversationModel.fromJson(data))
            .toList();

        if (c.isEmpty)
          return "is empty";
        else
          return c;
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }

  Future<String?> add_newConversation(
      {required String iduser, token, body}) async {
    try {
      var response = await http
          .post(
        (Uri.parse('$API/conversation/add/' + iduser.toString())),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer  ' + '$token',
          'Accept': 'application'
        },
        body: jsonEncode(<String, dynamic>{
          "body": body,
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

  delete_Conversations({required token, IdConversation}) async {
    try {
      print(token);
      var response = await http.get(
          (Uri.parse('$API/conversation/delete/' + IdConversation.toString())),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer  ' + '$token',
            'Accept': 'application'
          }).timeout(const Duration(seconds: 20), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return 's';
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }

  preview_Massages({required token, IdConversation}) async {
    try {
      String ap = IdConversation.toString();
      print("in service preview_Massage ");
      print(IdConversation);
      var response = await http
          .get((Uri.parse('$API/conversation/preview/$IdConversation')), headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer  ' + '$token',
        'Accept': 'application'
      }).timeout(const Duration(seconds: 20), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        List jsonresponse = convert.jsonDecode(response.body);
        var c = (jsonresponse as List)
            .map((data) => MessageModal.fromJson(data))
            .toList();

        if (c.isEmpty)
          return "is empty";
        else
          return c;
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }

  Future<String?> add_Massage(
      {required String IdConversation, token, body}) async {
    try {
      String ap = IdConversation.toString();
      String w=body.toString();
print('in add_Massage fdfdsashhhshhahsh');
print(w);
    //  print('http://192.168.1.107:8000/api/message/add/2'); print(w);
      var response = await http
          .post((Uri.parse('$API/message/add/1')),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer  ' + '$token',
          'Accept': 'application/json'},
        body: json.encode(<String,dynamic>{"body":w})  )
          .timeout(const Duration(seconds: 20), onTimeout: () {
        print("addnewConversation");
        throw TimeoutException("connection time out try agian");
      });

      print(response.statusCode);
      print(json.decode(response.body) );
      if (response.statusCode == 200 || response.statusCode == 201) {
        // Map<String, dynamic> jsonresponsep =
        // Map<String, dynamic>.from(json.decode(response.body));

        return 'succses';
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }

  delete_Massage({required token, IdMessage}) async {
    try {
      print(token);
      var response = await http.get(
          (Uri.parse('$API/delete/delete/' + IdMessage.toString())),
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer  ' + '$token',
            'Accept': 'application'
          }).timeout(const Duration(seconds: 20), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return 's';
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }
}
