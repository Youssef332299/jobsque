// import 'package:flutter/material.dart';
// import 'package:grouped_list/grouped_list.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:jobsque/Core/app_colors.dart';
// import 'package:jobsque/screens/home/provider/homeProvder.dart';
// import 'package:provider/provider.dart';
//
// import '../provider/MessagesProvider.dart';
//
// class ChatWidget extends StatelessWidget {
//   const ChatWidget({super.key});
//
//
//   @override
//   Widget build(BuildContext context) {
//
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           const SizedBox(height: 50),
//           Row(
//             children: [
//               const SizedBox(
//                 width: 9,
//               ),
//               IconButton(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                   icon: const Icon(Iconsax.arrow_left)),
//               const SizedBox(
//                 width: 15,
//                 ),
//               SizedBox(child: Image.asset("assets/images/twitte/image 31 (1).png",scale: 3,)),
//               const SizedBox(
//                 width: 10,
//                 ),
//               const Text(
//                 "Twitter",
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//               ),
//               const SizedBox(
//                 width: 150,
//               ),
//               IconButton(onPressed: (){}, icon: const Icon(Iconsax.setting))
//             ],
//           ),
//
//           const SizedBox(height: 30),
//           const Divider(
//             thickness: 1.5,
//             height: 0,
//           ),
//           Container(
//             height: 630,
//             color: AppColors.neutral100,
//             child: ListView.separated(itemBuilder: (cxt, i){
//               return Container(
//                 height: context.watch<MessagesProvider>().state.chatMessages[i]["message"].length < 20
//                 ? context.watch<MessagesProvider>().state.chatMessages[i]["message"].length.toDouble() * 6
//                 : context.watch<MessagesProvider>().state.chatMessages[i]["message"].length.toDouble() * 1.15,
//                 width: context.watch<MessagesProvider>().state.chatMessages[i]["message"].length < 20
//                     ? context.watch<MessagesProvider>().state.chatMessages[i]["message"].length.toDouble() * 3.3
//                     : context.watch<MessagesProvider>().state.chatMessages[i]["message"].length.toDouble() * 1.15,
//                 margin: EdgeInsets.only(
//                   top: 15,
//                   right: context.watch<MessagesProvider>().state.chatMessages[i]["sentByUser"]
//                       ? 25
//                       : context.watch<MessagesProvider>().state.chatMessages[i]["message"].length.toDouble() < 20
//                   ? context.watch<MessagesProvider>().state.chatMessages[i]["message"].length.toDouble() * 25
//                   : context.watch<MessagesProvider>().state.chatMessages[i]["message"].length.toDouble(),
//                   left: context.watch<MessagesProvider>().state.chatMessages[i]["sentByUser"]
//                       ? context.watch<MessagesProvider>().state.chatMessages[i]["message"].length.toDouble() < 20
//                         ? context.watch<MessagesProvider>().state.chatMessages[i]["message"].length.toDouble() * 25
//                         : context.watch<MessagesProvider>().state.chatMessages[i]["message"].length.toDouble() > 50
//                   ? context.watch<MessagesProvider>().state.chatMessages[i]["message"].length.toDouble() / 1.9
//                   : context.watch<MessagesProvider>().state.chatMessages[i]["message"].length.toDouble() * 50
//                       : 25,
//                 ),
//
//                 decoration: BoxDecoration(
//                   color: context.watch<MessagesProvider>().state.chatMessages[i]["sentByUser"]
//                       ? AppColors.primary500
//                       : AppColors.neutral200,
//                   borderRadius: BorderRadius.only(
//                     topRight: context.watch<MessagesProvider>().state.chatMessages[i]["sentByUser"]
//                         ? const Radius.circular(0)
//                         : const Radius.circular(20),
//                     topLeft: context.watch<MessagesProvider>().state.chatMessages[i]["sentByUser"]
//                         ? const Radius.circular(20)
//                         : const Radius.circular(0),
//                     bottomLeft: const Radius.circular(20),
//                     bottomRight: const Radius.circular(20),
//                   )
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.all(15),
//                   child: Text(context.watch<MessagesProvider>().state.chatMessages[i]["message"],
//                   style: TextStyle(
//                     fontWeight: FontWeight.w500,
//                     fontSize: 15,
//                     color: context.watch<MessagesProvider>().state.chatMessages[i]["sentByUser"]
//                         ? AppColors.neutral100
//                         : AppColors.neutral900,
//                   ),
//                 )
//                 ));
//               }, separatorBuilder: (cxt, i){
//               return Row();
//             }, itemCount: context.watch<MessagesProvider>().state.chatMessages.length),
//           ),
//
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/Core/app_colors.dart';
import 'package:intl/intl.dart';
import 'package:jobsque/screens/Messages/provider/MessagesProvider.dart';
import 'package:provider/provider.dart';

