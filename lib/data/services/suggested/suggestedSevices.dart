import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:jobsque/data/model/suggest/suggestModel.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../Data/core/urlRoutes.dart';

class SuggestedServices {
  Future<List<SuggestedJobsModel>> getdata() async {
    try {
      SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
      String? token = sharedPreferences.getString("token");

      http.Response response = await http.get(
        Uri.parse(UrlRoutes.showSuggestJobs),
          headers: {'Authorization': 'Bearer $token'});

      if (response.statusCode == 200) {
        Datum datum = Datum.fromJson(jsonDecode(response.body));
        List<SuggestedJobsModel> dataList = datum.data
            .map((e) => SuggestedJobsModel.fromJson(e as Map<String, dynamic>))
            .toList();
        return dataList;

      } else {
        print("response: ${response.statusCode}");
      }
    } catch (ex) {
      print(ex);
    }
    return <SuggestedJobsModel>[];
  }
}
