class EducationModel{

  late String university;
  late String title;
  late String startYear;
  late String endYear;

  EducationModel({required this.university, required this.title, required this.startYear, required this.endYear});

  factory EducationModel.fromJson(Map<String, dynamic> json) {
    return EducationModel(
        university: json['university'],
        title: json['title'],
        startYear: json['startYear'],
        endYear: json['endYear']);
  }

  Map<String, dynamic> toJson() => {
    'university': university,
    'title': title,
    'startYear': startYear,
    'endYear': endYear,
  };
}