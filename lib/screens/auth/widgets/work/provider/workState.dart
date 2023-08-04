import 'package:iconsax/iconsax.dart';


class WorkState {

  List<Map<String, dynamic>> worksSelected = [];
  Map<String, Map<String, dynamic>> selectedCountries = {};

  List<bool> isSelected = List.filled(13, false);


  List<Map<String, dynamic>> work = [
    {"icon": Iconsax.bezier4, "name": "UI/UX Designer"},
    {"icon": Iconsax.pen_tool4, "name": "Illustrator Designer"},
    {"icon": Iconsax.code4, "name": "Developer"},
    {"icon": Iconsax.graph4, "name": "Management"},
  ];
  List<Map<String, dynamic>> work2 = [
    {"icon": Iconsax.monitor_mobbile4, "name": "Information\n Technology"},
    {"icon": Iconsax.cloud_add4, "name": "Research and\n Analytics"}
  ];

  // Map<String, Map<String, String>> countries =
  //   {
  //     "us": {
  //       "name": "United States",
  //       "image": "assets/images/flags/Ellipse 804.png"
  //     },
  //     "malaysia": {
  //       "name": "Malaysia",
  //       "image": "assets/images/flags/2.png"
  //     },
  //     "singapore": {
  //       "name": "Singapore",
  //       "image": "assets/images/flags/Singapore.png"
  //     },
  //     "indonesia": {
  //       "name": "Indonesia",
  //       "image": "assets/images/flags/Indonesia.png"
  //     },
  //     "philippines": {
  //       "name": "Philippines",
  //       "image": "assets/images/flags/Philiphines.png"
  //     },
  //     "poland": {
  //       "name": "Poland",
  //       "image": "assets/images/flags/Polandia.png"
  //     },
  //     "india": {
  //       "name": "India",
  //       "image": "assets/images/flags/India.png"
  //     },
  //     "vietnam": {
  //       "name": "Vietnam",
  //       "image": "assets/images/flags/Vietnam.png"
  //     },
  //     "china": {
  //       "name": "China",
  //       "image": "assets/images/flags/China.png"
  //     },
  //     "canada": {
  //       "name": "Canada",
  //       "image": "assets/images/flags/Canada.png"
  //     },
  //     "saudi": {
  //       "name": "Saudi Arabia",
  //       "image": "assets/images/flags/Saudi Arabia.png"
  //     },
  //     "argentina": {
  //       "name": "Argentina",
  //       "image": "assets/images/flags/Argentina.png"
  //     },
  //     "brazil": {
  //       "name": "Brazil",
  //       "image": "assets/images/flags/Brazil.png"
  //     },
  //   };

}


