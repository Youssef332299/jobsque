import 'dart:convert';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jobsque/data/model/education/education.dart';
import 'package:jobsque/data/model/experince/experince.dart';
import 'package:jobsque/screens/settings/provider/profileProvider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../../../Data/core/urlRoutes.dart';
import '../../home/widgets/applyButton/provider/applyNowProvider.dart';
import 'appliedState.dart';
import 'dart:io';


class AppliedProvider extends ChangeNotifier {
  AppliedState state = AppliedState();

  void init(context) {
    Provider.of<ApplyNowProvider>(context, listen: false).fill_radio_list(context);
    fetchJobsData();
  }

  // Applied __________________________________________________________________________________________
  Future<void> fetchJobsData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");
    print("its called");

    final response = await http.put(Uri.parse(UrlRoutes.reviewApplys),
        headers: {'Authorization': 'Bearer $token'});

    if (response.statusCode == 200) {
      print(response.statusCode);

      dynamic applied = jsonDecode(response.body);

      // String ID = "${applied["data"]["id"]}";

      String jobDetails = sharedPreferences.getString("${3}")!;

      dynamic finalvalue = jsonDecode(jobDetails);
      print("its finalvalue: $finalvalue");

      print(finalvalue);
      state.jobDetails.add(finalvalue);
      state.applied.add(applied);
      print(response.statusCode);
    } else {
      print(response.statusCode);
    }
    notifyListeners();
  }

  onTapApplied(i, context) {
    if (state.uploadPortfolioCompleted[i]) {
      Navigator.of(context).pushNamed("appliedUploadPortfolio");
    } else if (state.typeOfWorkCompleted[i]) {
      Navigator.of(context).pushNamed("appliedTypeOfWork");
    } else {
      Navigator.of(context).pushNamed("appliedBioData");
    }
    state.index = i;
  }


  // bio data __________________________________________________________________________________________
  onTapNext_bio_data(context){
    Navigator.of(context).pushNamed("appliedTypeOfWork");
  }


  // type of work __________________________________________________________________________________________
  onTapNext_type_of_work(context){
    state.typeOfWorkCompleted[0] = true;
    Navigator.of(context).pushNamed("appliedUploadPortfolio");
  }


  // uploadPortfolio __________________________________________________________________________________________
  submitted(context){
    if(Provider.of<ApplyNowProvider>(context, listen: false).state.otherFile.isNotEmpty){
      state.uploadPortfolioCompleted[0] = true;
      Navigator.of(context).pushNamed("completeProfile");
    }else{
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("upload other file")));
    }
  }


  // complete profile __________________________________________________________________________________________
  percentNumber(){
    int counter = 0;
    int index = 0;

    for( ; index < state.percent.length; index ++){
        if(state.percent[index][0]){
          counter ++;
        }
    }
    notifyListeners();
    return counter;
  }


  // education__________________________________________________________________________________________
  save(context) async {
    if(
        state.universityController.text.isNotEmpty &&
        state.titleController.text.isNotEmpty &&
        state.startYearController.text.isNotEmpty &&
        state.endYearController.text.isNotEmpty
    ) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String userID = prefs.getString("idValue")!;
      String? token = prefs.getString("token");

      print(userID);

      Map<String, dynamic> body = {
      "universty": state.universityController.text,
      "title": state.titleController.text,
      "start": state.startYearController.text,
      "end": state.endYearController.text,
      "user_id": userID,
      };

      final response = await http.post(Uri.parse(UrlRoutes.addEducation),
          body: body,
          headers: {'Authorization': 'Bearer $token'}
      );
      if(response.statusCode == 200){
        print(response.statusCode);
        state.education.add(EducationModel(
            university: state.universityController.text,
            title: state.titleController.text,
            startYear: state.startYearController.text,
            endYear: state.endYearController.text
        ));
        state.complete = false;
        state.endYearController.clear();
        state.startYearController.clear();
        state.titleController.clear();
        state.universityController.clear();
        if(!state.percent[1][0]){
          state.percent[1][0] = true;
        }
      } else{
        print(response.statusCode);
      }
    }else{
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Complete your data")));
    }
    notifyListeners();
  }

  editEducation(context, i) {
    state.isEdit = true;
    state.complete = true;
    state.universityController.text = state.education[i].university;
    state.titleController.text = state.education[i].title;
    state.startYearController.text = state.education[i].startYear;
    state.endYearController.text = state.education[i].endYear;
    notifyListeners();
  }

  saveEditing(context, i) async {
    String university = state.universityController.text;
    String title = state.titleController.text;
    String startYear = state.startYearController.text;
    String endYear = state.endYearController.text;

    if(university.isNotEmpty && title.isNotEmpty && startYear.isNotEmpty && endYear.isNotEmpty) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String userID = prefs.getString("idValue")!;
      String token = prefs.getString("token")!;

      Map<String, dynamic> body = {
        "universty": university,
        "title"    : title,
        "start"    : startYear,
        "end"      : endYear,
        "user_id"  : userID,
      };

      state.education[i].university = university;
      state.education[i].title = title;
      state.education[i].startYear = startYear;
      state.education[i].endYear = endYear;

      final response = await http.post(Uri.parse(UrlRoutes.editEducation),
          body: body,
          headers: {'Authorization': 'Bearer $token'}
      );
      if(response.statusCode == 200){
        print(response.statusCode );

        state.complete = false;
        state.isEdit = false;
        state.endYearController.clear();
        state.startYearController.clear();
        state.titleController.clear();
        state.universityController.clear();
      } else{
        print(response.statusCode);
      }
    }else{
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Complete your data")));
    }
    notifyListeners();
  }

  getEducation() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString("token")!;
    final response = await http.get(Uri.parse(UrlRoutes.showEducations),
      headers: {'Authorization': 'Bearer $token'});
    if(response.statusCode == 200){
      print(response.statusCode);
      Map<String, dynamic> body = jsonDecode(response.body);
      List<EducationModel> education = [];

      for(int i = 0; i < body['data'].length; i++){
        education.add( EducationModel(
            university: body['data'][i]['universty'].toString(),
            title: body['data'][i]['title'].toString(),
            startYear: body['data'][i]['start'].toString(),
            endYear: body['data'][i]['end'].toString(),
        ));
      }
      state.education = education;
      print(state.education[0]);
    }else{
      print(response.statusCode);
    }
    notifyListeners();
  }

  Future<void> getImage(i) async {
    final myfile = await ImagePicker().pickImage(source: ImageSource.gallery);
    dynamic image = File(myfile!.path);

    if(state.hasImage[i] == false){
      state.hasImage[i] = true;
      state.image.add(image);
    }else{
      state.image[i] = image;
    }
    notifyListeners();
  }


  // addPortfilio __________________________________________________________________________________________
  void addNewFile(context) async {
    FilePickerResult? resultFile = await FilePicker.platform.pickFiles();
    PlatformFile file = resultFile!.files.first;
    Map fileData= {
      "name": file.name,
      "size": "${file.size}",
      "path": "${file.path}",
    };
    if (file.size < 1000001) { //10 MB
        state.pdfFilesList.add(fileData);
        state.percent[3][0] = true;
    }else{
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Error..  max file size 10 MB")));
    }
    notifyListeners();
  }



  // experience __________________________________________________________________________________________
  isCheck(){
    if(state.isCheck) {
      state.isCheck = false;
    }else{
      state.isCheck = true;
    }
    notifyListeners();
  }

  chosenItem(value){
    state.chosenItem = value;
    notifyListeners();
  }

  saveExperience(context) async {
     String position = state.positionController.text;
     String typeWork = state.chosenList[state.chosenItem];
     String company = state.companyNameController.text;
     String location = state.locationController.text;
     String start = state.startYearExperienceController.text;
    if(
        position.isNotEmpty &&
        typeWork.isNotEmpty &&
        company.isNotEmpty  &&
        location.isNotEmpty &&
        start.isNotEmpty
    ) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String userID = prefs.getString("idValue")!;
      String? token = prefs.getString("token");

      print(userID);

      Map<String, dynamic> body = {
        "user_id"  : userID,
        "postion"  : position,
        "type_work": typeWork,
        "comp_name": company,
        "location" : location,
        "start"    : start,
      };

      final response = await http.post(Uri.parse(UrlRoutes.addExperince),
          body: body,
          headers: {'Authorization': 'Bearer $token'}
      );
      if(response.statusCode == 200){
        print(response.statusCode);
        state.experience.add(
            ExperienceModel(
            position: position,
            typeOfWork: typeWork,
            companyName: company,
            location: location,
            startYear: start)
        );
        state.complete = false;
        state.endYearController.clear();
        state.startYearController.clear();
        state.titleController.clear();
        state.universityController.clear();
        if(!state.percent[2][0]){
          state.percent[2][0] = true;
        }
      } else{
        print(response.statusCode);
      }
    }else{
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Complete your data")));
    }
    notifyListeners();
  }

  Future<void> getExperienceImage(i) async {
    final myfile = await ImagePicker().pickImage(source: ImageSource.gallery);
    dynamic image = File(myfile!.path);

    if(state.hasExperienceImage[i] == false){
      state.hasExperienceImage[i] = true;
      state.imageExperience.add(image);
    }else{
      state.imageExperience[i] = image;
    }
    notifyListeners();
  }

}
