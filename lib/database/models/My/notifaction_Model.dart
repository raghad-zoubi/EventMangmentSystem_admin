
import 'dart:convert';

// List<NotifactionModel> postmodelFromJson(String str) => List<NotifactionModel>.from(json.decode(str).map((x) => NotifactionModel.fromJson(x)));
//
// String postmodelToJson(List<NotifactionModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//"id":0,"Data":{"id":18,"title":"user","body":"send your order"}
// class   NotifactionModel {
//   NotifactionModel({
//       this.id,
//
//       required this. Data,
//   });
//
//
//   var id;
//
//   DataModel Data;
//
//
//   factory NotifactionModel.fromJson(Map<String, dynamic> json) => NotifactionModel(
//     id: json["id"],
//      Data: DataModel.fromJson(json[' Data']),
//
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//
//   };
// }
// class DataModel {


class NotifactionModel {
  var id;


  DataModel data;
  //var data;
  var expration_date;

  NotifactionModel({
    required this.id,
    required this.data,



  });

  factory NotifactionModel.fromJson(Map<String, dynamic> json) =>
      NotifactionModel(
        id: json['id'],
        data: DataModel.toObject(json['Data']),

      );





}


class DataModel {


  var id;
  var body;
  var title;


  DataModel({
    this.id,
    this.body,
    this.title, });

  factory DataModel.toObject(Map<String, dynamic> json) =>
      DataModel(  id: json["id"],
        body: json["body"],
        title: json["title"],
      );



}



