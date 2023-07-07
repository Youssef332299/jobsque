import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../../../../Core/app_colors.dart';
import '../../../provider/homeProvder.dart';


class PeopleWidget extends StatelessWidget {
  const PeopleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Navigator.of(context).pushNamed("bottomNavigation");
                  },
                  icon: const Icon(Iconsax.arrow_left)),
              const SizedBox(
                width: 100,
              ),
              const Text(
                "Job Detail",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 115,
              ),
              Icon(
                Iconsax.archive_minus5,
                color: AppColors.primary500,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/images/twitte/twitte6.png",
            scale: 10,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "${context.watch<HomeProvider>().state.jobDataMap["job_level"]} ${context.watch<HomeProvider>().state.jobDataMap["name"]}",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: 180,
            height: 45,
            child: Text(
              "${context.watch<HomeProvider>().state.jobDataMap["location"]}",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.neutral500),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SizedBox(
                width: 70,
              ),
              Container(
                width: 80,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColors.primary100,
                ),
                child: Text(
                  "${context.watch<HomeProvider>().state.jobDataMap["job_time_type"]}",
                  style: TextStyle(color: AppColors.primary500),
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Container(
                width: 75,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColors.primary100,
                ),
                child: Text(
                  "Onsite",
                  style: TextStyle(color: AppColors.primary500),
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Container(
                width: 72,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: AppColors.primary100,
                ),
                child: Text(
                  "${context.watch<HomeProvider>().state.jobDataMap["job_level"]}",
                  style: TextStyle(color: AppColors.primary500),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 350,
            height: 55,
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                const SizedBox(
                  width: 22,
                ),
                Text(
                  "Description",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.neutral500),
                ),
                const SizedBox(
                  width: 45,
                ),
                Text(
                  "Company",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.neutral500),
                ),
                const SizedBox(
                  width: 30,
                ),
                Container(
                  width: 110,
                  height: 44,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.primary900,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text("People",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  const Text("6 Employees For",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                  const SizedBox(height: 9,),
                  Text(context.watch<HomeProvider>().state.jobDataMap["name"]
                    ,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,
                        color: AppColors.neutral400),),
                ],
              ),
              const SizedBox(width: 85,),
              Container(
                width: 140,
                height: 47,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: AppColors.neutral400),
                ),
                // margin: const EdgeInsets.only(right: 25, left: 25, top: 15),
                     child: SizedBox(
                      width: 115,
                      child: DropdownButtonFormField(
                        hint: Text(context.watch<HomeProvider>().state.jobDataMap["name"]),
                        isExpanded: true,
                        isDense: true,
                        style: TextStyle(
                            fontSize: 9.sp,
                            color: AppColors.neutral600,
                            fontWeight: FontWeight.w500),
                        value: context.watch<HomeProvider>().state.employees,
                        decoration:
                        const InputDecoration(border: InputBorder.none),
                        icon: const Icon(Iconsax.arrow_down_14,size: 16,),
                        items: const [
                          DropdownMenuItem(
                            value: 0,
                            child: Text(
                              "UX Designer",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 1,
                            child: Text("Manager",
                                style: TextStyle(fontSize: 12)),
                          ),
                          DropdownMenuItem(
                            value: 2,
                            child: Text("Front-End",
                                style: TextStyle(fontSize: 12)),
                          ),
                          DropdownMenuItem(
                            value: 3,
                            child: Text("Back-End",
                                style: TextStyle(fontSize: 12)),
                          ),
                        ],
                        onChanged: (value) {
                          context.read<HomeProvider>().onDropdownChange(value);
                        },
                      ),
                    ),
              ),

            ],
          ),
          const SizedBox(
            height: 0,
          ),
          SizedBox(
            height: 320,
            width: 400,
            child: ListView.separated(
              itemCount: 5,
              itemBuilder: (context,i){
                return Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const SizedBox(width: 15,),
                      Image.asset(
                        "assets/images/dimes profile/Dimas Profile.png",
                        scale: 3,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 2,),
                              Text(
                                "6 Employees For",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.neutral900,
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                width: 80,
                              ),
                              Text(
                                "Work during",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.neutral400,
                                    fontSize: 13.3),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Senior UI/UX Designer at Twitter",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.neutral400,
                                    fontSize: 13.3),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(
                                "5 Years",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.primary500,
                                    fontSize: 13.3),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }, separatorBuilder: (BuildContext context,i) {
              return const Divider(
                thickness: 1.3,
                endIndent: 35,
                indent: 30,
              );
            },),),
          SizedBox(
            width: 345,
            height: 55,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary500,
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(vertical: 14)),
              onPressed: () {
                Navigator.of(context).pushNamed("bioDataWidget");
              },
              child: Text(
                "Apply now",
                style: TextStyle(fontSize: 18, color: AppColors.neutral100),
              ),
            ),
          ),
      ]),
    );  }
}
