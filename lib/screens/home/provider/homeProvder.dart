import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  returnResult(result) async {
    print("saved in cash 2 $result");
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    state.result = (await sharedPreferences.setString("result", result)) as String;
    print("saved in cash 3 ${state.result}");
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
      returnResult(string);
      notifyListeners();
  }

  void addToResult(string) async {
    returnResult(string);
  }

  void deleteFromHistory(string) async {
    state.history.remove(string);
    await setSearchList(state.history);
    await getSearchList();
  }

  returnDataToHistory() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      state.searchList = sharedPreferences.getStringList("searchList")!;
      state.history = state.searchList;
  }
}