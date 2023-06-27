import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/screens/save/provider/saveState.dart';
import 'package:jobsque/screens/save/provider/savedProvider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:jobsque/Data/core/urlRoutes.dart';
import 'package:http/http.dart' as http;
import '../../Core/app_colors.dart';
import '../../core/app_AppBar.dart';


class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  SavedState state = SavedState();

  late List<bool?> iconFavorites;
  List<dynamic> showAllFavorites = [];

  Future<void> loadIconSuggest() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<bool?> icons = [];
    for (int i = 0; i < 10; i++) {
      bool? icon = prefs.getBool('icon$i');
      icons.add(icon ?? false);
    }
    setState(() {
      iconFavorites = icons;
    });
  }

  Future<void> showAllFavorite() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");

    var response = await http.get(Uri.parse(UrlRoutes.showAllFavorites),
        headers: {'Authorization': 'Bearer $token'});
    setState(() {
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        print("data: $data");
        Map<String, dynamic> showAllFavorite = Map<String, dynamic>.from(data);
        showAllFavorites = showAllFavorite["data"];

        print("showAllFavorites: ${showAllFavorite["data"]}");
        print("showAllFavorites: $showAllFavorites");
      } else {
        print("showAllFavorites status: ${response.statusCode}");
      }
    });
  }

  @override
  void initState() {
    showAllFavorite();
    loadIconSuggest();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: const CustomAppBar(title: 'Saved', routeName: 'bottomNavigation',),
        body: Column(
      children: [
        Container(
          width: double.infinity,
          height: 40,
          margin: const EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
              color: AppColors.neutral100,
              border: Border.all(color: AppColors.neutral200)),
          child: Center(
            child: showAllFavorites.isEmpty || showAllFavorites == null
            ?const CircularProgressIndicator()
            :Text(
              "${showAllFavorites.length} Job Saved",
              style: TextStyle(fontSize: 15,color: AppColors.neutral500,fontWeight: FontWeight.w500),
            ),
          ),
        ),
        SizedBox(
          height: 657,
          child: ListView.separated(
            itemCount: showAllFavorites.length,
            itemBuilder: (context, i) {
              return Container(
                  margin: const EdgeInsets.only(top: 10),
                  width: 360,
                  height: 110,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              const SizedBox(height: 15,),
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: Image.asset(
                                  "assets/images/twitte/spectrum.png",
                                ),
                              ),
                            ],
                          ), //Image
                          Column(
                            children: [
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    width: 155,
                                    height: 25,
                                    child: Text(
                                      showAllFavorites[i]['name'],
                                      style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black87),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 15,
                                width: 140,
                                child: Text(
                                  showAllFavorites[i]['location'],
                                  style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black45),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 90,
                          ),
                          IconButton(
                              onPressed: () {
                                context.read<SavedProvider>().showBottomSheet2(context,showAllFavorites[i]['job_id']);
                              }, icon: const Icon(Iconsax.more))
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Text("Posted 2 days ago",style: TextStyle(fontSize: 12,color: AppColors.neutral500,fontWeight: FontWeight.w500),),
                          const SizedBox(width: 115,),
                          Icon(
                            Iconsax.clock,
                            size: 14,
                            color: AppColors.success500,
                          ),
                          const SizedBox(width: 5),
                          const Text("Be an early applicant",style: TextStyle(fontSize: 12),),
                        ],
                      ),
                    ],
                  ));
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                endIndent: 30,
                indent: 30,
                thickness: 1.6,
                height: 0,
              );
            },
          ),
        ),
      ],
    ));
  }
}
