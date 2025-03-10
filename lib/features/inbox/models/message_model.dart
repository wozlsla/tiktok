class MessageModel {
  final String text;
  final String uid;
  final int createdAt;

  MessageModel({
    required this.text,
    required this.uid,
    required this.createdAt,
  });

  // model
  MessageModel.fromJson(Map<String, dynamic> json)
      : text = json["text"],
        uid = json["uid"],
        createdAt = json["createdAt"];

  // return Map (method)
  Map<String, dynamic> toJson() {
    return {
      "text": text,
      "uid": uid,
      "createdAt": createdAt,
    };
  }
}
