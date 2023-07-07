import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/core/app_AppBar.dart';
import 'package:jobsque/screens/settings/provider/profileProvider.dart';
import 'package:provider/provider.dart';
import '../../../../../Core/app_colors.dart';


class Two_stepVerificationScreen extends StatelessWidget {
  const Two_stepVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: "Two-step verification",routeName: "loginAndSecurity",),
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
                      value: context.watch<ProfileProvider>().state.useIt,
                      trackColor: AppColors.neutral300,
                      thumbColor: AppColors.neutral100, onChanged: (value) {},),
                ],
              ),
            ),

            Row(
              children: [
                const SizedBox(width: 25,),
                Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                      color: AppColors.primary100,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                        onPressed: (){
                          context.read<ProfileProvider>().getFileData();
                        },
                        icon: Icon(
                          Iconsax.lock,
                          color: AppColors.primary500,
                          size: 28,
                        ))),
                const SizedBox(width: 10,),
                Column(
                  children: [
                    Text(
                        "Two-step verification provides additional",
                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: AppColors.neutral400),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text("security by asking for a verification code",
                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: AppColors.neutral400),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text("every time you log in on another device. ",
                      style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: AppColors.neutral400),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const SizedBox(width: 25,),
                Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                      color: AppColors.primary100,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: IconButton(
                        onPressed: (){
                          context.read<ProfileProvider>().getFileData();
                        },
                        icon: Icon(
                          Iconsax.external_drive,
                          color: AppColors.primary500,
                          size: 28,
                        ))),
                const SizedBox(width: 10,),
                Column(
                  children: [
                    Text(
                      "Adding a phone number or using an        ",
                      style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.5,color: AppColors.neutral400),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(" authenticator will help keep your account",
                      style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.5,color: AppColors.neutral400),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text("safe from harm.                                           ",
                      style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14.5,color: AppColors.neutral400),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(
              height: 395,
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
                  Navigator.of(context).pushNamed("two_stepVerification2");
                },
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 18, color: AppColors.neutral100),
                ),
              ),
            ), // Email
          ],
        ),
      ),
    );
  }
}
