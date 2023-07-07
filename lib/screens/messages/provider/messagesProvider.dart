import 'dart:convert';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../Data/core/urlRoutes.dart';
import '../../../Core/app_colors.dart';
import 'messageState.dart';

class MessagesProvider extends ChangeNotifier{
  MessagesState state = MessagesState();


  void init (){
    getChatData();
  }

  void unreadClear(){
    if(state.messagesUnread.isNotEmpty){
      state.messagesUnread.clear();
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
                    Text("Message filters",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
                  ],
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed("unreadWidget");
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
                          width: 140,
                            child: Text("Unread",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
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
                            width: 140,
                            child: Text("Spam",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
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
                            width: 140,
                            child: Text("Archived",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
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

  Future<void> getChatData() async {
    await SharedPreferences.getInstance();
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString("token");

    final response = await http.get(Uri.parse(UrlRoutes.chat),
        headers: {'Authorization': 'Bearer $token'});

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      Map<String, dynamic> chatData = Map<String, dynamic>.from(data);

      for (int i = 0; i < chatData.length; i++)
      {
        state.messages.add(chatData["data"][i]);
        String? message = sharedPreferences.getString("unread: ${chatData["data"][i]["created_at"]}");

        if(message != chatData["data"][i]["created_at"]){
          state.messagesUnread.add(chatData["data"][i]);
        }
      }

    }else{
      print("Error: ${response.statusCode}");
    }
    notifyListeners();
  }

  Future<void> getFromUnread() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    for(int i = 0; i < state.messagesUnread.length; i++){
      if(!state.messagesUnread.contains(sharedPreferences.getString("unread: ${state.messagesUnread[i]["created_at"]}"))){
        state.messagesUnread[i].add(sharedPreferences.getString("unread: ${state.messagesUnread[i]}"));
      }
    }
    notifyListeners();
  }

  Future<void> onTapMessage(value, save, context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    if(state.messagesUnread.contains(value)){
      state.messagesUnread.remove(value);
      sharedPreferences.setString("unread: $save", save);
    }
    Navigator.of(context).pushNamed("chatWidget");
    notifyListeners();
  }

  // chat_________________________________________________________________________
  void getOtherFile(context)async{

    FilePickerResult? resultFile = await FilePicker.platform.pickFiles();
    PlatformFile file = resultFile!.files.first;

    if (file.size < 10000001) { //10 MB
      state.file["name"] = file.name;
      state.file["size"] = file.size.toInt();
      state.file["path"] = file.path;

    } else{
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Error..  max file size 10 MB")));
    }
    notifyListeners();
  }

  void showBottomSheetChat(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(20)),
        ),
        context: context,
        builder: (BuildContext context){
          return SizedBox(
            height: 490,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 3.9,
                  width: 57,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                ),
                InkWell(
                  onTap: (){
                    // Navigator.of(context).pushNamed("unreadWidget");
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
                        Icon(Iconsax.briefcase),
                        SizedBox(width: 9,),
                        SizedBox(
                            width: 160,
                            child: Text("Visit job post",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        SizedBox(width: 100,),
                        Icon(Icons.arrow_forward_ios_rounded,size: 18,),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    // Navigator.of(context).pushNamed("unreadWidget");
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
                        Icon(Iconsax.note_2),
                        SizedBox(width: 9,),
                        SizedBox(
                            width: 160,
                            child: Text("View my application",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        SizedBox(width: 100,),
                        Icon(Icons.arrow_forward_ios_rounded,size: 18,),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    // Navigator.of(context).pushNamed("unreadWidget");
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
                        Icon(Iconsax.sms),
                        SizedBox(width: 9,),
                        SizedBox(
                            width: 160,
                            child: Text("Mark as unread",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        SizedBox(width: 100,),
                        Icon(Icons.arrow_forward_ios_rounded,size: 18,),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    // Navigator.of(context).pushNamed("unreadWidget");
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
                        Icon(Iconsax.notification),
                        SizedBox(width: 9,),
                        SizedBox(
                            width: 160,
                            child: Text("Mute",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        SizedBox(width: 100,),
                        Icon(Icons.arrow_forward_ios_rounded,size: 18,),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    // Navigator.of(context).pushNamed("unreadWidget");
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
                        Icon(Iconsax.import),
                        SizedBox(width: 9,),
                        SizedBox(
                            width: 160,
                            child: Text("Archive",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        SizedBox(width: 100,),
                        Icon(Icons.arrow_forward_ios_rounded,size: 18,),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    // Navigator.of(context).pushNamed("unreadWidget");
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
                        Icon(Iconsax.trash),
                        SizedBox(width: 9,),
                        SizedBox(
                            width: 160,
                            child: Text("Delete conversation",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16),)),
                        SizedBox(width: 100,),
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

  void deleteText(){
    state.messageController.clear();
    notifyListeners();
  }
}

