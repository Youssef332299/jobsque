import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/screens/save/provider/saveState.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../../Core/app_colors.dart';
import '../../../Data/core/urlRoutes.dart';


class SavedProvider extends ChangeNotifier {
  SavedState state = SavedState();

  Future<void> applyJob(jobId,context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString("mobileValue", "01093264806");
    await sharedPreferences.setString("cv_fileValue", "01093264806");
    await sharedPreferences.setString("work_type", "full");

    String? token = sharedPreferences.getString("token");
    String? name = sharedPreferences.getString("nameValue");
    String? email = sharedPreferences.getString("emailValue");
    String? mobile = sharedPreferences.getString("mobileValue");
    String? cv_file = sharedPreferences.getString("cv_fileValue");
    String? work_type = sharedPreferences.getString("work_type");
    String? id = sharedPreferences.getString("idValue");

    var response = await http.post(Uri.parse(UrlRoutes.apply),
        body: {
      "user_id": "$id",
          "job_id": "$jobId",
          "name": "$name",
          "email": "$email",
          "mobile": "$mobile",
          "cv_file": "$cv_file",
          "work_type": "$work_type",
        },
        headers: {'Authorization': 'Bearer $token'});

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      Map<String, dynamic> apply = Map<String, dynamic>.from(data);

      Navigator.of(context).pop();

      print("Apply Job: $apply");

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Applied Success'),
          duration: Duration(seconds: 3),
        ),
      );
    } else {
      print("Apply Job status: ${response.statusCode}");
    }
  }

  void showBottomSheet2(context,jobId) {
    showModalBottomSheet(
        // isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 300,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 3.5,
                  width: 61,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    applyJob(jobId,context);
                  },
                  child: Container(
                    height: 55,
                    margin: const EdgeInsets.only(left: 27, right: 27, top: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppColors.neutral300),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Iconsax.directbox_notif,
                          size: 22,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                            width: 160,
                            child: Text(
                              "Apply Job",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 55,
                    margin: const EdgeInsets.only(left: 27, right: 27, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppColors.neutral300),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Iconsax.export,
                          size: 22,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                            width: 160,
                            child: Text(
                              "Share via...",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 55,
                    margin: const EdgeInsets.only(left: 27, right: 27, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppColors.neutral300),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Iconsax.archive_minus,
                          size: 22,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                            width: 160,
                            child: Text(
                              "Cancel save",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            )),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
