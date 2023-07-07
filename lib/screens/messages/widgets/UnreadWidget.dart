import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import '../../../../Core/app_colors.dart';
import '../provider/MessagesProvider.dart';

class UnreadWidget extends StatelessWidget {
  const UnreadWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Iconsax.arrow_left)),
                const SizedBox(
                  width: 95,
                ),
                const Text("Messages",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              ],
            ),
            const SizedBox(height: 15,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: Row(
                children: [
                  const SizedBox(width: 25,),
                  Container(
                    width: 290,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black12)),
                    child: const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.search_normal_1,
                            color: Colors.black87,
                            size: 24,
                          ),
                          hintText: "Search messages....",
                          border: InputBorder.none),
                      // controller: state.searchValueController,
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black12)),
                    child: IconButton(onPressed: (){
                      // showBottomSheet(context);
                    }, icon: const Icon(Iconsax.setting_4)),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: AppColors.neutral100,
                  border: Border.all(color: AppColors.neutral200)),
              child: Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Unread",
                    style: TextStyle(fontSize: 15,color: AppColors.neutral500,fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 180,
                  ),
                  TextButton(
                    onPressed: () {
                      context.read<MessagesProvider>().unreadClear();
                    }, child: Text(
                    "Read all messages",
                    style: TextStyle(fontSize: 15,color: AppColors.primary500),),
                  ),//Read all messages
                ],
              ),
            ),
            SizedBox(
              height: 650,
              width: double.infinity,
              child: ListView.separated(
                  itemCount: context.watch<MessagesProvider>().state.messagesUnread.length,
                  itemBuilder: (ctx, i) {
                    return Container(
                        margin: const EdgeInsets.all(8),
                        width: double.infinity,
                        height: 60,
                        child:
                        Row(
                          children: [
                            const SizedBox(
                              width: 11,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset("assets/images/Shoope Logo/Shoope Logo.png"),
                            ),
                            const SizedBox(
                              width: 15,
                            ),//Image
                            Column(
                              children: [
                                const SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 0,
                                    ),
                                    SizedBox(
                                      width: 150,
                                      height: 25,
                                      child: Text(
                                        context.watch<MessagesProvider>().state.messagesUnread[i]['sender_user'],
                                        style: const TextStyle(
                                            fontSize: 19,
                                            fontWeight:
                                            FontWeight.w500,
                                            color:
                                            Colors.black87),
                                      ),
                                    ),

                                    const SizedBox(
                                      width: 0,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                SizedBox(
                                  height: 15,
                                  width: 150,
                                  child: Text(
                                    context.watch<MessagesProvider>().state.messagesUnread[i]['massage'],
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight:
                                        FontWeight.w500,
                                        color: Colors.black45),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 55,
                            ),
                            SizedBox(
                              height: 15,
                              width: 76,
                              child: Text(
                                context.watch<MessagesProvider>().state.messagesUnread[i]["created_at"],
                                style: TextStyle(color: AppColors.primary500),
                              ),
                            )

                          ],
                        )
                    );
                  },
                  separatorBuilder: (BuildContext ctx, int i) {
                    return const Divider(
                      thickness: 1.5,
                      endIndent: 25,
                      indent: 95,
                    );
                  }),
            )

          ],
        ),
      ),
    );
  }
}