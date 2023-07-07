import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../Core/app_colors.dart';

class CompanyWidget extends StatelessWidget {
  const CompanyWidget({super.key});

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
                    width: 25,
                  ),
                  Text(
                    "Desicription",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.neutral500),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    width: 120,
                    height: 44,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.primary900,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text("Company",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.white)),
                  ),
                  const SizedBox(
                    width: 30,
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
          ],
        ),
      ),

      Positioned(
          top: 365,
          left: 20,
          child: Text(
            "Contact Us",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.neutral900,
                fontSize: 16),
          )),

      Positioned(
          top: 400, left: 20,
          child: Container(
            height: 65,
            width: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.neutral300),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Email", style: TextStyle(color: AppColors.neutral400),),

                  ],),
                const SizedBox(height: 7),
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Text("twitter@mail.com", style: TextStyle(
                        color: AppColors.neutral800,
                        fontWeight: FontWeight.w400),),

                  ],),
              ],
            ),
          )
      ),
      Positioned(
          top: 400, right: 20,
          child: Container(
            height: 65,
            width: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.neutral300),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Text("Website",
                      style: TextStyle(color: AppColors.neutral400),),

                  ],),
                const SizedBox(height: 7),
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Text("twitter@mail.com", style: TextStyle(
                        color: AppColors.neutral800,
                        fontWeight: FontWeight.w400),),

                  ],),
              ],
            ),
          )
      ),

      Positioned(
          top: 490,
          left: 20,
          child: Text(
            "About Company",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: AppColors.neutral900,
                fontSize: 16),
          )),

      Positioned(
        height: 360,
        width: 365,
        top: 525,
        left: 23,
        child: SizedBox(
          width: 350,
          height: 300,
          child: Text(
            // "• A strong visual portfolio with clear understanding of UI\n  methodologies\n"
            //     "• Ability to create hi-fidelity mock-ups in Figma\n"
            //     "• Ability to create various graphics for the web e.g. illustrations\n    and icons\n"
            //     "• Able to facilitate workshops and liaise with stakeholders\n"
            //     "• Proficiency in the Adobe Creative Suite\n"
            //     "• Confident communicator with an analytical mindset\n"
            //     "• Design library/Design system experience\n"
            //     "• 4+ years of commercial experience in UI/Visual Design",
              "Understanding Recruitment is an award-winning technology, "
                  "\nsoftware"
              "and digital recruitment consultancy with headquarters \n"
                  "in St."
              "Albans, Hertfordshire.We also have a US office in Boston,"
              "\nMassachusetts specialising"
              "in working closely with highly skilled \nindividuals seeking their next"
              "career move within Next Gen Tech, \n"
                  "Backend Engineering, and"
              "Artificial"
              "Intelligence.We recently \n"
                  "celebrated our first decade in business"
              "and over the years have \n"
                  "been recognised with several industry"
              "awards including 'Best \n"
                  "Staffing Firm to Work For 2018'​ at the SIA Awards"
              "for the third \n"
                  "consecutive year and ‘Business of the"
              "Year 2017’ at the SME \n"
                  "Hertfordshire Business Awards."
              "Our teams of specialists operate \n"
                  "across all areas of Technology"
              "and Digital, including Java, \n"
                  "JavaScript, Python, ."
              "Net, DevOps & SRE, SDET, Artificial I\n"
                  "ntelligence"
              ", Machine Learning, AI, Digital, Quantum Computing"
              ", Hardware   Acceleration, Digital, Charity, Fintech,"
              "and the Public Sector."
                  ,
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral500,
                    fontSize: 12.8),
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
                  Navigator.of(context).pushNamed("peopleWidget");
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
