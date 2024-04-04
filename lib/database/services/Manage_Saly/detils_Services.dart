import 'dart:async';
import 'dart:convert';

import 'package:flutter/src/widgets/editable_text.dart';
import 'package:http/http.dart' as http;
import 'package:lara_push_noti/database/models/Home/Comment_Model.dart';
import 'package:lara_push_noti/database/models/Home/Detils_Model.dart';

import 'dart:convert' as convert;

import '../../../../main.dart';
import '../../models/Saly_Model.dart';

class detils_Services {
  Future getditels({required token ,id}) async
  {
    try {
      var response = await http
        .get((Uri.parse( '$API/service/admin/preview/'+id.toString())),headers:  {
          'Content-Type' : 'application/json',
        'Authorization':'Bearer  '+'$token',
        'Accept':'application'})
          .timeout(const Duration(seconds: 20), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });
     print("befor any thing in service show all detils ");
     print(response.statusCode);
     print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var  jsonresponse = convert.jsonDecode(response.body);
     // var c=   (jsonresponse )
     //        .map((data) => Detils_Model.fromJson(data))
     //        .toList();
    // var c =jsonresponse.map((e) => Detils_Model.fromJson(e))
    //     .toList();
      //print(json.decode(response.body).map<Detils_Model>((dynamic device) => Detils_Model.fromJson(device)).toList());
    var c=  Detils_Model.fromJson(jsonresponse);
    print(c.name);
      print("llllllllllllllllll");
        return c;

      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }

  addtooffer({required token,  id,  expration_date,  discount}) async
  {//http://127.0.0.1:8000/api2
    try {
      var response = await http
          .post(
        (Uri.parse('$API/service/admin/addOffer/'+id.toString())),
        headers: {'Content-Type': 'application/json',
          'Authorization':'Bearer  '+'$token',
          'Accept':'application'},
        body: jsonEncode(<String, dynamic>{

          "expration_date": expration_date,
          "discount":discount
        }),
      ).timeout(const Duration(seconds: 20), onTimeout: () {
        print("kkkkkkkk");
        throw TimeoutException("connection time out try agian");
      });

      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
       // List jsonresponse = convert.jsonDecode(response.body);
        return "saccess";
          //jsonresponse.map((e) => Detils_ProductModel.fromJson(e))
            //.toList();
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }

  Future<List<Saly_Model>?> getall({required token,id}) async {
    try {
      print(token);
      var response = await http//id.toString()
          .get((Uri.parse(  '$API/category/admin/preview/'+id.toString())),
          headers: {'Content-Type' : 'application/json',
            'Authorization':'Bearer  '+'$token',
            'Accept':'application'})
          .timeout(const Duration(seconds: 20), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200 ) {
       // var jsonresponse = convert.jsonDecode(response.body);
        //  return jsonresponse.map((e) => Detils_Model.fromJson(e)).toList();

       //   var detils;// = <Detils_Model>[];
        //  for (var c in )
          {
        //    print(Detils_Model.fromJson(jsonresponse));
           // detils.add(Detils_Model.fromJson(c )) ;
          }
       // (jsonresponse as List)
       //      .map((data) => Detils_Model.fromJson(data))
       //      .toList();
        print(")))))))))77777777777777777777777777777))))))))))))))))))))))))");
      //  print(detils[0].images[0].url_image);
        List jsonresponse = convert.jsonDecode(response.body);
       print(jsonresponse);
        var c=   (jsonresponse as List)
            .map((data) => Saly_Model.fromJson(data))
            .toList();
        print(")))))))))77777777777777777777777777777))))))))))))))))))))))))");
      //  print(c[0].image.url_image);
        return c;
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }


  Future<String?> delete({required token, id}) async {
    try {
      print(token);
      String t=id.toString();
      var response = await http
          .delete((Uri.parse('$API/service/admin/delete/$t')),
          headers: {'Content-Type': 'application/json',
            'Authorization': 'Bearer  ' + '$token',
            'Accept': 'application'})
          .timeout(const Duration(seconds: 20), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {

        return 'success';
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }


  Future<List<Comments_Model>?> list_comment({service_id, token}) async {
    try {
      final response = await http.get(
        Uri.parse('${API}/comment/list/1'),// + service_id.toString()),
        headers: {'Content-Type' : 'application/json',
          'Authorization':'Bearer  '+'$token',
          'Accept':'application'},
      );
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        List jsonresponse = convert.jsonDecode(response.body);
        return jsonresponse.map((e) => Comments_Model.fromJson(e)).toList();
      } else {
        return null;
      }
    }on TimeoutException catch (_) {
      print("response time out");
    }
  }

  Future<String?> add_comment(
      {required String idServuce, token, comment}) async {
    try {
      var response = await http
          .post(
        (Uri.parse('$API/comment/add/' + idServuce.toString())),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer  ' + '$token',
          'Accept': 'application'
        },
        body: jsonEncode(<String, dynamic>{
          "comment": comment,
        }),
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


}