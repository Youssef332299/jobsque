import 'package:flutter/material.dart';

import '../../../Core/app_colors.dart';

class ChangedSuccesfullyScreen extends StatelessWidget {
  const ChangedSuccesfullyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 190,
            ),
            Center(
              child: Image.asset("assets/images/created Successfully/createdSuccessfully.png"),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "Password changed",
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 8,),
            const Center(
              child: Text(
                " succesfully!",
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 15,),
            Center(
              child: Text(
                "Your password has been changed successfully,",
                style: TextStyle(fontSize: 16,color: AppColors.neutral500),
              ),
            ),
            const SizedBox(height: 5,),
            Center(
              child: Text(
                " we will let you know if there are more problems",
                style: TextStyle(fontSize: 16,color: AppColors.neutral500),
              ),
            ),
            const SizedBox(height: 5,),
            Center(
              child: Text(
                "with your account",
                style: TextStyle(fontSize: 16,color: AppColors.neutral500),
              ),
            ),
            const SizedBox(height: 220,),
            SizedBox(
              width: 345,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary500,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(vertical: 14)),
                onPressed: () {
                  Navigator.of(context).pushNamed("createAccount");
                  // Navigator.of(context).pushNamed("bottomNavigation");
                },
                child: Text("Open email app",style: TextStyle(fontSize: 18,color: AppColors.neutral100),),),
            ),
          ],
        ),
      ),
    );
  }
}