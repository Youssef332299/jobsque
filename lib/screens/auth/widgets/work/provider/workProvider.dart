import 'package:flutter/cupertino.dart';
import 'package:jobsque/screens/auth/widgets/work/provider/workState.dart';


  //  work_______________________________________

class WorkProvider extends ChangeNotifier{
  WorkState state = WorkState();

  void selectCategory(Map<String, dynamic> item) {
    if (!state.worksSelected.contains(item)) {
      state.worksSelected.add(item);
    } else {
      state.worksSelected.remove(item);
    }
    notifyListeners();
  }
}

