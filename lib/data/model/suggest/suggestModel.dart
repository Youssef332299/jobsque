import 'dart:convert';

//
// // List<SuggestJobsModel> getSuggestDataFromJson(String responseBody)
// // => List<SuggestJobsModel>.from(json.decode(responseBody).map((e) => SuggestJobsModel.fromJson(e)));
//
// class SuggestJobsModel {
//   bool status;
//   List<Datum> data;
//
//   SuggestJobsModel({
//     required this.status,
//     required this.data,
//   });
//
//   // factory SuggestJobsModel.fromJson(Map<String, dynamic> json) => SuggestJobsModel(
//   //   status: json["status"],
//   //   data: List<Datum>.from(json["data"].map((x) => SuggestJobsModel.fromJson(x))),
//   // );
// }
//
// class Datum {
//   int id;
//   String name;
//   String image;
//   String jobTimeType;
//   String jobType;
//   String jobLevel;
//   String jobDescription;
//   String jobSkill;
//   String compName;
//   String compEmail;
//   String compWebsite;
//   String aboutComp;
//   String location;
//   String salary;
//   int favorites;
//   int expired;
//   DateTime createdAt;
//   DateTime updatedAt;
//
//   Datum({
//     required this.id,
//     required this.name,
//     required this.image,
//     required this.jobTimeType,
//     required this.jobType,
//     required this.jobLevel,
//     required this.jobDescription,
//     required this.jobSkill,
//     required this.compName,
//     required this.compEmail,
//     required this.compWebsite,
//     required this.aboutComp,
//     required this.location,
//     required this.salary,
//     required this.favorites,
//     required this.expired,
//     required this.createdAt,
//     required this.updatedAt,
//   });
// }

class SuggestedJobsModel {
  bool status;
  List<Datum> data;

  SuggestedJobsModel({
    required this.status,
    required this.data,
  });

  factory SuggestedJobsModel.fromJson (Map<String, dynamic> jsonData){
    return SuggestedJobsModel(
        data: jsonData["data"],
        status: jsonData["status"]
    );
  }
}

class Datum {
  final List<dynamic> data;
  int id;
  String name;
  String image;
  String jobTimeType;
  String jobType;
  String jobLevel;
  String jobDescription;
  String jobSkill;
  String compName;
  String compEmail;
  String compWebsite;
  String aboutComp;
  String location;
  String salary;
  int favorites;
  int expired;
  DateTime createdAt;
  DateTime updatedAt;

  Datum({
    required this.data,
    required this.id,
    required this.name,
    required this.image,
    required this.jobTimeType,
    required this.jobType,
    required this.jobLevel,
    required this.jobDescription,
    required this.jobSkill,
    required this.compName,
    required this.compEmail,
    required this.compWebsite,
    required this.aboutComp,
    required this.location,
    required this.salary,
    required this.favorites,
    required this.expired,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Datum.fromJson (Map<String, dynamic>jsonData){
    return Datum(
        id: jsonData["id"],
        name: jsonData["name"],
        image: jsonData["image"],
        jobTimeType: jsonData["jobTimeType"],
        jobType: jsonData["jobType"],
        jobLevel: jsonData["jobLevel"],
        jobDescription: jsonData["jobDescription"],
        jobSkill: jsonData["jobSkill"],
        compName: jsonData["compName"],
        compEmail: jsonData["compEmail"],
        compWebsite: jsonData["compWebsite"],
        aboutComp: jsonData["aboutComp"],
        location: jsonData["location"],
        salary: jsonData["salary"],
        favorites: jsonData["favorites"],
        expired: jsonData["expired"],
        createdAt: jsonData["createdAt"],
        updatedAt: jsonData["updatedAt"],
        data: jsonData["data"]
    );
  }
}
