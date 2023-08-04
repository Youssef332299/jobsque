import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jobsque/screens/applied/provider/appliedProvider.dart';
import 'package:jobsque/screens/settings/provider/profileProvider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../Data/core/urlRoutes.dart';
import '../../../provider/homeProvder.dart';
import 'applyNowState.dart';


class ApplyNowProvider extends ChangeNotifier{
  ApplyNowState state = ApplyNowState();

  void init(){
    getUsernameAndPhone();
  }

  // uploadPortfolio ___________________________________________
  getPortfolio(context){
    state.portfolioChocinData = Provider.of<ProfileProvider>(context, listen: false).
    state.pdfFilesList[state.portfolioChocin];
    state.edit_CV_NameController.text = state.portfolioChocinData["name"];
    notifyListeners();
  }

  saveCV_editing(){
    state.portfolioChocinData["name"] = state.edit_CV_NameController.text;
    state.isEditing = false;
    notifyListeners();
  }

  saveOtherFile_editing(){
    state.otherFile["name"] = state.edit_otherFileController.text;
    state.otherIsEditing = false;
    notifyListeners();
  }

  onTapEditCV_name(){
    state.isEditing = true;
    notifyListeners();
    return state.isEditing;
  }

  onTapEditOtherFile_name(){
    state.otherIsEditing = true;
    notifyListeners();
    return state.otherIsEditing;
  }

  fill_radio_list(context){
    int length = Provider.of<ProfileProvider>(context, listen: false).state.pdfFilesList.length;
    for(int i = 0; i < length; i++){
      state.radio.add(false);
    }
  }

  void getOtherFile(context)async{
    // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    FilePickerResult? resultFile = await FilePicker.platform.pickFiles();
    PlatformFile file = resultFile!.files.first;

    Map<String, dynamic> fileData= {
      "name": file.name,
      "size": "${file.size}",
      "path": "${file.path}",
    };

    if (file.size < 10000001) { //10 MB
        // sharedPreferences.setString('PDF[$index]', PDF);
        state.otherFile = fileData;
        state.edit_otherFileController.text = state.otherFile["name"];

    } else{
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Error..  max file size 10 MB")));
    }
    notifyListeners();
  }

  void submit(context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");
    String? email = sharedPreferences.getString("emailValue");
    String? id = sharedPreferences.getString("idValue");
    String path = state.portfolioChocinData["path"];
    // int i = Provider.of<AppliedProvider>(context, listen: false).state.applied.length -1;

      var url = Uri.parse(UrlRoutes.apply);
      var request = http.MultipartRequest('POST', url);
      request.headers.addAll({'Authorization': 'Bearer $token'});

      request.files.add(await http.MultipartFile.fromPath('cv_file', path));
      request.fields['name'] = state.portfolioChocinData["name"];
      request.fields['email'] = email!;
      request.fields['mobile'] = state.phoneController.text.toString();
      request.fields['work_type'] = Provider.of<HomeProvider>(context, listen: false).state.jobDataMap["job_time_type"];
      request.fields['other_file'] = "${Provider.of<ApplyNowProvider>(context, listen: false).state.otherFile["name"]}";
      request.fields['job_id'] = "${Provider.of<HomeProvider>(context, listen: false).state.jobDataMap["id"]}";
      request.fields['user_id'] = "$id";
      var response = await request.send();

      if (response.statusCode == 200) {
        Navigator.of(context).pushNamed("applySuccesfullyWidget");
        Provider.of<HomeProvider>(context, listen: false).state.submited = true;
        // Provider.of<AppliedProvider>(context, listen: false).state.uploadPortfolioCompleted[i] = true;
        sharedPreferences.setBool("submited", Provider.of<HomeProvider>(context, listen: false).state.submited);
      } else {
        print(response.statusCode);
      }
    notifyListeners();
  }

  removeOtherFile(){
  state.otherFile.clear();
  notifyListeners();
  }


  // typeOfWork ___________________________________________
  onTapNext_type_of_work(context){
    if(state.radio.contains(true)){
      // int i = Provider.of<AppliedProvider>(context, listen: false).state.applied.length -1;
      // Provider.of<AppliedProvider>(context, listen: false).state.typeOfWorkCompleted[i] = true;
      Navigator.of(context).pushNamed("uploadPortfolioWidget");
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Chose portfolio")));
    }
  }

  onTapRadio(i, pdf) async {
    if(!state.radio[i]){
      int index;
      index = state.radio.indexWhere((element) => element == true);
      if (index != -1) {
        state.radio[index] = false;
      }
      state.radio[i] = true;
      state.portfolioChocin = i;
      notifyListeners();
      //  Map fileData= {
      // "name": "${pdf['name']}",
      // "size": "${pdf["size"]}",
      // "path": "${pdf['path']}",
      //   };
      // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      // String PDF = json.encode(fileData);
      // sharedPreferences.setString("cv_uploaded${}", PDF);
      return state.radio[i];
    }
  }


  // bioData ___________________________________________
  onTapNext_bio_data(String email, context){
    if(state.usernameController.text.isNotEmpty && state.phoneController.text.isNotEmpty && email.isNotEmpty){
      // Provider.of<AppliedProvider>(context, listen: false).state.bioDataCompleted.add(true);
      // Provider.of<AppliedProvider>(context, listen: false).state.typeOfWorkCompleted.add(false);
      // Provider.of<AppliedProvider>(context, listen: false).state.uploadPortfolioCompleted.add(false);
      Provider.of<AppliedProvider>(context, listen: false).fetchJobsData();
      Navigator.of(context).pushNamed("typeOfWorkWidget");
    }else{
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Complete your data")));
    }
  }

  getUsernameAndPhone() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    state.usernameController.text = sharedPreferences.getString("usernameValue")!;
    state.phoneController.text = sharedPreferences.getString("mobileValue")!;
  }
}