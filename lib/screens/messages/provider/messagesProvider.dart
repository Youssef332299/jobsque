import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../Data/core/urlRoutes.dart';
import '../../../Core/app_colors.dart';
import 'messageState.dart';

class MessagesProvider extends ChangeNotifier{
  MessagesState state = MessagesState();

  Future<void> getChatData(chat) async {
    await SharedPreferences.getInstance();
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");

    final response = await http.get(Uri.parse(UrlRoutes.chat),
        headers: {'Authorization': 'Bearer $token'});

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      Map<String, dynamic> chatData = Map<String, dynamic>.from(data);

      for (int i = 0; i < chatData.length; i++) {
        chat.add(chatData["data"][i]);
      }

    }else{
      print("Error: ${response.statusCode}");
    }

    notifyListeners();
  }

  void showBottomSheet(context) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(20)),
        ),
        context: context,
        builder: (BuildContext context){
          return SizedBox(
            height: 320,
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
                const Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("Message filters",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                  ],
                ),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    height: 55,
                    margin: const EdgeInsets.only(left: 27,right: 27,top: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: AppColors.neutral300),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(width: 15,),
                        SizedBox(
                          width: 160,
                            child: Text("Unread",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),)),
                        SizedBox(width: 150,),
                        Icon(Icons.arrow_forward_ios_rounded,size: 18,),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    height: 55,
                    margin: const EdgeInsets.only(left: 27,right: 27,top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppColors.neutral300),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(width: 15,),
                        SizedBox(
                            width: 160,
                            child: Text("Spam",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),)),
                        SizedBox(width: 150,),
                        Icon(Icons.arrow_forward_ios_rounded,size: 18,),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    height: 55,
                    margin: const EdgeInsets.only(left: 27,right: 27,top: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: AppColors.neutral300),
                    ),
                    child: const Row(
                      children: [
                        SizedBox(width: 15,),
                        SizedBox(
                            width: 160,
                            child: Text("Archived",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),)),
                        SizedBox(width: 150,),
                        Icon(Icons.arrow_forward_ios_rounded,size: 18,),
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

