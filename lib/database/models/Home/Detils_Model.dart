
import 'dart:convert';

List<Detils_Model> postmodelFromJson(String str) =>
    List<Detils_Model>.from(json.decode(str).map((x) => Detils_Model.fromJson(x)));
//Map<String, dynamic> toJson() => {"id": id, "name": name, "members": members.map((member) => member.id).toList()};
String postmodelToJson(List<Detils_Model> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Detils_Model {
  Detils_Model({
     this.id,
     this.capcity,
     this.category_id1,
     this.category_id2,
     this.name,
     this.price,
     this.color,
     this.company_name,
     this.expration_date,
     this.size,
     this.discount,
     this.description,
     this.serv_rate,
     this.location,
     this.type,
     required this.images,

  });

  var id;
  var company_name;
  var category_id1;
  var category_id2;
  var name;
  var price;
  var description;
  var discount;
  dynamic expration_date;
  var location;
  var serv_rate;
  var size;
  var color;
  var type;
  var capcity;
   var  images=<Images_Model>[];




  factory Detils_Model.fromJson(Map<String, dynamic> json) => Detils_Model(
      id: json["id"]??'999',
      name: json["name"]??'999',
      discount: json["discount"]??'999',
      company_name: json["company_name"]??'999',
      expration_date: json["expration_date"]??'999',
      size: json["size"]??'999',
      location: json["location"]??'999',
      description: json["description"]??'999',

      price: json["price"]??'999',
      category_id1: json["category_id1"]??'999',
      category_id2: json["category_id2"]??'999',
      color: json["color"]??'999',
    type: json["type"]??'999',
      serv_rate:  json["serv_rate"]??'999',
    capcity:  json["capcity"]??'999',
      images : (json['image'] as List)
          .map((data) => Images_Model.fromJson(data))
          .toList(),



  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "capcity": capcity,
    "name": name,
    "discount": discount,
    "exprtion_date": expration_date,
    "category_id1": category_id1,
    "category_id2": category_id2,
    " size": size,
    "location": location,
    "description": description,
    "price": price,
    "color": color,
    "type": type,
    "serv_rate": serv_rate,
    "company_name": company_name,
    "images":images.map((images) => images.url_image).toList(),

  };
}


class   Images_Model {
  Images_Model({
      this.id,
     // this.Service_id,
      this.url_image,
  });

  var id;
  var url_image;

  factory Images_Model.fromJson(Map<String, dynamic> json) => Images_Model(
    id: json["id"],
    url_image: json["url_image"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    // "Service_id": Service_id,
    "url_image": url_image,
  };
}

