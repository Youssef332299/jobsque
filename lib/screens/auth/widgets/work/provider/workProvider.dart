import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/screens/auth/widgets/work/provider/workState.dart';
import 'package:shared_preferences/shared_preferences.dart';


class WorkProvider extends ChangeNotifier{
  WorkState state = WorkState();

  //  work_______________________________________

  void selectJob(work) {
    if (!state.worksSelected.contains(work)) {
      state.worksSelected.add(work);
      print(state.worksSelected);
      notifyListeners();
    } else {
      state.worksSelected.remove(work);
      notifyListeners();
    }
  }

  Future<void> onTapNext(list, context) async {
    print(list);
    if (list.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Select work are you interested in !")));
    } else {
      final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      for (int i = 0; i < list.length; i++) {
        await sharedPreferences.setString("workValues$i", list[i]["name"]);
      }
      Navigator.of(context).pushNamed("location");
    }
    notifyListeners();
  }

  //  location_______________________________________

  isSelected(i){
    if (state.isSelected[i] == true) {
      state.isSelected[i] = false;
    } else {
      state.isSelected[i] = true;
    }
    notifyListeners();
  }
}

