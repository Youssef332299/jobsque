class ExperienceModel{

  late String position;
  late String typeOfWork;
  late String companyName;
  late String location;
  late String startYear;

  ExperienceModel({required this.position, required this.typeOfWork,required this.companyName, required this.location, required this.startYear,});

  factory ExperienceModel.fromJson(Map<String, dynamic> json) {
    return ExperienceModel(
        position: json['position'],
        typeOfWork: json['typeOfWork'],
        companyName: json['companyName'],
        location: json['location'],
        startYear: json['startYear']
    );
  }

  Map<String, dynamic> toJson() => {
    'position': position,
    'typeOfWork': typeOfWork,
    'companyName': companyName,
    'location': location,
    'startYear': startYear,
  };
}