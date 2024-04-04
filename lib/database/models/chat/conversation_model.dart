


class ConversationModel {
  var id;
  var name;
  var url_img;
  var date_latest_message;
  var count_unread_message;
  ConversationModel({
    this.id,
     this.name,

     this.date_latest_message,
     this.count_unread_message,
     this.url_img,
  });



 factory ConversationModel.fromJson(Map<String, dynamic> json) => ConversationModel(
    id : json['id'],
    name : json['name'] ,

    count_unread_message:json['count_unread_message'] ,
    date_latest_message:json['date_latest_message'] ,
    url_img:json['url_img']

  );

  Map<String, dynamic> toJson() => {

  "name": name,
  "id": id,
  "url_imag": url_img,
 "count_unread_message" : count_unread_message,
 "count_unread_message" : count_unread_message,
  };
}



