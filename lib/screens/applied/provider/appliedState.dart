import 'package:flutter/material.dart';
import 'dart:io';
import '../../../data/model/education/education.dart';
import '../../../data/model/experince/experince.dart';

class AppliedState {

  int index = 0;
  dynamic chosenItem;

  int isEditIndex = 0;
  bool isEdit = false;
  bool isCheck = false;
  bool complete = false;
  // bool isEditExperience = false;
  bool completeExperience = false;

  List applied = [];
  List jobDetails = [];
  List <File> image = [];
  List <File> imageExperience = [];
  List<String> chosenList = [
    "Full time",
    "Remote",
    "Post date",
    "Part",
  ];
  List<List> percent = [
    [true],
    [false],
    [false],
    [false],
  ];

  List<bool> bioDataCompleted = [true];
  List<bool> typeOfWorkCompleted = [false];
  List<bool> uploadPortfolioCompleted = [false];

  TextEditingController universityController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController startYearController = TextEditingController();
  TextEditingController endYearController = TextEditingController();

  TextEditingController positionController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController startYearExperienceController = TextEditingController();


  List<Map> pdfFilesList = [];
  List<EducationModel> education = [];
  List<ExperienceModel> experience = [];

  List<bool> hasImage = List<bool>.filled(10, false);
  List<bool> hasExperienceImage = List<bool>.filled(10, false);
}
