import 'package:flutter/cupertino.dart';
import '../../../data/model/suggest/suggestModel.dart';

class HomeState {

  String result = "";
  bool isReset = false;
  bool isSelected = false;

  dynamic chosenItem;
  dynamic username;

  TextEditingController jobTittleController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController salaryController = TextEditingController();
  TextEditingController searchValueController = TextEditingController();

  late List<bool?> iconSuggest;
  late List<bool?> iconRecent;

  List<SuggestedJobsModel?>? suggest;

  List<Map> suggested = [];
  List<Map> jobs = [];
  List<Map> favorites = [];
  List<Map> searchFilter = [];
  List<String> searchList = [];
  List<String> history = [];
  List<String> suggestions = [
    "UI/UX Designer",
    "Project Manager",
    "Product Designer",
    "UX Designer",
    "Front-End Developer"
  ];
}