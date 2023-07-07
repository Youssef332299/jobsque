import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/core/app_AppBar.dart';
import 'package:jobsque/screens/settings/provider/profileProvider.dart';
import 'package:provider/provider.dart';
import '../../../../../Core/app_colors.dart';

class Two_stepVerificationScreen2 extends StatelessWidget {
  const Two_stepVerificationScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Two-step verification",routeName: "two_stepVerification",),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),

            Container(
              height: 75,
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.neutral300),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Secure your account with \ntwo-step verification",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15,color: AppColors.neutral400),
                  ),
                  const SizedBox(
                    width: 95,
                  ),
                  CupertinoSwitch(
                    value: false,
                    trackColor: AppColors.neutral300,
                    thumbColor: AppColors.neutral100, onChanged: (value) {},),
                ],
              ),
            ),

            const SizedBox(
              height: 10,
            ),
            const Row(children: [
              SizedBox(width: 25,),
              Text("Select a verification method",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
            ],),
            Container(
              height: 60,
              margin: const EdgeInsets.only(left: 20,right: 20,top: 10),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.neutral300),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Telephone number (SMS)",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,color: AppColors.neutral900),
                  ),
                  const SizedBox(
                    width: 135,
                  ),
                  const Icon(Iconsax.arrow_down_1)
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(width: 25,),
                Column(
                  children: [
                    Text(
                      "Note : Turning this feature will sign you out anywhere",
                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: AppColors.neutral400),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text("you’re currently signed in. We will then require you to ",
                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: AppColors.neutral400),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text("enter a verification code the first time you sign with a",
                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: AppColors.neutral400),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text("new device or Joby mobile application.                        ",
                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: AppColors.neutral400),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 350,
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
                  Navigator.of(context).pushNamed("two_stepVerification3");
                },
                child: Text(
                  "Next",
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
