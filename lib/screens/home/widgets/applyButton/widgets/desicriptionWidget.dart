import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/screens/home/provider/homeProvder.dart';
import 'package:provider/provider.dart';
import '../../../../../Core/app_colors.dart';


class DesicriptionWidget extends StatelessWidget {
  const DesicriptionWidget({super.key});

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
            height: 57,
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
                Container(
                  width: 125,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.primary900,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text("Description",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ),
                const SizedBox(
                  width: 22,
                ),
                Text(
                  "Company",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: AppColors.neutral500),
                ),
                const SizedBox(
                  width: 52,
                ),
                Text(
                  "People",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: AppColors.neutral500),
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
                width: 25,
              ),
              Text(
                "Job Description",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.neutral900,
                    fontSize: 16),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 340,
              height: 150,
            child: Text(
              "${context.watch<HomeProvider>().state.jobDataMap["job_description"]}",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: AppColors.neutral500,
                  fontSize: 13),
            ),
          ),
          Row(
            children: [
              const SizedBox(width: 25,),
              Text(
                "Skill Required",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.neutral900,
                    fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 15,),
          Row(
            children: [
              const SizedBox(width: 25,),
              SizedBox(
                width: 350,
                height: 155,
                child: Text(
                  "${context.watch<HomeProvider>().state.jobDataMap["job_skill"]}",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500,
                      fontSize: 13),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 345,
            height: 55,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary500,
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(vertical: 14)),
              onPressed: () {
                Navigator.of(context).pushNamed("companyWidget");
              },
              child: Text(
                "Apply now",
                style: TextStyle(fontSize: 18, color: AppColors.neutral100),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
