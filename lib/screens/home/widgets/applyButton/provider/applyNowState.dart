import 'package:flutter/cupertino.dart';

class ApplyNowState{
  int portfolioChocin = 0;
  String jobTitle = "";
  bool isEditing = false;
  bool otherIsEditing = false;

  Map portfolioChocinData = {};
  Map<String, dynamic> otherFile = {};

  List<Map> fileList = [];
  List<bool> radio = [];
  TextEditingController usernameController = TextEditingController();
  TextEditingController edit_CV_NameController = TextEditingController();
  TextEditingController edit_otherFileController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

}