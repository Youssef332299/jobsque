class EducationDataModel {
  bool status;
  List<Datum> data;

  EducationDataModel({
    required this.status,
    required this.data,
  });

  factory EducationDataModel.toObject(Map<String, dynamic> json) =>
      EducationDataModel(status: json["status"], data: json["data"]);

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data,
  };
}

class Datum {
  int id;
  String universty;
  String title;
  String start;
  String end;
  int userId;
  String profileId;
  DateTime createdAt;
  DateTime updatedAt;

  Datum({
    required this.id,
    required this.universty,
    required this.title,
    required this.start,
    required this.end,
    required this.userId,
    required this.profileId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Datum.toObject(Map<String, dynamic> json) =>
    Datum(
        id: json["id"],
        universty: json["universty"],
        title: json["title"],
        start: json['start'],
        end: json['end'],
        userId: json['userId'],
        profileId: json['profileId'],
        createdAt: json['createdAt'],
        updatedAt: json['updatedAt']
    );

  Map<String, dynamic> toJson() => {
    "id": id,
    'universty': universty,
    'title': title,
    'start': start,
    'end': end,
    'userId': userId,
    'profileId': profileId,
    'createdAt': createdAt,
    'updatedAt': updatedAt,
  };

}
