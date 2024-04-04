
import 'dart:convert';

List<BookModel> postmodelFromJson(String str) => List<BookModel>.from(json.decode(str).map((x) => BookModel.fromJson(x)));

String postmodelToJson(List<BookModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class   BookModel {
  BookModel({
    required  this.id,
    required  this.name,
    required  this.date,
  });


  int id;
  String name;
  String date;


  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
    id: json["id"],
    name: json["name"],
    date: json["date"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "date": date,
  };
}