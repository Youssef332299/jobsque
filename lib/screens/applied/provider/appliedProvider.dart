import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../../../Data/core/urlRoutes.dart';
import 'appliedState.dart';

class AppliedProvider extends ChangeNotifier {
  AppliedState state = AppliedState();

  void init(){
    fetchJobsData();
  }
  Future<void> fetchJobsData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");
    print("its called");

    final response = await http.put(Uri.parse(UrlRoutes.reviewApplys),
        headers: {'Authorization': 'Bearer $token'});

    if (response.statusCode == 200) {

      print(response.statusCode);
      print("its called");

      dynamic applied =  jsonDecode(response.body);
      print("its called");

      String ID = "${applied["data"]["id"]}";
      print("its ID: $ID");

      String jobDetails = sharedPreferences.getString("${3}")!;
      print("its jobDetails: $jobDetails");

      dynamic finalvalue = jsonDecode(jobDetails);
      print("its finalvalue: $finalvalue");

      print(finalvalue);
      state.jobDetails.add(finalvalue);
      state.applied.add(applied);
      print(response.statusCode);
    }else{
      print(response.statusCode);
    }
    notifyListeners();
  }
}

