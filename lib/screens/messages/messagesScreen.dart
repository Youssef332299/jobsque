import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/screens/Messages/provider/MessagesProvider.dart';
import 'package:provider/provider.dart';
import '../../Core/app_colors.dart';
import '../../core/app_AppBar.dart';


class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Messages', routeName: 'bottomNavigation',),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: Row(
                children: [
                  const SizedBox(
                    width: 25,
                  ),
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
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black12)),
                    child: IconButton(
                        onPressed: () {
                          context.read<MessagesProvider>().showBottomSheet(context);
                        },
                        icon: const Icon(Iconsax.setting_4)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),

            SizedBox(
                height: 650,
                width: double.infinity,
                child: context.watch<MessagesProvider>().state.messages.isEmpty
                      ? Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0,top: 80),
                      child: Image.asset("assets/images/haveNotMessage/haveNotMessage.PNG",scale: 4.3,),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "You have not received any",
                      style: TextStyle(
                          fontSize: 27, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      "messages",
                      style: TextStyle(
                          fontSize: 27, fontWeight: FontWeight.w500),
                    ),

                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Once your application has reached the interview",
                      style: TextStyle(
                          fontSize: 16, color: AppColors.neutral500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "stage, you will get a message from the recruiter.",
                      style: TextStyle(
                          fontSize: 16, color: AppColors.neutral500),
                    ),
                  ],)
                      : ListView.separated(
                      itemCount: context.watch<MessagesProvider>().state.messages.length,
                      itemBuilder: (ctx, i) {
                        return InkWell(
                          onTap: (){
                            context.read<MessagesProvider>().onTapMessage(
                                Provider.of<MessagesProvider>(context, listen: false).state.messages[i],
                                Provider.of<MessagesProvider>(context, listen: false).state.messages[i]["created_at"],
                                context);
                          },
                          child: Container(
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
                                                context.watch<MessagesProvider>().state.messages[i]['sender_user'],
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
                                            context.watch<MessagesProvider>().state.messages[i]['massage'],
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
                                        context.watch<MessagesProvider>().state.messages[i]["created_at"],
                                        style: TextStyle(
                                            color: context.watch<MessagesProvider>().state.messagesUnread.contains(
                                                Provider.of<MessagesProvider>(context, listen: false).state.messages[i])
                                            ? AppColors.primary500
                                            : AppColors.neutral900),
                                      ),
                                    )

                                  ],
                                )
                          ),
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
