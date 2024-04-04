
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:lara_push_noti/database/models/Books/Book_Model.dart';
import 'package:lara_push_noti/database/models/Books/Order_Model.dart';
import 'dart:convert' as convert;
import 'package:lara_push_noti/main.dart';
var api_order;
class Book_Services {


  showbooks({required token,kind})

 async {

      try {
        if (kind=='new')
          api_order='$API/order/admin/listOrderPending';
        if (kind=='archive')
         // api_order='$API/order/admin/listOrderPending';
        api_order='$API/order/admin/listOrderExecute';
        if (kind=='Accept')
          api_order='$API/order/admin/listOrderAccept';

        print("in service showbooks");
        var response = await http.get((Uri.parse( api_order)),
            headers: {'Content-Type' : 'application/json',
              'Authorization':'Bearer  '+'$token',
              'Accept':'application'})
            .timeout(const Duration(seconds: 20), onTimeout: () {
          throw TimeoutException("connection time out try agian");
        });
        print(response.statusCode);
        print(response.body);
        if (response.statusCode == 200) {
          List jsonresponse = convert.jsonDecode(response.body);
          var c=   (jsonresponse as List)
              .map((data) => BookModel.fromJson(data))
              .toList();


          if(c.isEmpty)
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

  showorderditels({required token,id})

  async {
    try {
      print(token);
      var response = await http.get((Uri.parse(  '$API/order/preview/'+id.toString())),
          headers: {'Content-Type' : 'application/json',
            'Authorization':'Bearer  '+'$token',
            'Accept':'application'})
          .timeout(const Duration(seconds: 20), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        List jsonresponse = convert.jsonDecode(response.body);
        return jsonresponse.map((e) => OrderModel.fromJson(e)).toList();
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }

  accept_ignore({required  token ,orderId,status})
  async {
    try {//


  String eide=orderId.toString();
     // print("orderId is ");
      //print(eide);
      //print(orderId);
      //print(token);
      var response = await http.post((Uri.parse(  '$API/order/admin/check/$eide')),
          headers: {'Content-Type' : 'application/json',
         'Authorization':'Bearer  '+'$token',
            'Accept':'application'},
          body: jsonEncode(<String, dynamic>{
            "status":status,

          }))
          .timeout(const Duration(seconds: 20), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {

        return 'ok';
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }
  noti({required  token })
  async {
    try {//


      var response = await http.get((Uri.parse(  '$API/noti/11')),
          headers: {'Content-Type' : 'application/json',
         'Authorization':'Bearer  '+'$token',
            'Accept':'application'},
         )
          .timeout(const Duration(seconds: 20), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {

        return 'ok';
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }

  inconv({required token,  custmerid})
  async {

  //  Route::get('/isexistsadmin/{ID}', [ConversationController::class, 'isexistsadmin']);
    try {
      print(token);
      var response = await http.get((Uri.parse(  '$API/conversation/isexistsadmin/'+custmerid.toString())),
          headers: {'Content-Type' : 'application/json',
            'Authorization':'Bearer  '+'$token',
            'Accept':'application'})
          .timeout(const Duration(seconds: 20), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });
      print(response.statusCode);
      print(response.body);
      if (response.statusCode == 200) {
        var c = convert.jsonDecode(response.body);
        print(c['id'].toString());
        print(c['name']);
        return c;
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
  }



}
