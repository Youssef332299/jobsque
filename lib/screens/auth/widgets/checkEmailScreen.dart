import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../Core/app_colors.dart';

class CheckEmailScreen extends StatelessWidget {
  const CheckEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25.h,
            ),
            Center(
              child: Image.asset(
                "assets/images/Password Check/img.png",
                scale: 2.3.sp,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Center(
              child: Text(
                "Check your Email",
                style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: 2.h,),
            Center(
              child: Text(
                "We have sent a reset password to your email",
                style: TextStyle(fontSize: 13.sp,color: AppColors.neutral500),
              ),
            ),
            SizedBox(height: 0.5.h,),
            Center(
              child: Text(
                "address",
                style: TextStyle(fontSize: 13.sp,color: AppColors.neutral500),
              ),
            ),
            SizedBox(height: 26.h,),
            SizedBox(
              width: 86.w,
              height: 6.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary500,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(vertical: 14)),
                onPressed: () {
                  Navigator.of(context).pushNamed("createPassword");
                },
                child: Text("Open email app",style: TextStyle(fontSize: 18,color: AppColors.neutral100),),),
            ),
          ],
        ),
      ),
    );
  }
}
