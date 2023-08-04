import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import '../../../Core/app_colors.dart';
import '../../../Data/core/urlRoutes.dart';
import '../../settings/provider/profileProvider.dart';
import 'homeState.dart';


class HomeProvider extends ChangeNotifier {
  HomeState state = HomeState();

  // bottomNavigation___________________________________________________

  onTapBottomNavigation(index) {
    state.indexSelect = index;
    notifyListeners();
  }

  // home___________________________________________________

  void init(context) {
    Provider.of<ProfileProvider>(context, listen: false).getFileData();
    returnDataToHistory();
    fetchSuggestedData();
    getUsernameValue();
    loadIconSuggest();
    notifyListeners();
    loadIconRecent();
    fetchJobsData();
    getSearchList();
    getSubmited();
  }


  Future<void> addFavorite(jobId) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");
    String? id = sharedPreferences.getString("idValue");

    var response = await http.post(Uri.parse(UrlRoutes.addFavorite), body: {
      "user_id": "$id",
      "job_id": "$jobId",
    }, headers: {
      'Authorization': 'Bearer $token'
    });

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      Map<String, dynamic> addFavorite = Map<String, dynamic>.from(data);

      print("addFavorite: $addFavorite");
    } else {
      print("addFavorite status: ${response.statusCode}");
    }
  }

  Future<void> deleteFavorite(jobId) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");
    String? id = sharedPreferences.getString("idValue");

    var response =
        await http.delete(Uri.parse(UrlRoutes.deleteFavorite), body: {
      "user_id": "$id",
      "job_id": "$jobId",
    }, headers: {
      'Authorization': 'Bearer $token'
    });

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print("data delete: $data");
      print("delete status: ${response.statusCode}");
    } else {
      print("delete status: ${response.statusCode}");
    }
  }

  Future<void> saveIcon(int index, bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('icon$index', value);
  }

  Future<void> loadIconSuggest() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<bool?> icons = [];
    for (int i = 0; i < 10; i++) {
      bool? icon = prefs.getBool('icon$i');
      icons.add(icon ?? false);
    }
    state.iconSuggest = icons;
    notifyListeners();
  }

  Future<void> loadIconRecent() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<bool?> icons = [];
    for (int i = 0; i < 10; i++) {
      bool? icon = prefs.getBool('icon$i');
      icons.add(icon ?? false);
    }
    state.iconRecent = icons;
    notifyListeners();
  }

  Future<void> fetchSuggestedData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");

    final response = await http.get(Uri.parse(UrlRoutes.showSuggestJobs),
        headers: {'Authorization': 'Bearer $token'});

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      Map<String, dynamic> suggestList = Map<String, dynamic>.from(data);

      List<Map> newResults = [];

      for (int i = 0; i < suggestList.length; i++) {
        newResults.add(suggestList["data"][i]);
      }
      state.suggested = newResults;
      notifyListeners();
    }
  }

  Future<void> fetchJobsData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");

    final response = await http.get(Uri.parse(UrlRoutes.showJobs),
        headers: {'Authorization': 'Bearer $token'});

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      Map<String, dynamic> suggest = Map<String, dynamic>.from(data);

      List<Map> newResults = [];

      for (int i = 0; i < suggest.length; i++) {
        newResults.add(suggest["data"][i]);
      }
      state.jobs = newResults;
    }
  }

  getUsernameValue() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    state.username = (sharedPreferences.getString("usernameValue") ?? "");
  }

  onTopSuggestSaveIcon(i, context) {
    if (state.iconSuggest[i] == false) {
      state.iconSuggest[i] = true;
      saveIcon(i, true);
      addFavorite(state.suggested[i]["id"]);
      notifyListeners();
    } else {
      state.iconSuggest[i] = false;
      saveIcon(i, false);
      deleteFavorite(state.suggested[i]["id"]);
      notifyListeners();
    }
  }

  onTopRecentSaveIcon(i, context) {
    if (state.iconRecent[i] == false) {
      state.iconRecent[i] = true;
      saveIcon(i, true);
      addFavorite(state.jobs[i]["id"]);
      notifyListeners();
    } else {
      state.iconRecent[i] = false;
      saveIcon(i, false);
      deleteFavorite(state.jobs[i]["id"]);
      notifyListeners();
    }
  }

  getSubmited() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    state.submited = await sharedPreferences.getBool("submited")!;
  }


  // applyNow___________________________________________________
  onDropdownChange(value){
    state.chosenItem = value;
    notifyListeners();
  }

  goToApplyNow(id, name, job_time_type, job_level, job_description, job_skill,
      comp_name, comp_email, comp_website, about_comp, location, context) async {

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    state.jobDataMap = {
      "id": id,
      "name": name,
      "job_time_type": job_time_type,
      "job_level": job_level,
      "job_description": job_description,
      "job_skill": job_skill,
      "comp_name": comp_name,
      "comp_email": comp_email,
      "comp_website": comp_website,
      "about_comp": about_comp,
      "location": location,
    };

    String jobDetails = json.encode(state.jobDataMap);
    print(jobDetails);

    String ID = "${state.jobDataMap["id"]}";
    print("id: $ID");
    await sharedPreferences.setString("${ID}", jobDetails);

    Navigator.of(context).pushNamed("descriptionWidget");
    notifyListeners();
  }

  // search___________________________________________________

  setJobId(jobId) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString("$jobId", "$jobId");
    print("setJobId: $jobId");
    notifyListeners();
  }

  setResult(result) async {
    print("saved in cash 2 $result");
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    state.result =
        (await sharedPreferences.setString("result", result)) as String;
    print("saved in cash 3 ${state.result}");
    notifyListeners();
    return state.result;
  }

  setSearchList(history) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setStringList("searchList", history);
    state.searchList = history;
  }

  returnDataToHistory() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    state.searchList = sharedPreferences.getStringList("searchList")!;
    state.history = state.searchList;
    notifyListeners();
  }

  getSearchList() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    state.searchList = sharedPreferences.getStringList("searchList")!;
    notifyListeners();
  }

  void addToHistory(string) async {
    state.history.add(string);
    await setSearchList(state.history);
    await getSearchList();
    setResult(string);
    notifyListeners();
  }

  void addToResult(string, context) async {
    setResult(string);
    Navigator.of(context)
        .pushNamedAndRemoveUntil("searchResults", (route) => false);
    notifyListeners();
  }

  void deleteFromHistory(string) async {
    state.history.remove(string);
    await setSearchList(state.history);
    await getSearchList();
    notifyListeners();
  }

  removeJobId(jobId) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.remove("$jobId");
    print("removeJobId: $jobId");
    notifyListeners();
  }

  onEditingComplete(context) {
    if (state.searchValueController.text.isNotEmpty) {
      setResult(state.searchValueController.text);
      addToHistory(state.searchValueController.text);
      Navigator.of(context)
          .pushNamedAndRemoveUntil("searchResults", (route) => false);
      notifyListeners();
    }
  }

  Future<void> searchJob() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");

    final response = await http.get(
      Uri.parse(UrlRoutes.searchJob),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      Map<String, dynamic> searchResults = Map<String, dynamic>.from(data);
      List<Map> filterSearch = [];
      for (int i = 0; i < data.length; i++) {
        filterSearch.add(data["data"][i]);
      }
      state.searchFilter = filterSearch;
      print(data);
      print(searchResults);
    }
  }

  // searchResults__________________________________________________________________

  void showBottomSheet2(context) {
    showModalBottomSheet(
        // isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        context: context,
        builder: (BuildContext context) {
          double width = state.jobsTypeSelected.length * 80;
          return SizedBox(
            height: 300,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 3,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: 50,
                    width: width,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: state.jobsTypeSelected.length,
                        itemBuilder: (ctx, i) {
                          return Text(
                            "${state.jobsTypeSelected[i]}/",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          );
                        })),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 53,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding:
                          const EdgeInsets.only(right: 50, left: 20, top: 10),
                      itemCount: state.jobsType3.length,
                      itemBuilder: (context, i) {
                        double object3 =
                            state.jobsType3[i].characters.length < 4
                                ? state.jobsType3[i].characters.length * 19
                                : state.jobsType3[i].characters.length * 14;

                        return InkWell(
                          onTap: () {
                            selectJobType(state.jobsType3[i]);
                            notifyListeners();
                          },
                          child: Container(
                            height: 50,
                            width: object3,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: state.jobsTypeSelected
                                            .contains(state.jobsType3[i])
                                        ? AppColors.primary500
                                        : AppColors.neutral400),
                                color: state.jobsTypeSelected
                                        .contains(state.jobsType3[i])
                                    ? AppColors.primary100
                                    : AppColors.neutral100),
                            child: Text(
                              state.jobsType3[i],
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: state.jobsTypeSelected
                                          .contains(state.jobsType3[i])
                                      ? AppColors.primary500
                                      : AppColors.neutral400),
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 345,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary500,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 14)),
                    onPressed: () {
                      Navigator.pop(context);
                      showBottomSheet2(context);
                    },
                    child: Text(
                      "Show result",
                      style:
                          TextStyle(fontSize: 18, color: AppColors.neutral100),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  void showBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 810,
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 9,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("searchResults");
                        },
                        icon: const Icon(Iconsax.arrow_left)),
                    const SizedBox(
                      width: 98,
                    ),
                    const Text(
                      "Set Filter",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          if (state.isReset == false) {
                            state.isReset = true;
                            state.jobTittleController.text = "";
                            state.locationController.text = "";
                            notifyListeners();
                          }
                        },
                        child: Text(
                          "Reset",
                          style: TextStyle(
                              color: AppColors.primary500, fontSize: 16),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Job Tittle",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.neutral900,
                          fontSize: 16),
                    ),
                  ],
                ),
                Container(
                  height: 56,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.neutral400),
                  ),
                  margin: const EdgeInsets.only(right: 25, left: 25, top: 15),
                  child: TextFormField(
                    controller: state.jobTittleController,
                    onChanged: (value) {
                      if (value.isNotEmpty && state.isReset == true) {
                        state.isReset = false;
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Iconsax.briefcase,
                        color: AppColors.neutral900,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Location",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.neutral900,
                          fontSize: 16),
                    ),
                  ],
                ),
                Container(
                  height: 56,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.neutral400),
                  ),
                  margin: const EdgeInsets.only(right: 25, left: 25, top: 15),
                  child: TextFormField(
                    controller: state.locationController,
                    onChanged: (value) {
                      if (value.isNotEmpty && state.isReset == true) {
                        state.isReset = false;
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Iconsax.location,
                        color: AppColors.neutral900,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Salary",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.neutral900,
                          fontSize: 16),
                    ),
                  ],
                ),
                Container(
                  height: 56,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.neutral400),
                  ),
                  margin: const EdgeInsets.only(right: 25, left: 25, top: 15),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      const Center(child: Icon(Iconsax.dollar_circle)),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 290,
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          isDense: true,
                          style: TextStyle(
                              fontSize: 9.sp,
                              color: AppColors.neutral600,
                              fontWeight: FontWeight.w500),
                          value: state.chosenItem,
                          decoration:
                              const InputDecoration(border: InputBorder.none),
                          icon: const Icon(Iconsax.arrow_down_14),
                          items: const [
                            DropdownMenuItem(
                              value: 0,
                              child: Text(
                                "5K - 10K",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            DropdownMenuItem(
                              value: 1,
                              child: Text("10K - 20K",
                                  style: TextStyle(fontSize: 16)),
                            ),
                            DropdownMenuItem(
                              value: 2,
                              child: Text("15K - 30K",
                                  style: TextStyle(fontSize: 16)),
                            ),
                            DropdownMenuItem(
                              value: 3,
                              child: Text("25K - 40K",
                                  style: TextStyle(fontSize: 16)),
                            ),
                            DropdownMenuItem(
                              value: 4,
                              child: Text("35K - 60K",
                                  style: TextStyle(fontSize: 16)),
                            ),
                          ],
                          onChanged: (value) {
                            state.chosenItem = value;
                            notifyListeners();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Job Type",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.neutral900,
                          fontSize: 16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 72,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding:
                          const EdgeInsets.only(right: 50, left: 20, top: 30),
                      itemCount: state.jobsType.length,
                      itemBuilder: (context, i) {
                        double object = state.jobsType[i].characters.length < 7
                            ? state.jobsType[i].characters.length * 12.5
                            : state.jobsType[i].characters.length * 10.5;
                        return InkWell(
                          onTap: () {
                            selectJobType(state.jobsType[i]);
                            notifyListeners();
                          },
                          child: Container(
                            height: 50,
                            width: object,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: state.jobsTypeSelected
                                            .contains(state.jobsType[i])
                                        ? AppColors.primary500
                                        : AppColors.neutral400),
                                color: state.jobsTypeSelected
                                        .contains(state.jobsType[i])
                                    ? AppColors.primary100
                                    : AppColors.neutral100),
                            child: Text(
                              state.jobsType[i],
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: state.jobsTypeSelected
                                          .contains(state.jobsType[i])
                                      ? AppColors.primary500
                                      : AppColors.neutral400),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 51,
                  width: double.infinity,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      padding:
                          const EdgeInsets.only(right: 50, left: 20, top: 10),
                      itemCount: state.jobsType2.length,
                      itemBuilder: (context, i) {
                        double object2 =
                            state.jobsType2[i].characters.length < 7
                                ? state.jobsType2[i].characters.length * 12
                                : state.jobsType2[i].characters.length * 10;

                        return InkWell(
                          onTap: () {
                            selectJobType(state.jobsType2[i]);
                            notifyListeners();
                          },
                          child: Container(
                            height: 50,
                            width: object2,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                    color: state.jobsTypeSelected
                                            .contains(state.jobsType2[i])
                                        ? AppColors.primary500
                                        : AppColors.neutral400),
                                color: state.jobsTypeSelected
                                        .contains(state.jobsType2[i])
                                    ? AppColors.primary100
                                    : AppColors.neutral100),
                            child: Text(
                              state.jobsType2[i],
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: state.jobsTypeSelected
                                          .contains(state.jobsType2[i])
                                      ? AppColors.primary500
                                      : AppColors.neutral400),
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 150,
                ),
                SizedBox(
                  width: 345,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary500,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 14)),
                    onPressed: () {
                      Navigator.pop(context);
                      showBottomSheet2(context);
                    },
                    child: Text(
                      "Show result",
                      style:
                          TextStyle(fontSize: 18, color: AppColors.neutral100),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  returnResult() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    state.result = sharedPreferences.getString("result")!;
    state.jobTittleController.text = state.result;
    notifyListeners();
  }

  Future<void> filterSearch() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");

    final response = await http.get(
      Uri.parse(UrlRoutes.filterSearch),
      headers: {'Authorization': 'Bearer $token'},
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      Map<String, dynamic> searchResults = Map<String, dynamic>.from(data);
      print(data);
      print(searchResults);
    }
  }

  void selectJobType(work) {
    if (!state.jobsTypeSelected.contains(work)) {
      state.jobsTypeSelected.add(work);
      print(state.jobsType);
      notifyListeners();
    } else {
      state.jobsTypeSelected.remove(work);
      notifyListeners();
    }
  }


// notification ___________________________________________________

  Future<void> initNotifications() async {
    await state.firebaseMessaging.requestPermission();
    final fCMToken = await state.firebaseMessaging.getToken();
    print(fCMToken);
  }

}
