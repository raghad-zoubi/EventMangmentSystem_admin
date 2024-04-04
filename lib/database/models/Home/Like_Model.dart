
import 'dart:convert';

List<Like_Model> postmodelFromJson(String str) =>
    List<Like_Model>.from(json.decode(str).map((x) => Like_Model.fromJson(x)));

String postmodelToJson(List<Like_Model> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Like_Model {
  Like_Model({
    required this.id,
    required this. user_like,
    required this. sum_likes,
  });

  var id;
  var user_like;
  var sum_likes;

  factory Like_Model.fromJson(Map<String, dynamic> json) => Like_Model(
      id: json["id"],
      user_like:  json["user_like"],
      sum_likes:  json["sum_likes"]

  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "sum_likes": sum_likes,
    "user_like": user_like,
  };
}

