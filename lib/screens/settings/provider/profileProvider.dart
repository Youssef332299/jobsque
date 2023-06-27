import 'package:file_picker/file_picker.dart';
import 'package:jobsque/screens/settings/provider/profileState.dart';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../Data/core/urlRoutes.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_picker/image_picker.dart';

class ProfileProvider extends ChangeNotifier{
  ProfileState state = ProfileState();

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
      print("image: $image");
      print('imagePath: $imagePath');

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
      Navigator.of(context).pushNamed("profile");
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


  //____________________________________________
  // portfolio _________________________________

  void addNewFile(context)async{
    FilePickerResult? resultFile = await FilePicker.platform.pickFiles();
    PlatformFile file = resultFile!.files.first;

    if (file.size < 11) {
      state.fileList.add(file as Map);
      print("file${state.fileList}");

      Map fileData = {"cv_file": file,"name": file.name,};
      http.Response response = await http.post(Uri.parse(UrlRoutes.addPortfolio),body: fileData);
      if(response.statusCode == 200){
        var responseBody = jsonEncode(fileData);
        print(responseBody);
        print(state.fileList);
        notifyListeners();
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Error..  max file size 10 MB")));
    }
  }


  //____________________________________________
  //  _________________________________

}