import '../../../data/model/messages/messages.dart';

class ChatWidget extends StatefulWidget {
   const ChatWidget({super.key});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Row(
              children: [
                const SizedBox(
                  width: 9,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Iconsax.arrow_left)),
                const SizedBox(
                  width: 15,
                  ),
                SizedBox(child: Image.asset("assets/images/twitte/image 31 (1).png",scale: 3,)),
                const SizedBox(
                  width: 10,
                  ),
                const Text(
                  "Twitter",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  width: 150,
                ),
                IconButton(onPressed: (){
                  context.read<MessagesProvider>().showBottomSheetChat(context);
                }, icon: const Icon(Iconsax.more))
              ],
            ),

            const SizedBox(height: 30),
            const Divider(
              thickness: 1.5,
              height: 0,
            ),
            Container(
              color: AppColors.neutral100,
              height: 640,
                child: GroupedListView<Message, DateTime>(
                  elements: messagesList,
                  reverse: true,
                  order: GroupedListOrder.DESC,
                  useStickyGroupSeparators: true,
                  floatingHeader: true,
                  groupBy: (message) => DateTime(
                  message.date.year,
                  message.date.month,
                  message.date.day
              ),
                  groupHeaderBuilder: (Message message) => SizedBox(
                  height: 50,
                  child: Row(
                  children: [
                    const SizedBox(width: 25,),
                    Container(
                      height: 1.5,
                      width: 120,
                      color: AppColors.neutral300,
                    ),
                    const SizedBox(width: 15,),
                    SizedBox(
                        child: Text(
                          DateFormat.MMMEd().format(message.date),
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: AppColors.neutral400),
                        ),
                    ),
                    const SizedBox(width: 15,),
                    Container(
                      height: 1.5,
                      width: 120,
                      color: AppColors.neutral300,
                    ),
                  ],
                ),
              ),
                itemBuilder: (context, Message message) => Align(
                alignment: message.sentByUser
                ? Alignment.centerRight
                : Alignment.centerLeft,
                child: Container(
                  width: message.text.characters.length.toDouble() < 10
                      ? message.text.characters.length.toDouble() == 1
                      || message.text.characters.length.toDouble() == 2
                      || message.text.characters.length.toDouble() == 3
                      ? 56
                      : message.text.characters.length.toDouble() < 8
                      ? message.text.characters.length.toDouble() * 25
                      : message.text.characters.length.toDouble() * 18
                      : message.text.characters.length.toDouble() < 22
                      ? message.text.characters.length.toDouble() > 5
                      ? message.text.characters.length.toDouble() * 10
                      : message.text.characters.length.toDouble() * 18
                      : message.text.characters.length.toDouble() * 3.5,
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    color: message.sentByUser
                        ? AppColors.primary500
                        : AppColors.neutral200,
                    borderRadius: BorderRadius.only(
                      topRight: message.sentByUser
                          ? const Radius.circular(0)
                          : const Radius.circular(10),
                      topLeft: message.sentByUser
                          ? const Radius.circular(10)
                          : const Radius.circular(0),
                      bottomLeft: const Radius.circular(10),
                      bottomRight: const Radius.circular(10),
                    )
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 15, right: 15,),
                        child: Text(message.text,
                          style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: message.sentByUser
                              ? AppColors.neutral100
                              : AppColors.neutral700,),
                        ),

                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: const EdgeInsets.only(right: 15,top: 10,bottom: 10),
                          child: Text(
                            DateFormat.Hm().format(message.date),
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,
                              color: message.sentByUser
                                  ? AppColors.neutral300
                                  : AppColors.neutral400,),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            )),
            const SizedBox(height: 15,),
            Row(
              children: [
                const SizedBox(width: 20,),
                InkWell(
                  onTap: (){
                    context.read<MessagesProvider>().getOtherFile(context);
                  },
                  child: Container(
                    height: 48,
                    width: 48 ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: AppColors.neutral300,width: 1.3)
                    ),
                    child: const Icon(Iconsax.paperclip_2),
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  height: 48,
                  width: 240,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.neutral100,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: AppColors.neutral200,width: 1.3)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: TextFormField(
                      controller: context.watch<MessagesProvider>().state.messageController,
                      onFieldSubmitted: (text){
                        final message = Message(
                            text: text,
                            date: DateTime.now(),
                            sentByUser: true,
                        );
                        if(text.isNotEmpty){
                          setState(() => messagesList.add(message));
                          context.read<MessagesProvider>().deleteText();
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Write a message...",
                        hintStyle: TextStyle(fontSize: 14,color: AppColors.neutral400),
                        border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: AppColors.neutral300,width: 1.3)
                    ),
                    child: const Icon(Iconsax.microphone_2),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Message> messagesList = [
     Message(
         text: "Hi Melan, thank you for considering me, this is good news for me.",
         date: DateTime.now().subtract(const Duration(days: 41, hours: 20, minutes: 3)),
         sentByUser: true
     ),
     Message(
         text: "Hi",
         date: DateTime.now().subtract(const Duration(days: 12 ,hours: 20)),
         sentByUser: false
     ),
     Message(
         text: "Rafif!, I'm Melan the selection team from Twitter.",
         date: DateTime.now().subtract(const Duration(hours: 10, minutes: 30)),
         sentByUser: false
     ),
     Message(
         text: "Can we have an interview via google meet call today at 3pm?",
         date: DateTime.now().subtract(const Duration(hours: 2, minutes: 12)),
         sentByUser: true
     ),
     Message(
         text: "Can we have an interview via google meet call today at 3pm?",
         date: DateTime.now().subtract(const Duration(hours: 1, minutes: 59)),
         sentByUser: false
     ),
     Message(
         text: "Of course, I can!",
         date: DateTime.now().subtract(const Duration(minutes: 50)),
         sentByUser: true
     ),
     Message(
         text: "Ok, here I put the google meet link for later this afternoon. I ask for the timeliness, thank you!",
         date: DateTime.now().subtract(const Duration(seconds: 1)),
         sentByUser: false
     ),
     Message(
         text: "Hi Melan, thank you for considering me, this is good news for me.",
         date: DateTime.now().subtract(const Duration(days: 41, hours: 20, minutes: 3)),
         sentByUser: true
     ),
     Message(
         text: "Hi",
         date: DateTime.now().subtract(const Duration(days: 12 ,hours: 20)),
         sentByUser: false
     ),
     Message(
         text: "Rafif!, I'm Melan the selection team from Twitter.",
         date: DateTime.now().subtract(const Duration(hours: 10, minutes: 30)),
         sentByUser: false
     ),
     Message(
         text: "Can we have an interview via google meet call today at 3pm?",
         date: DateTime.now().subtract(const Duration(hours: 2, minutes: 12)),
         sentByUser: true
     ),
     Message(
         text: "Can we have an interview via google meet call today at 3pm?",
         date: DateTime.now().subtract(const Duration(hours: 1, minutes: 59)),
         sentByUser: false
     ),
     Message(
         text: "Of course, I can!",
         date: DateTime.now().subtract(const Duration(minutes: 50)),
         sentByUser: true
     ),
     Message(
         text: "Ok, here I put the google meet link for later this afternoon. I ask for the timeliness, thank you!",
         date: DateTime.now().subtract(const Duration(seconds: 1)),
         sentByUser: false
     ),
   ].reversed.toList();
}

