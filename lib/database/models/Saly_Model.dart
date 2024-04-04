
import 'dart:convert';

// List<Saly_Model> fromJson(String str) => List<Saly_Model>.from(json.decode(str).map((x) => Saly_Model.fromJson(x)));
//
// String postmodelToJson(List<Saly_Model> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Saly_Model {
  var id;

  var serv_rate;
  var name;
  var price;

  Image image;
  var expration_date;

  Saly_Model({
    required this.id,

    required this.name,
    required this.image,
    required this.serv_rate,
    this.price,

   this.expration_date,
  });

  factory Saly_Model.fromJson(Map<String, dynamic> json) =>
      Saly_Model(
        id: json['id'],
        price: json['price'],

        name: json['name'],
        image: Image.toObject(json['image']),
        serv_rate: json['serv_rate'],
        expration_date: json['expration_date'],
      );


  Map<String, dynamic> toJson() => {
    "id": id,

    "name": name,
    "price": price,
    "serv_rate": serv_rate,
    " expration_date": expration_date
  };


}


class Image {

  String url_image;


 Image({  required this.url_image, });

  factory Image.toObject(Map<String, dynamic> json) =>
     Image(  url_image:  json['url_image']);

  Map<String, dynamic> toJson() => {


    "url_image" : url_image,

  };

}
