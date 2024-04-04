
import 'dart:convert';



List<Images_Model> postmodelFromJson(String str) => List<Images_Model>.from(json.decode(str).map((x) => Images_Model.fromJson(x)));

String postmodelToJson(List<Images_Model> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class   Images_Model {
  Images_Model({
    required  this.id,
    required  this.Service_id,
    required  this.image_path,
  });


  int id;
  int Service_id;
  String image_path;

  factory Images_Model.fromJson(Map<String, dynamic> json) => Images_Model(
    id: json["id"],
    Service_id: json["Service_id"],
    image_path: json["image_path"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "Service_id": Service_id,
    "image_path": image_path,
  };
}

