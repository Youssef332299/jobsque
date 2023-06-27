import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import '../../../../Data/core/urlRoutes.dart';


class AppliedState {
  String jobTitle = "";

  List<dynamic> fileList = [{}];

  void addNewFile(context) async {
    FilePickerResult? resultFile = await FilePicker.platform.pickFiles();
    PlatformFile file = resultFile!.files.first;

    if (file.size < 11) {
      fileList.add(file as Map);
      print("file${fileList}");

      Map fileData = {
        "cv_file": file,
        "name": file.name,
        "email": file,
        "mobile": file,
        "work_type": file,
        "other_file": file,
        "user_id": file,
      };
      http.Response response =
      await http.post(Uri.parse(UrlRoutes.apply), body: fileData);
      if (response.statusCode == 200) {
        var responseBody = jsonEncode(fileData);
        print(responseBody);
        print(fileList);
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Error..  max file size 10 MB")));
    }
  }

  editFile(file) async {}

  deleteFile(file) async {}
}
