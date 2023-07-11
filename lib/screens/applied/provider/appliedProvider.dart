import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../../../Data/core/urlRoutes.dart';
import '../../home/widgets/applyButton/provider/applyNowProvider.dart';
import 'appliedState.dart';

class AppliedProvider extends ChangeNotifier {
  AppliedState state = AppliedState();

  void init(context) {
    Provider.of<ApplyNowProvider>(context, listen: false).fill_radio_list(context);
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

      dynamic applied = jsonDecode(response.body);
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
    } else {
      print(response.statusCode);
    }
    notifyListeners();
  }

  onTapApplied(i, context) {
    if (state.uploadPortfolioCompleted[i]) {
      Navigator.of(context).pushNamed("appliedUploadPortfolio");
    } else if (state.typeOfWorkCompleted[i]) {
      Navigator.of(context).pushNamed("appliedTypeOfWork");
    } else {
      Navigator.of(context).pushNamed("appliedBioData");
    }
    state.index = i;
  }

  onTapNext_bio_data(context){
    Navigator.of(context).pushNamed("appliedTypeOfWork");
  }

  onTapNext_type_of_work(context){
    state.typeOfWorkCompleted[0] = true;
    Navigator.of(context).pushNamed("appliedUploadPortfolio");
  }

  submitted(context){
    state.uploadPortfolioCompleted[0] = true;
    Navigator.of(context).pushNamed("completeProfile");
  }

  percentNumber(i){ // [i] is job number
    int counter = 0;
    int index = 0; // is index just for lop

    for( ; index < state.percent.length; index ++){
        if(state.percent[index][i]){
          counter ++;
        }
    }
    notifyListeners();
    return counter;
  }
}
