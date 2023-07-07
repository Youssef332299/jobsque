import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/screens/applied/provider/appliedProvider.dart';
import 'package:jobsque/screens/home/provider/homeProvder.dart';
import 'package:provider/provider.dart';
import '../../Core/app_colors.dart';


class AppliedScreen extends StatelessWidget {
  const AppliedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
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
                width: 85,
              ),
              const Text(
                "Applied Job",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 330,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 70,
                ),
                Text(
                  "Active",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: AppColors.neutral500),
                ),
                const SizedBox(
                  width: 50,
                ),

                Container(
                  width: 165,
                  height: 45,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.primary900,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text("Rejected",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ),
              ],
            ),
          ),
          context.watch<AppliedProvider>().state.applied.isEmpty || context.watch<AppliedProvider>().state.applied == null
              ? Column(
            children: [
              const SizedBox(
                height: 90,
              ),
              Image.asset("assets/images/not found/notApplied.PNG",scale: 3.5,),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "No applications were rjecteds",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "If there is an application that is rejected by the ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.neutral500),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "company it will appear here",
                style: TextStyle(fontSize: 16, color: AppColors.neutral500),
              ),
            ],
          )
              : Column(
            children: [
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
                      width: 25,
                    ),
                    context.watch<AppliedProvider>().state.applied.isEmpty || context.watch<AppliedProvider>().state.applied == null
                        ? CircularProgressIndicator(color: AppColors.primary500,)
                        : Text ("${context.watch<AppliedProvider>().state.applied.length} Jobs",
                      style: TextStyle(fontSize: 15,color: AppColors.neutral500,fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              SizedBox(
                // width: double.infinity,
                  width: 385,
                  height: 255,
                  child: context.watch<AppliedProvider>().state.jobDetails == null ||
                      context.watch<AppliedProvider>().state.jobDetails.isEmpty
                      ? Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primary500,
                    ),
                  )
                      : ListView.separated(
                    // scrollDirection: Axis.horizontal,
                      itemCount: context.watch<AppliedProvider>().state.jobDetails.length,
                      itemBuilder: (ctx, i) {
                        return Container(
                            margin: const EdgeInsets.only(bottom: 5, top: 10),
                            width: 360,
                            height: 240,
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
                                              width: 200,
                                              height: 25,
                                              child: Text(
                                                "${context.watch<AppliedProvider>().state.jobDetails[i]['name']}",
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
                                          width: 200,
                                          child: Text("   ${context.watch<AppliedProvider>().state.jobDetails[i]['location']}",
                                            style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black45),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 50,
                                    ),

                                    IconButton(
                                      onPressed: () {
                                        context.read<HomeProvider>().onTopRecentSaveIcon(i, context);
                                      },
                                      icon:
                                      context.watch<HomeProvider>().state.iconRecent[i] ==
                                          false
                                          ? Icon(Iconsax.archive_minus,
                                          color: AppColors.neutral900)
                                          :
                                      Icon(Iconsax.archive_minus5,
                                          color: AppColors.primary500),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(width: 20),
                                    Container(
                                      height: 35,
                                      width: 78,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          color: AppColors.primary100),
                                      child: Text(
                                        "${context.watch<AppliedProvider>().state.jobDetails[i]['job_time_type']}",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.primary500),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Container(
                                      height: 35,
                                      width: 78,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(30),
                                          color: AppColors.primary100),
                                      child: Container(
                                        height: 14,
                                        width: 55,
                                        alignment: Alignment.center,
                                        child: Text("Remote",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.primary500),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    const SizedBox(
                                      width: 70,
                                    ),
                                    Column(
                                      children: [
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text("Posted 2 days ago",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.neutral700),
                                        ),
                                      ],
                                    ),
                                    const Column(
                                      children: [
                                        SizedBox(
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 90,
                                  margin: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: AppColors.neutral300,),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      const SizedBox(width: 25,),
                                      Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(top: 15, bottom: 9),
                                            alignment: Alignment.center,
                                            height: 35,
                                            width: 35,
                                            decoration: BoxDecoration(
                                                color: context.watch<AppliedProvider>().state.bioDataCompleted
                                                    ?AppColors.primary500
                                                    :Colors.white,
                                                borderRadius: BorderRadius.circular(50),
                                                border: Border.all(
                                                    color: context.watch<AppliedProvider>().state.bioDataCompleted
                                                        ? AppColors.primary500
                                                        : AppColors.neutral400
                                                )
                                            ),
                                            child: Text("1",style: TextStyle(fontSize: 18,
                                                color: context.watch<AppliedProvider>().state.bioDataCompleted
                                                    ?Colors.white
                                                    :AppColors.neutral500,fontWeight: FontWeight.w400 ),),
                                          ),
                                          Text("Biodata",style: TextStyle(fontSize: 12,
                                              color: context.watch<AppliedProvider>().state.bioDataCompleted
                                                  ?AppColors.primary500
                                                  :AppColors.neutral900,fontWeight: FontWeight.w400 ),),
                                        ],
                                      ),
                                      Container(
                                        height: 0,
                                        width: 30,
                                        margin: const EdgeInsets.only(top: 10, left: 25,right: 15),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: HexColor("#ECF2FF"),),
                                        child: DottedBorder(
                                          strokeWidth: 1.7,
                                          borderType: BorderType.RRect,
                                          dashPattern: const [3.0,3.9],
                                          color: context.watch<AppliedProvider>().state.bioDataCompleted
                                              ?AppColors.primary500
                                              :AppColors.neutral400,
                                          radius: const Radius.circular(10),
                                          child: const SizedBox(),
                                        ),
                                      ),

                                      Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(top: 15, bottom: 9),
                                            alignment: Alignment.center,
                                            height: 35,
                                            width: 35,
                                            decoration: BoxDecoration(
                                                color: context.watch<AppliedProvider>().state.typeOfWorkCompleted
                                                    ?AppColors.primary500
                                                    :Colors.white,
                                                borderRadius: BorderRadius.circular(50),
                                                border: Border.all(
                                                    color: context.watch<AppliedProvider>().state.typeOfWorkCompleted
                                                        ? AppColors.primary500
                                                        : AppColors.neutral400
                                                )
                                            ),
                                            child: Text("2",style: TextStyle(fontSize: 18,
                                                color: context.watch<AppliedProvider>().state.typeOfWorkCompleted
                                                    ?Colors.white
                                                    :AppColors.neutral500,fontWeight: FontWeight.w400 ),),
                                          ),
                                          Text("Type of work",style: TextStyle(fontSize: 12,
                                              color: context.watch<AppliedProvider>().state.typeOfWorkCompleted
                                                  ?AppColors.primary500
                                                  :AppColors.neutral900,fontWeight: FontWeight.w400 ),),
                                        ],
                                      ),
                                      Container(
                                        height: 0,
                                        width: 30,
                                        margin: const EdgeInsets.only(top: 10, left: 15),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: HexColor("#ECF2FF"),),
                                        child: DottedBorder(
                                          strokeWidth: 1.7,
                                          borderType: BorderType.RRect,
                                          dashPattern: const [3.0,3.9],
                                          color: context.watch<AppliedProvider>().state.typeOfWorkCompleted
                                              ?AppColors.primary500
                                              :AppColors.neutral400,
                                          radius: const Radius.circular(10),
                                          child: const SizedBox(),
                                        ),
                                      ),

                                      Column(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(top: 15, bottom: 9),
                                            alignment: Alignment.center,
                                            height: 35,
                                            width: 35,
                                            decoration: BoxDecoration(
                                                color: context.watch<AppliedProvider>().state.uploadPortfolioCompleted
                                                    ?AppColors.primary500
                                                    :Colors.white,
                                                borderRadius: BorderRadius.circular(50),
                                                border: Border.all(
                                                    color: context.watch<AppliedProvider>().state.uploadPortfolioCompleted
                                                        ? AppColors.primary500
                                                        : AppColors.neutral400
                                                )
                                            ),
                                            child: Text("3",style: TextStyle(fontSize: 18,
                                                color: context.watch<AppliedProvider>().state.uploadPortfolioCompleted
                                                    ?Colors.white
                                                    :AppColors.neutral500,fontWeight: FontWeight.w400 ),),
                                          ),
                                          Text("Upload portfolio",style: TextStyle(fontSize: 12,
                                              color: context.watch<AppliedProvider>().state.uploadPortfolioCompleted
                                                  ?AppColors.primary500
                                                  :AppColors.neutral900,fontWeight: FontWeight.w400 ),),
                                        ],
                                      ),
                                    ],
                                  ),
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
            ],
          )
        ],
      ),
    );
  }
}
