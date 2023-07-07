import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class ProfileState {

  final imagePicker = ImagePicker();
  String country = "England";
  File? galleryImage;
  late File image;

  bool applicationReminders = false;
  bool applicationUpdate = false;
  bool jobsInterested = false;
  bool messageNudges = false;
  bool seekerUpdates = false;
  bool showProfile = false;
  bool searchAlert = false;
  bool allMessage = false;
  bool hasImage = false;
  bool useIt = false;

  TextEditingController edit_CV_NameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController aboutController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController bioController = TextEditingController();


  List<bool> isOpened = List.filled(6, false);
  List<dynamic> pdfFilesList = [];
  List<bool> isEditing = [];

}
