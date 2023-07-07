import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/screens/home/provider/homeProvder.dart';
import 'package:provider/provider.dart';
import '../../Core/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                const Text(
                  "Hi,",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 260,
                  height: 30,
                  child: Text(
                    " ${context.watch<HomeProvider>().state.username}👋",
                    style: const TextStyle(
                        fontSize: 26, fontWeight: FontWeight.w500),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).pushNamed("notificationWidget");
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      border: Border.all(width: 2, color: Colors.black12),
                    ),
                    child: const Icon(Iconsax.notification)),
                ),
              ],
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Text(
                  "Create a better future for yourself here",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
                width: 355,
                height: 50,
                child: TextFormField(
                  onTap: () {
                    Navigator.of(context).pushNamed("search");
                  },
                  autofocus: false,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(color: Colors.black12)),
                      prefixIcon: const Icon(
                        Iconsax.search_normal_1,
                        color: Colors.black87,
                      ),
                      hintText: "Search....",
                      border: InputBorder.none),
                )),
            SizedBox(
              height: context.watch<HomeProvider>().state.submited
                  ? 20
                  : 0,
            ),
            context.watch<HomeProvider>().state.submited
            ? Container(
              height: 100,
              width: 345,
              decoration: BoxDecoration(
                color: AppColors.primary100,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                 const SizedBox(width: 15,),
                  Column(children: [
                    const SizedBox(height: 15,),
                    Image.asset("assets/images/twitte/twitte6.png",scale: 11,),
                  ],),
                  const SizedBox(width: 11,),
                   Column(
                    children: [
                      const SizedBox(height: 18,),
                      const Text("Twitter                           ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16,),),
                      const SizedBox(height: 8,),
                      Text("Waiting to be selected by the",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: AppColors.neutral600),),
                      const SizedBox(height: 4,),
                      Text("twitter team                             ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: AppColors.neutral600),),

                    ],
                  ),
                  const SizedBox(width: 11,),
                  Column(
                    children: [
                      const SizedBox(height: 30,),
                      Container(
                        height: 40,
                        width: 85,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(30),
                            color: AppColors.primary200),
                        child: Text(
                          "Submited",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primary500),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
            : const SizedBox(height: 0,),

            const SizedBox(
              height: 25,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Suggested Job",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 164,
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueAccent),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 7,
                ),
                SizedBox(
                  // width: double.infinity,
                  width: 385,
                  height: 220,
                  child: context.watch<HomeProvider>().state.suggested ==
                              null ||
                          context.watch<HomeProvider>().state.suggested.isEmpty
                      ? Center(
                          child: CircularProgressIndicator(
                          color: AppColors.primary500,
                        ))
                      : ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: context
                              .watch<HomeProvider>()
                              .state
                              .suggested
                              .length,
                          itemBuilder: (ctx, i) {
                            return Container(
                                margin: const EdgeInsets.only(left: 15),
                                width: 315,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(17),
                                    color: i % 2 == 0
                                        ? AppColors.primary900
                                        : AppColors.neutral100),
                                child: Column(children: [
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            height: 42,
                                            width: 42,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white),
                                            child: Image
                                                // .network(suggested[i]['image'],
                                                .asset(
                                              i % 2 == 0
                                                  ? "assets/images/Slack/Slack_icon_2019.svg.png"
                                                  : "assets/images/vector/Discord Logo.png",
                                              scale: i % 2 == 0 ? 60 : 4.2,
                                            ),
                                          ),
                                        ],
                                      ), //Image
                                      const SizedBox(
                                        width: 17,
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          SizedBox(
                                            width: 130,
                                            height: 20,
                                            child: Text(
                                              context.watch<HomeProvider>().state.suggested[i]["name"],
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: i / 2 == 0
                                                      ? AppColors.neutral100
                                                      : AppColors.neutral900),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 7,
                                          ),
                                          SizedBox(
                                            width: 130,
                                            height: 13,
                                            child: Text(
                                              context
                                                  .watch<HomeProvider>()
                                                  .state
                                                  .suggested[i]["job_skill"],
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.neutral400),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 46,
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(
                                            height: 36,
                                          ),
                                          IconButton(
                                            onPressed: () {
                                              context
                                                  .read<HomeProvider>()
                                                  .onTopSuggestSaveIcon(
                                                      i, context);
                                            },
                                            icon: context
                                                        .watch<HomeProvider>()
                                                        .state
                                                        .iconSuggest[i] ==
                                                    false
                                                ? Icon(Iconsax.archive_minus,
                                                    color: i % 2 == 0
                                                        ? AppColors.neutral100
                                                        : AppColors.primary500)
                                                : Icon(Iconsax.archive_minus5,
                                                    color:
                                                        AppColors.primary500),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(width: 20),
                                      Container(
                                        height: 35,
                                        width: 85,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: i % 2 == 0
                                                ? Colors.white10
                                                : AppColors.primary100),
                                        child: Text(
                                          context
                                              .watch<HomeProvider>()
                                              .state
                                              .suggested[i]['job_time_type'],
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: i % 2 == 0
                                                  ? AppColors.neutral100
                                                  : AppColors.primary500),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Container(
                                        height: 35,
                                        width: 95,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: i % 2 == 0
                                                ? Colors.white10
                                                : AppColors.primary100),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 32,
                                          width: 92,
                                          child: Text(
                                            context
                                                .watch<HomeProvider>()
                                                .state.suggested[i]['job_type'],
                                            style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                color: i % 2 == 0
                                                    ? AppColors.neutral100
                                                    : AppColors.primary500),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Container(
                                        height: 35,
                                        width: 85,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: i % 2 == 0
                                                ? Colors.white10
                                                : AppColors.primary100),
                                        child: Text(
                                          context
                                              .watch<HomeProvider>()
                                              .state
                                              .suggested[i]["job_level"],
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: i % 2 == 0
                                                  ? AppColors.neutral100
                                                  : AppColors.primary500),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 25,
                                      ),
                                      Text(
                                        context
                                            .watch<HomeProvider>()
                                            .state
                                            .suggested[i]["salary"],
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: i % 2 == 0
                                                ? AppColors.neutral100
                                                : AppColors.neutral900),
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(
                                            height: 7,
                                          ),
                                          Text(
                                            "/Month",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.neutral400),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 55,
                                      ),
                                      InkWell(
                                        onTap: () {
                                               context
                                              .read<HomeProvider>()
                                              .goToApplyNow(
                                              Provider.of<HomeProvider>(context, listen: false).state.suggested[i]['id'],
                                              Provider.of<HomeProvider>(context, listen: false).state.suggested[i]['name'],
                                              Provider.of<HomeProvider>(context, listen: false).state.suggested[i]['job_time_type'],
                                              Provider.of<HomeProvider>(context, listen: false).state.suggested[i]['job_level'],
                                              Provider.of<HomeProvider>(context, listen: false).state.suggested[i]['job_description'],
                                              Provider.of<HomeProvider>(context, listen: false).state.suggested[i]['job_skill'],
                                              Provider.of<HomeProvider>(context, listen: false).state.suggested[i]['comp_name'],
                                              Provider.of<HomeProvider>(context, listen: false).state.suggested[i]['comp_email'],
                                              Provider.of<HomeProvider>(context, listen: false).state.suggested[i]['comp_website'],
                                              Provider.of<HomeProvider>(context, listen: false).state.suggested[i]['about_comp'],
                                              Provider.of<HomeProvider>(context, listen: false).state.suggested[i]['location'],
                                                   context);
                                        },
                                        child: Container(
                                          height: 39,
                                          width: 108,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: AppColors.primary500),
                                          child: const Text(
                                            "Apply now",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ]));
                          }, //box 1
                        ),
                ),
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Recent Job",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 190,
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueAccent),
                ),
              ],
            ),
            SizedBox(
                // width: double.infinity,
                width: 385,
                height: 255,
                child: context.watch<HomeProvider>().state.jobs == null ||
                        context.watch<HomeProvider>().state.jobs.isEmpty
                    ? Center(
                        child: CircularProgressIndicator(
                          color: AppColors.primary500,
                        ),
                      )
                    : ListView.separated(
                        // scrollDirection: Axis.horizontal,
                        itemCount: context.watch<HomeProvider>().state.jobs.length,
                        itemBuilder: (ctx, i) {
                          return Container(
                              margin: const EdgeInsets.only(bottom: 5, top: 10),
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
                                          Container(
                                            height: 45,
                                            width: 45,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.white),
                                            child: Image.asset(i % 2 == 0
                                                ? "assets/images/twitte/twitte6.png"
                                                : "assets/images/Zoom/zoom.png"),
                                            // network(
                                            // jobs[i]['image'],
                                            // scale: 11,

                                            // ),
                                          ),
                                        ],
                                      ), //Image
                                      Column(
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            children: [
                                              const SizedBox(
                                                width: 15,
                                              ),
                                              Container(
                                                alignment: Alignment.centerLeft,
                                                width: 135,
                                                height: 25,
                                                child: Text(
                                                  context
                                                      .watch<HomeProvider>()
                                                      .state
                                                      .jobs[i]['name'],
                                                  style: const TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                            width: 120,
                                            child: Text(
                                              context
                                                  .watch<HomeProvider>()
                                                  .state
                                                  .jobs[i]['job_skill'],
                                              style: const TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black45),
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 100,
                                      ),

                                      IconButton(
                                        onPressed: () {
                                          context
                                              .read<HomeProvider>()
                                              .onTopRecentSaveIcon(i, context);
                                        },
                                        icon: context
                                                    .watch<HomeProvider>()
                                                    .state
                                                    .iconRecent[i] ==
                                                false
                                            ? Icon(Iconsax.archive_minus,
                                                color: AppColors.neutral900)
                                            : Icon(Iconsax.archive_minus5,
                                                color: AppColors.primary500),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(width: 20),
                                      Container(
                                        height: 30,
                                        width: 70,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.blueAccent.shade100),
                                        child: Text(
                                          context
                                              .watch<HomeProvider>()
                                              .state
                                              .jobs[i]['job_time_type'],
                                          style: const TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Container(
                                        height: 30,
                                        width: 70,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.blueAccent.shade100),
                                        child: Container(
                                          height: 14,
                                          width: 55,
                                          alignment: Alignment.center,
                                          child: Text(
                                            context
                                                .watch<HomeProvider>()
                                                .state
                                                .jobs[i]['job_type'],
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 5),
                                      Container(
                                        height: 30,
                                        width: 60,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.blueAccent.shade100),
                                        child: const Text(
                                          "Senior",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 18,
                                      ),
                                      Column(
                                        children: [
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            context
                                                .watch<HomeProvider>()
                                                .state
                                                .jobs[i]['salary'],
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.green),
                                          ),
                                        ],
                                      ),
                                      const Column(
                                        children: [
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            "/Month",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black26),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ));
                        },
                        separatorBuilder: (BuildContext ctx, int i) {
                          return const Divider(
                            height: 0,
                            thickness: 2,
                            endIndent: 20,
                            indent: 20,
                          );
                        }))
          ]),
        ));
  }
}
