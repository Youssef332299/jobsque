
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:jobsque/Core/app_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TestProvider with ChangeNotifier,DiagnosticableTreeMixin{

  TestState state = TestState();

  void addCounter() {
    state.counter++;
    print(state.counter);
    notifyListeners();
  }

  Text_color(cont){
    if(cont %2 == 0){
      return AppColors.primary500;
    }else{
      return AppColors.danger500;
    }
  }

  Future setCounter(addCounter) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setInt('Counter',addCounter);
    print("Counter: $addCounter");
  }
  Future getCounter() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    state.counter = preferences.getInt('Counter')!;
    print("cont: ${state.counter}");
    notifyListeners();
    return state.counter;
  }

}

class TestState{
  int counter = 0;

}