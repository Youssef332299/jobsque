import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../Core/app_colors.dart';

class PeopleWidget extends StatelessWidget {
  const PeopleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 10,
            child: Column(
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
                      width: 95,
                    ),
                    const Text(
                      "Job Detail",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Iconsax.archive_minus5,
                          color: AppColors.primary500,
                        )),
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
                  height: 10,
                ),
                const Text(
                  "Senior UI Designer",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Twitter • Jakarta, Indonesia ",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: AppColors.neutral500),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 80,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: AppColors.primary100,
                      ),
                      child: Text(
                        "Fulltime",
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
                        "Senior",
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
                  height: 50,
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
                        "Desicription",
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
                  height: 50,
                ),
              ],
            ),
          ),

          Positioned(
              top: 375, right: 20,
              child: Container(
                height: 45,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: AppColors.neutral400),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 11),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Text("UI/UX Designer",
                          style: TextStyle(color: AppColors.neutral900),),

                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(Iconsax.arrow_down_1,size: 20,)
                      ],),
                  ],
                ),
              )
          ),

          Positioned(
              top: 375,
              left: 30,
              child: Text(
                "6 Employees For",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.neutral900,
                    fontSize: 16),
              )),

          Positioned(
              top: 404,
              left: 30,
              child: Text(
                "UI/UX Design",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.neutral400,
                    fontSize: 13.3),
              )),

          Positioned(
               top: 420,
               left: 10,
               height: 700,
               child: ListView.separated(
                      itemCount: 8,
                        itemBuilder: (context,i){
                      return Container(
                        margin: const EdgeInsets.all(10),
                        child: Row(
                          children: [
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
                                    Text(
                                      "6 Employees For",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.neutral900,
                                          fontSize: 16),
                                    ),
                                    const SizedBox(
                                      width: 108,
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
                                      width: 60,
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
                          endIndent: 40,
                          indent: 20,
                        );
        },),
             ),

          Positioned(
            bottom: 20,
            left: 31,
            child: SizedBox(
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
                  "Next",
                  style: TextStyle(fontSize: 18, color: AppColors.neutral100),
                ),
              ),
            ),
          ),
        ],
      ),
    );  }
}
