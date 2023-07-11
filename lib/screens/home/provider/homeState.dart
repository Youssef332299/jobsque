import 'package:flutter/cupertino.dart';
import '../homeScreen.dart';
import '../../Messages/MessagesScreen.dart';
import '../../applied/appliedScreen.dart';
import '../../save/savedScreen.dart';
import '../../settings/profileScreen.dart';


class HomeState {

   bool isSelected = false;
   bool haveNotification = false;
   bool isReset = false;
   bool submited = false;
   int indexSelect = 0;
   String result = "";

  dynamic chosenItem;
  dynamic employees;
  dynamic username;

  TextEditingController searchValueController = TextEditingController();
  TextEditingController jobTittleController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController salaryController = TextEditingController();

  late List<bool?> iconSuggest;
  late List<bool?> iconRecent;

  Map<String, dynamic> jobDataMap = {};
  List<String> jobsTypeSelected = [];
  List<String> searchList       = [];
  List<Map> searchFilter        = [];
  List<String> history          = [];
  List<Map> suggested           = [];
  List<Map> favorites           = [];
  List<Map> jobs                = [];

  List<Widget> pages = [
    const HomeScreen(),
    const MessageScreen(),
    const AppliedScreen(),
    const SavedScreen(),
    const ProfileScreen(),
  ];

  List<String> suggestions = [
    "UI/UX Designer",
    "Project Manager",
    "Product Designer",
    "UX Designer",
    "Front-End Developer"
  ];

  List<String> jobsType = [
    "Full Time",
    "Remote",
    "Contract",
  ];

  List<String> jobsType2 = [
    "Part Time",
    "Onsite",
    "Internship",
  ];

  List<String> jobsType3 = [
    "Remote",
    "Onsite",
    "Hybrid",
    "Any",
  ];




}