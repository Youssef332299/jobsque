import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import '../../../Core/app_colors.dart';
import '../../../Data/core/urlRoutes.dart';
import 'homeState.dart';


class HomeProvider extends ChangeNotifier {
  HomeState state = HomeState();

  // home___________________________________________________

  void init(){
    loadIconSuggest();
    loadIconRecent();
    getUsernameValue();
    fetchSuggestedData();
    fetchJobsData();
    getSearchList();
    returnDataToHistory();
    notifyListeners();
  }

  Future<void> addFavorite(jobId) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");
    String? id = sharedPreferences.getString("idValue");

    var response = await http.post(Uri.parse(UrlRoutes.addFavorite),
        body: {"user_id": "$id", "job_id": "$jobId",},
        headers: {'Authorization': 'Bearer $token'});

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

    var response = await http.delete(Uri.parse(UrlRoutes.deleteFavorite),
        body: {"user_id": "$id", "job_id": "$jobId",},
        headers: {'Authorization': 'Bearer $token'});

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

      for(int i = 0; i < suggestList.length; i++) {
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
      Map<String, dynamic> suggestList = Map<String, dynamic>.from(data);

      List<Map> newResults = [];

      for(int i = 0; i < suggestList.length; i++) {
        newResults.add(suggestList["data"][i]);
      }
        state.jobs = newResults;
    }
  }

  getUsernameValue() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      state.username = (sharedPreferences.getString("usernameValue") ?? "");
  }

  onTopSuggestSaveIcon(i,context){
    if(state.iconSuggest[i] == false){
      state.iconSuggest[i] = true;
      saveIcon(i, true);
      addFavorite(state.suggested[i]["id"]);
      notifyListeners();
    }else{
      state.iconSuggest[i] = false;
      saveIcon(i, false);
      deleteFavorite(state.suggested[i]["id"]);
      notifyListeners();
    }
  }

  onTopRecentSaveIcon(i,context){
    if(state.iconRecent[i] == false){
      state.iconRecent[i] = true;
      saveIcon(i, true);
      addFavorite(state.jobs[i]["id"]);
      notifyListeners();
    }else{
      state.iconRecent[i] = false;
      saveIcon(i, false);
      deleteFavorite(state.jobs[i]["id"]);
      notifyListeners();
    }
  }

  // search___________________________________________________

  setJobId(jobId) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString("$jobId", "$jobId");
    print("setJobId: $jobId");
    notifyListeners();
  }

  removeJobId(jobId) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.remove("$jobId");
    print("removeJobId: $jobId");
    notifyListeners();
  }

  setResult(result) async {
    print("saved in cash 2 $result");
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    state.result = (await sharedPreferences.setString("result", result)) as String;
    print("saved in cash 3 ${state.result}");
    notifyListeners();
    return state.result;
  }

  setSearchList(history) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setStringList("searchList", history);
    state.searchList = history;
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

  void addToResult(string,context) async {
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

  returnDataToHistory() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      state.searchList = sharedPreferences.getStringList("searchList")!;
      state.history = state.searchList;
      notifyListeners();
  }

  onEditingComplete(context){
    if(state.searchValueController.text.isNotEmpty) {
      setResult(state.searchValueController.text);
      addToHistory(state.searchValueController.text);
      Navigator.of(context)
          .pushNamedAndRemoveUntil("searchResults", (route) => false);
    notifyListeners();
    }
  }

  // searchResults__________________________________________________________________


  void showBottomSheet2(context) {
    showModalBottomSheet(
      // isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(20)),
        ),
        context: context,
        builder: (BuildContext context){
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
                const SizedBox(
                  child: Text("youssef",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 350,
                  height: 150,
                  child: Wrap(
                    spacing: 3.5,
                    runSpacing: 10,
                    children: [
                      InkWell(onTap: (){
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                          notifyListeners();
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                          notifyListeners();
                          },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                            notifyListeners();
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                          notifyListeners();
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                        notifyListeners();
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                          notifyListeners();
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),

                    ],
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
                    const SizedBox(width: 9,),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("searchResults");
                        }, icon: const Icon(Iconsax.arrow_left)),
                    const SizedBox(
                      width: 98,
                    ),
                    const Text(
                      "Set Filter",
                      style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    TextButton(onPressed: (){
                      if(state.isReset == false){
                          state.isReset = true;
                          state.jobTittleController.text = "";
                          state.locationController.text = "";
                          notifyListeners();
                      }
                    }, child: Text(
                      "Reset",style: TextStyle(color: AppColors.primary500,fontSize: 16),
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
                    onChanged: (value){
                      if(value.isNotEmpty && state.isReset == true){
                        state.isReset = false;
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.briefcase,color: AppColors.neutral900,),
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
                    onChanged: (value){
                      if(value.isNotEmpty && state.isReset == true){
                        state.isReset = false;
                      }
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.location,color: AppColors.neutral900,),
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
                      const SizedBox(width: 10,),
                      const Center(child: Icon(Iconsax.dollar_circle)),
                      const SizedBox(width: 10,),
                      SizedBox(
                        width: 300,
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          isDense: true,
                          style: TextStyle(
                              fontSize: 9.sp,
                              color: AppColors.neutral600,
                              fontWeight: FontWeight.w500),
                          value: state.chosenItem,
                          decoration: const InputDecoration(border: InputBorder.none),
                          icon: const Icon(Iconsax.arrow_down_14),
                          items: const [
                            DropdownMenuItem(
                              value: 0,
                              child: Text("5K - 10K",style: TextStyle(fontSize: 16),),
                            ),
                            DropdownMenuItem(
                              value: 1,
                              child: Text("10K - 20K",style: TextStyle(fontSize: 16)),
                            ),
                            DropdownMenuItem(
                              value: 2,
                              child: Text("15K - 30K",style: TextStyle(fontSize: 16)),
                            ),
                            DropdownMenuItem(
                              value: 3,
                              child: Text("25K - 40K",style: TextStyle(fontSize: 16)),
                            ),
                            DropdownMenuItem(
                              value: 4,
                              child: Text("35K - 60K",style: TextStyle(fontSize: 16)),
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

                const SizedBox(
                  height: 15,),
                SizedBox(
                  width: 350,
                  height: 260,
                  child: Wrap(
                    spacing: 3.5,
                    runSpacing: 10,
                    children: [
                      InkWell(onTap: (){
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                          notifyListeners();
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                          notifyListeners();
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                          notifyListeners();
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                          notifyListeners();
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                          state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                          notifyListeners();
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),
                      InkWell(onTap: (){
                        state.isSelected == true
                              ?state.isSelected = false
                              :state.isSelected = true;
                        notifyListeners();
                      },
                        child: Container(
                          height: 40,
                          width: 100,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: state.isSelected == true
                                      ?AppColors.primary500
                                      :AppColors.neutral400),

                              color: state.isSelected == true
                                  ?AppColors.primary100
                                  :AppColors.neutral100),

                          child: Text(
                            "Full Time",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: state.isSelected == true
                                    ?AppColors.primary500
                                    :AppColors.neutral400
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
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

  returnResult()async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      state.result = sharedPreferences.getString("result")!;
      state.jobTittleController.text = state.result;
      notifyListeners();
  }

}