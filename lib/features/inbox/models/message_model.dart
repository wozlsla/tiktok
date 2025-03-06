class MessageModel {
  String text;
  String uid;

  MessageModel({
    required this.text,
    required this.uid,
  });

  // model
  MessageModel.fromJson(Map<String, dynamic> json)
      : text = json["text"],
        uid = json["uid"];

  // return Map (method)
  Map<String, dynamic> toJson() {
    return {
      "text": text,
      "uid": uid,
    };
  }
}
