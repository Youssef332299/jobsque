class MessageModel {
  bool status;
  List<Datum> data;

  MessageModel({
    required this.status,
    required this.data,
  });

}

class Datum {
  int id;
  String massage;
  int userId;
  int compId;
  String senderUser;
  DateTime createdAt;
  DateTime updatedAt;

  Datum({
    required this.id,
    required this.massage,
    required this.userId,
    required this.compId,
    required this.senderUser,
    required this.createdAt,
    required this.updatedAt,
  });

}
