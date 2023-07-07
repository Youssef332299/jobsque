import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../Core/app_colors.dart';

class ApplySuccesfullyWidget extends StatelessWidget {
  const ApplySuccesfullyWidget({super.key});

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
                  width: 9,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("uploadPortfolioWidget");
                    },
                    icon: const Icon(Iconsax.arrow_left)),
                const SizedBox(
                  width: 98,
                ),
                const Text(
                  "Apply Job",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Container(
              height: 700,
              child: Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Image.asset(
                    "assets/images/appled/appled.PNG",
                    scale: 3.8,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Your data has been",
                    style: TextStyle(fontSize: 29, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "successfully sent",
                    style: TextStyle(fontSize: 29, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "You will get a message from our team, about",
                    style: TextStyle(fontSize: 16, color: AppColors.neutral500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "the announcement of employee acceptance",
                    style: TextStyle(fontSize: 16, color: AppColors.neutral500),
                  ),
                ],
              ),
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
                  Navigator.of(context).pushNamed("bottomNavigation");
                },
                child: Text(
                  "Back to home",
                  style: TextStyle(fontSize: 18, color: AppColors.neutral100),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
