import 'package:file_picker/file_picker.dart';
import 'package:jobsque/screens/settings/provider/profileState.dart';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../Data/core/urlRoutes.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';

import '../../home/provider/homeProvder.dart';


class ProfileProvider extends ChangeNotifier{
  ProfileState state = ProfileState();

  // profile ______________________________
  void init() {
    getUserData();
    _loadImageFromPrefs();
  }



  Future<void> _loadImageFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final imagePath = prefs.getString('profileImage');
    if (imagePath != null) {
      state.image = File(imagePath);
      state.hasImage = true;
    }
    notifyListeners();
  }

  Future<void> saveImageToPrefs(File image) async {
    final tempDir = await getTemporaryDirectory();
    final tempPath = '${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg';
    await image.copy(tempPath);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('profileImage', tempPath);
  }

  Future<void> getImage() async {
    final myfile = await ImagePicker().pickImage(source: ImageSource.gallery);
    final image = File(myfile!.path);
    state.image = image;
    state.hasImage = true;
    notifyListeners();
  }

  void getUserData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    state.nameController.text = (sharedPreferences.getString("usernameValue") ?? "");
    state.bioController.text = (sharedPreferences.getString("bioValue") ?? "");
    state.addressController.text = (sharedPreferences.getString("addressValue") ?? "");
    state.mobileController.text = (sharedPreferences.getString("mobileValue") ?? "");
    state.aboutController.text = (sharedPreferences.getString("editAboutValue") ?? "");
    notifyListeners();
  }

  setEditAbout(context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if(state.aboutController.text.isNotEmpty){
      sharedPreferences.setString("editAboutValue", state.aboutController.text);
      Navigator.of(context).pop();
    }
    notifyListeners();
  }

  void onTap(context){

    saveProfileEditing(
      context,
      state.bioController.text,
      state.addressController.text,
      state.mobileController.text,
    );
    setUserData(
      state.nameController.text,
      state.bioController.text,
      state.addressController.text,
      state.mobileController.text,
    );
    saveImageToPrefs(state.image);
  }


  // edit profile ______________________________
  Future<void> getImageFromGallery(image) async {
    final myfile = await state.imagePicker.pickImage(source: ImageSource.gallery);
    image = File(myfile!.path);
    dynamic newImage = image;
    saveImageToSharedPreferences(newImage);
    print(newImage);
    notifyListeners();
  }

  Future<void> saveImageToSharedPreferences(image) async {
    final directory = await getApplicationDocumentsDirectory();
    final imagePath = '${directory.path}/image.jpg';

    try {
      await image.copy(imagePath);
      final sharedPreferences = await SharedPreferences.getInstance();
      await sharedPreferences.setString('imagePath', imagePath);

      notifyListeners();
    } catch (e) {
      print('Error: $e');
    }
  }

  saveProfileEditing(context,bio,address,mobile) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");

    Map editProfileData =
    { 'bio': bio,
      'address': address,
      'mobile': mobile,
    };
    var editProfileBody = jsonEncode(editProfileData);
    http.Response response = await http.put(Uri.parse(UrlRoutes.editProfile),
        body: editProfileData,
        headers: {'Authorization': 'Bearer $token'}
    );
    print(response.statusCode);
    print(editProfileBody);

    if(response.statusCode == 200 ){
      Navigator.of(context).pop();
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Success")));
      notifyListeners();
    }else{
      print(response.statusCode);
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Error")));
    }
  }

  setUserData(name,bio,address,mobile) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString("usernameValue", name);
    await sharedPreferences.setString("bioValue", bio);
    await sharedPreferences.setString("addressValue", address);
    await sharedPreferences.setString("mobileValue", mobile);
    notifyListeners();
  }



  // portfolio________________________________
  void addNewFile(context)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    FilePickerResult? resultFile = await FilePicker.platform.pickFiles();
    String? token = sharedPreferences.getString("token");
    PlatformFile file = resultFile!.files.first;

    int index = state.pdfFilesList.length;
    double size = file.size / 1000;
    int finalSize = size.toInt();
    dynamic fileName = file.name;
    dynamic filePath = file.path;
    Map fileData= {
      "name": "$fileName",
      "size": "$finalSize",
      "path": "$filePath",
    };
    String PDF = json.encode(fileData);


    if (file.size < 10000001) { //10 MB

     print("its called");

      var url = Uri.parse(UrlRoutes.addPortfolio);
      var request = http.MultipartRequest('POST', url);

      request.headers.addAll({'Authorization': 'Bearer $token'});
      request.fields['name'] = fileName;
      request.files.add(await http.MultipartFile.fromPath('cv_file', filePath));
      var response = await request.send();

         if (response.statusCode == 200) {
             sharedPreferences.setString('PDF[$index]', PDF);
             state.pdfFilesList.add(fileData);
         }else {
           ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
               content: Text("Error..  max file size 10 MB")));
         }
    }else{
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Error..  max file size 10 MB")));
    }
    notifyListeners();
  }

  Future<void> getFileData() async {
    final prefs = await SharedPreferences.getInstance();
    for(int i = 0; i <= state.pdfFilesList.length; i++){
      String PDF = prefs.getString('PDF[$i]')!;
      Map<String, dynamic> PDFmap = json.decode(PDF);
      // if(!state.pdfFilesList.contains(PDFmap)){
      state.pdfFilesList.add(PDFmap);
      print(PDFmap);
      print("state.pdfFilesList.length: ${state.pdfFilesList.length}");
      print("state.pdfFilesList: ${state.pdfFilesList}");

      // }
    }
    notifyListeners();
  }

  Future<void> deleteFile(element, i) async {
    final prefs = await SharedPreferences.getInstance();
    state.pdfFilesList.remove(element);
    // String PDF = json.encode(element);
    prefs.remove("PDF[$i]");

    notifyListeners();
  }

  fill_isEditing_list(context){
    int length = state.pdfFilesList.length;
    for(int i = 0; i < length; i++){
      state.isEditing.add(false);
    }
    notifyListeners();
    print("fill_isEditing_list: ${state.isEditing}");
  }

  onTapEditCV_name(i){
    state.isEditing[i] = true;
    notifyListeners();
    return state.isEditing;
  }

  saveCV_editing(String value, i){
    if(value.isNotEmpty){
      state.pdfFilesList[i]["name"] = value;
      state.isEditing[i] = false;
      state.edit_CV_NameController.clear();
    }else{
      state.isEditing[i] = false;
    }
    notifyListeners();
  }



  // language________________________________
  getLanguage(){}


  // notification________________________________________
  void yourJobSearchAlert(){}

  void jobApplicationUpdate(){}

  void jobApplicationReminders(){}

  void jobsYouMayBeInterested(){}

  void jobSeekerUpdate(){}

  void showProfile(){}

  void allMessage(){}

  void messageNudges(){}



  // phoneNumber________________________________________
  onPhoneChangedComplete(context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString("mobileValue", state.mobileController.text);
    Navigator.of(context).pop();
    notifyListeners();
  }

  usePhoneToResetPassword(value){
    value = state.useIt;
    if (state.useIt == true) {
      state.useIt = false;
    } else {
      state.useIt = true;
    }
    notifyListeners();
  }



  // helpCenter________________________________________
  onSearch(){}

  void onTapIconArrow(i){
    print(i);

    if(state.isOpened[i] == false){
      state.isOpened[i] = true;
      print(state.isOpened[i]);
    }else if(state.isOpened[i] == true){
      state.isOpened[i] = false;
      print(state.isOpened[i]);
    }
    notifyListeners();
  }

}
