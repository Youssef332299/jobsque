import 'package:flutter/cupertino.dart';
import 'package:jobsque/screens/onboarding/provider/pageViewState.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Core/routes.dart';


class PageViewProvider extends ChangeNotifier {
  PageViewState state = PageViewState();

  //  splash_______________________________________

  Future newCostumer(context) async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool? newCostumer = sharedPreferences.getBool("newCostumer");
    if(newCostumer == true){
      Navigator.of(context).pushNamed(Routes.work);
    }else{
      Navigator.of(context).pushNamed("pageView");
    }
  }

  Future<void> handleData(context) async {
    await Future.delayed(const Duration(seconds: 2));
    newCostumer(context);
  }

  //  pageView_______________________________________

  onTap(context){
    if (state.pageIndex < 2) {
          state.scroll.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.decelerate);
    } else {
      setBool();
      Navigator.of(context).pushNamedAndRemoveUntil(
          "createAccount", (route) => false);
    }
  }

  changeIndex(index){
    state.pageIndex = index;
    notifyListeners();
  }

  setBool() async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool("newCostumer",true);
  }
}
