
import 'dart:convert';

List<Comments_Model> postmodelFromJson(String str) => List<Comments_Model>.from(json.decode(str).map((x) => Comments_Model.fromJson(x)));
String postmodelToJson(List<Comments_Model> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class   Comments_Model {
  Comments_Model({
    this.id,
    this.user_id,
    this.servise_id,
    this.comment,
    this.name,
  });


  var id;
  var comment;
  var servise_id;
  var user_id;
  var name;

  factory Comments_Model.fromJson(Map<String, dynamic> json) => Comments_Model(
    id: json["id"],
    comment: json["comment"],
    servise_id: json["servise_id"],
    user_id: json["user_id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "comment": comment,
    "servise_id": servise_id,
    "user_id": user_id,
    "name": name,
  };
}