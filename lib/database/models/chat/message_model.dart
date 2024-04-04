class MessageModal {
  var id;
  var body;
  var status;
  var user_id;
  var conversation_id;
  var created_at;
  var direction;

  MessageModal(
      {this.id,
      this.body,
      this.status,
      this.user_id,
      this.conversation_id,
      this.created_at,
      this.direction});

  MessageModal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    body = json['body'];
    status = json['status'] == 'false' ? 0 : 1;
    user_id = json['user_id'];
    conversation_id = json['conversation_id'];
    created_at = json['created_at'];
    direction = json['direction'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['body'] = this.body;
    data['status'] = this.status;
    data['user_id'] = this.user_id;
    data['conversation_id'] = this.conversation_id;
    data['created_at'] = this.created_at;
    data['direction'] = this.direction;
    return data;
  }
}
