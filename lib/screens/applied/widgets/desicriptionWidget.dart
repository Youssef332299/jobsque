import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../Core/app_colors.dart';

class DesicriptionWidget extends StatelessWidget {
  const DesicriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
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
                      width: 105,
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
                      Container(
                        width: 125,
                        height: 44,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.primary900,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Text("Desicription",
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
                            fontWeight: FontWeight.w600,
                            color: AppColors.neutral500),
                      ),
                      const SizedBox(
                        width: 52,
                      ),
                      Text(
                        "People",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.neutral500),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: SizedBox(
                    width: 359,
                    height: 200,
                    child: Text(
                      "Your role as the UI Designer is to use interactive \n"
                          "components on various platforms (web, desktop and mobile). This will include \n"
                          "producing high-fidelity mock-ups, iconography, UI illustrations/\n"
                          "graphics, and other graphic elements. As the UI Designer, you \n"
                          "will be supporting the wider design team with the internal \n"
                          "Design System, tying together the visual language. You will with \n"
                          "other UI and UX Designers, Product Managers, and Engineering \n"
                          "teams in a highly customer-focused agile environment to help \n"
                          "define the vision of the products.",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: AppColors.neutral500,
                          fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
              top: 365,
              left: 20,
              child: Text(
                "Job Description",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.neutral900,
                    fontSize: 16),
              )),
          Positioned(
              top: 605,
              left: 20,
              child: Text(
                "Skill Required",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.neutral900,
                    fontSize: 16),
              )),
          Positioned(
            height: 360,
            width: 360,
            top: 630,
            left: 23,
            child: SizedBox(
              width: 350,
              height: 300,
              child: Text(
                "• A strong visual portfolio with clear understanding of UI\n  methodologies\n"
                    "• Ability to create hi-fidelity mock-ups in Figma\n"
                    "• Ability to create various graphics for the web e.g. illustrations\n    and icons\n"
                    "• Able to facilitate workshops and liaise with stakeholders\n"
                    "• Proficiency in the Adobe Creative Suite\n"
                    "• Confident communicator with an analytical mindset\n"
                    "• Design library/Design system experience\n"
                    "• 4+ years of commercial experience in UI/Visual Design",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral500,
                    fontSize: 13),
              ),
            ),
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
    );
  }
}

