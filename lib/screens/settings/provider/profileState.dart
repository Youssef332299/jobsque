import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../../../Data/core/urlRoutes.dart';
import 'dart:io';


class ProfileState {
  String country = "England";

  bool searchAlert = false;
  bool applicationUpdate = false;
  bool applicationReminders = false;
  bool jobsInterested = false;
  bool seekerUpdates = false;
  bool showProfile = false;
  bool allMessage = false;
  bool messageNudges = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  // dynamic cameraImage;
  File? galleryImage;

  final imagePicker = ImagePicker();

  List<dynamic> fileList = [{}];

  editFile(file)async{}

  deleteFile(file)async{}
}
