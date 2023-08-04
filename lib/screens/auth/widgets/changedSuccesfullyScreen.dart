import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
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
            SizedBox(
              height: 12.h,
            ),
            Center(
              child: Image.asset("assets/images/created Successfully/createdSuccessfully.png",scale: 2.4.sp,),
            ),
            SizedBox(
              height: 1.h,
            ),
            Center(
              child: Text(
                "Password changed",
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 8,),
            Center(
              child: Text(
                " succesfully!",
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 1.5.h,),
            Center(
              child: Text(
                "Your password has been changed successfully,",
                style: TextStyle(fontSize: 13.sp,color: AppColors.neutral500),
              ),
            ),
            const SizedBox(height: 5,),
            Center(
              child: Text(
                " we will let you know if there are more problems",
                style: TextStyle(fontSize: 13.sp,color: AppColors.neutral500),
              ),
            ),
            const SizedBox(height: 5,),
            Center(
              child: Text(
                "with your account",
                style: TextStyle(fontSize: 13.sp,color: AppColors.neutral500),
              ),
            ),
            SizedBox(height: 30.h,),
            SizedBox(
              width: 86.w,
              height: 6.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary500,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(vertical: 14)),
                onPressed: () {
                  Navigator.of(context).pushNamed("createAccount");
                  // Navigator.of(context).pushNamed("bottomNavigation");
                },
                child: Text("Open email app",style: TextStyle(fontSize: 13.sp,color: AppColors.neutral100),),),
            ),
          ],
        ),
      ),
    );
  }
}