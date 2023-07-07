import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:jobsque/screens/onboarding/provider/pageViewState.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import '../../../Core/routes.dart';

class PageViewProvider extends ChangeNotifier {
  PageViewState state = PageViewState();

  //  splash_______________________________________

  Future newCostumer(context) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    bool? newCostumer = sharedPreferences.getBool("newCostumer");

    try { // to check internet
      var result = await InternetAddress.lookup("google.com");
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) { // If Is Online
        if (newCostumer == true) {
          Navigator.of(context).pushNamed(Routes.bottomNavigation);
        } else {
          Navigator.of(context).pushNamed("pageView");
        }
      }
    } on SocketException catch (_) { // If user have no internet
      Navigator.of(context).pushNamed("checkNetwork");
    }
  }

  Future<void> handleData(context) async {
    await Future.delayed(const Duration(seconds: 2));
    newCostumer(context);
  }

  //  pageView_______________________________________

  onTap(context) {
    if (state.pageIndex < 2) {
      state.scroll.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.decelerate);
    } else {
      setBool();
      Navigator.of(context)
          .pushNamedAndRemoveUntil("createAccount", (route) => false);
    }
  }

  changeIndex(index) {
    state.pageIndex = index;
    notifyListeners();
  }

  setBool() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    await sharedPreferences.setBool("newCostumer", true);
  }
}
