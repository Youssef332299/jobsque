import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/Core/app_colors.dart';
import 'package:jobsque/core/app_AppBar.dart';
import 'package:jobsque/screens/applied/provider/appliedProvider.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';

class CompleteProfile extends StatelessWidget {
  const CompleteProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(
          title: 'Complete Profile',
          routeName: 'bottomNavigation',
        ),
        body: SingleChildScrollView(
            child: Column(
                children: [
                  const SizedBox(height: 25,),
                  Center(
                    child: CircularPercentIndicator(
                      radius: 58,
                      lineWidth: 9,
                      animation: true,
                      animationDuration: 1800,
                      backgroundColor: AppColors.neutral200,
                      percent: context.read<AppliedProvider>().percentNumber(0) * 0.25.toDouble(),
                      center: Text(" ${context.read<AppliedProvider>().percentNumber(0) * 25}%", style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 26,color: AppColors.primary500,),
                      ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: AppColors.primary500,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Text( context.read<AppliedProvider>().percentNumber(0) == 4
                    ? "Completed!"
                    : "${context.read<AppliedProvider>().percentNumber(0)}/4 Completed",
                    style:
                    TextStyle(fontWeight: FontWeight.w500, fontSize: 16,color: AppColors.primary500),
                  ),
                  const SizedBox(height: 15,),
                  Text(
                    "Complete your profile before applying for a job",
                    style:
                    TextStyle(fontWeight: FontWeight.w400, fontSize: 16,color: AppColors.neutral400),
                  ),
                  const SizedBox(height: 30,),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed("personalDetails");
                    },
                    child: Container(
                      height: 100,
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: context.watch<AppliedProvider>().state.percent[0][0]
                                ? AppColors.primary500
                                : AppColors.neutral300
                        ),
                        borderRadius: BorderRadius.circular(10),
                        color: context.watch<AppliedProvider>().state.percent[0][0]
                            ? AppColors.primary100
                            : Colors.white
                      ),
                      child: Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(right: 25),
                            child: Icon(Iconsax.tick_circle5,size: 30,
                                color: context.watch<AppliedProvider>().state.percent[0][0]
                                    ? AppColors.primary500
                                    : AppColors.neutral400),
                          ),
                          Column(
                            children: [
                              const SizedBox(height: 20,),
                              Text(
                                "Personal Details                           ",
                                style:
                                TextStyle(fontWeight: FontWeight.w500, fontSize: 16,color: AppColors.neutral900),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Full name, email, phone number, and your \naddress",
                                style:
                                TextStyle(fontWeight: FontWeight.w400, fontSize: 12,color: AppColors.neutral500),
                              ),
                            ],
                          ),
                          const SizedBox(width: 22,),
                          const Icon(Iconsax.arrow_right_1,size: 22,),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 20,
                        width: 2,
                        color: context.watch<AppliedProvider>().state.percent[1][0]
                            ? AppColors.primary500
                            : AppColors.neutral300
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed("education");
                    },
                    child: Container(
                      height: 100,
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: context.watch<AppliedProvider>().state.percent[1][0]
                                  ? AppColors.primary500
                                  : AppColors.neutral300
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: context.watch<AppliedProvider>().state.percent[1][0]
                              ? AppColors.primary100
                              : Colors.white
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Icon(Iconsax.tick_circle5,size: 30,
                                color: context.watch<AppliedProvider>().state.percent[1][0]
                                    ? AppColors.primary500
                                    : AppColors.neutral400),
                          ),
                          Column(
                            children: [
                              const SizedBox(height: 20,),
                              Text(
                                "Education                                ",
                                style:
                                TextStyle(fontWeight: FontWeight.w500, fontSize: 16,color: AppColors.neutral900),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Enter your educational history to be \nconsidered by the recruiter",
                                style:
                                TextStyle(fontWeight: FontWeight.w400, fontSize: 12,color: AppColors.neutral500),
                              ), ],
                          ),
                          const SizedBox(width: 47,),
                          const Icon(Iconsax.arrow_right_1,size: 22,),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                        height: 20,
                        width: 2,
                        color: context.watch<AppliedProvider>().state.percent[2][0]
                            ? AppColors.primary500
                            : AppColors.neutral300
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed("experience");
                    },
                    child: Container(
                      height: 100,
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: context.watch<AppliedProvider>().state.percent[2][0]
                                  ? AppColors.primary500
                                  : AppColors.neutral300
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: context.watch<AppliedProvider>().state.percent[2][0]
                              ? AppColors.primary100
                              : Colors.white
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Icon(Iconsax.tick_circle5,size: 30,
                                color: context.watch<AppliedProvider>().state.percent[2][0]
                                    ? AppColors.primary500
                                    : AppColors.neutral400),
                          ),
                          Column(
                            children: [
                              const SizedBox(height: 20,),
                              Text(
                                "Experience                                        ",
                                style:
                                TextStyle(fontWeight: FontWeight.w500, fontSize: 16,color: AppColors.neutral900),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Enter your work experience to be considered \nby the recruiter",
                                style:
                                TextStyle(fontWeight: FontWeight.w400, fontSize: 12,color: AppColors.neutral500),
                              ),
                            ],
                          ),
                          const SizedBox(width: 7,),
                          const Icon(Iconsax.arrow_right_1,size: 22,)
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                        height: 20,
                        width: 2,
                        color: context.watch<AppliedProvider>().state.percent[1][0]
                            ? AppColors.primary500
                            : AppColors.neutral300
                    ),
                  ),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).pushNamed("appliedPortfolio");
                    },
                    child: Container(
                      height: 100,
                      margin: const EdgeInsets.only(left: 25, right: 25),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: context.watch<AppliedProvider>().state.percent[3][0]
                                  ? AppColors.primary500
                                  : AppColors.neutral300
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: context.watch<AppliedProvider>().state.percent[3][0]
                              ? AppColors.primary100
                              : Colors.white
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: Icon(Iconsax.tick_circle5,size: 30,
                                color: context.watch<AppliedProvider>().state.percent[3][0]
                                    ? AppColors.primary500
                                    : AppColors.neutral400),
                          ),
                          Column(
                            children: [
                              const SizedBox(height: 20,),
                              Text(
                                "Portfolio                                         ",
                                style:
                                TextStyle(fontWeight: FontWeight.w500, fontSize: 16,color: AppColors.neutral900),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Create your portfolio. Applying for various \ntypes of jobs is easier.",
                                style:
                                TextStyle(fontWeight: FontWeight.w400, fontSize: 12,color: AppColors.neutral500),
                              ),
                            ],
                          ),
                          const SizedBox(width: 20,),
                          const Icon(Iconsax.arrow_right_1,size: 22,),
                        ],
                      ),
                    ),
                  ),
                ]
            )
        )
    );
  }
}
