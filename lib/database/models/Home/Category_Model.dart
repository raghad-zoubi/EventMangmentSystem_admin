
import 'dart:convert';



List<Category_Model> postmodelFromJson(String str) => List<Category_Model>.from(json.decode(str).map((x) => Category_Model.fromJson(x)));

String postmodelToJson(List<Category_Model> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class   Category_Model {
  Category_Model({
    required  this.id,
    required  this.name,
  });


  int id;
  String name;

  factory Category_Model.fromJson(Map<String, dynamic> json) => Category_Model(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}



class   Basic_Category {
  Basic_Category({
 required this.sec_cat,
    required this.id,
  required this.BasicImage,
  required this.name,

  });

  final List<Second_Category> sec_cat;
  int id;
 String BasicImage;
  String  name;
}


class   Second_Category {
  Second_Category({
    required this.id,
    required this.secondcat_name,
  });


  int id;
  String secondcat_name;
}