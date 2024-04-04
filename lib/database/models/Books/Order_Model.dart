import 'dart:convert';

List<OrderModel> postmodelFromJson(String str) =>
    List<OrderModel>.from(json.decode(str).map((x) => OrderModel.fromJson(x)));

String postmodelToJson(List<OrderModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class OrderModel {
  var id;
  var quantity;
  var time;
  var size;
  var user_location;
  var notes;
  var status;
  var date;
  var name;
  var service_id;
  var customer_id;

  OrderModel(
      {this.id,
      this.time,
      this.notes,
      this.status,
      this.quantity,
      this.size,
      this.user_location,
      this.date,
      this.name,
      this.customer_id,
      this.service_id});

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        user_location: json['user_location'],
        status: json['status'],
        quantity: json['quantity'],
        notes: json[' notes'],
        date: json[' date'],
        size: json['size'],
        time: json['time'],
        id: json['id'],
        name: json['name'],
        service_id: json['service_id'],
        customer_id: json['customer_id'],
      );

  Map<String, dynamic> toJson() => {
        "status": status.toJson(),
        "user_location": user_location,
        "size": size,
        "time": time,
        "id": id,
        "notes": notes,
        "date": date,
        "quantity": quantity,
        "name": name,
        "customer_id": customer_id,
        "service_id": service_id,
      };
}
