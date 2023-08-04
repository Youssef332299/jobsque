import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 3.5.h,
          ),
          SizedBox(
            width: double.infinity,
            child: Image.asset("assets/images/onboarding/Onboarding.png"),
          ),
          SizedBox(
            height: 1.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 2.5.w,
              ),
              Text(
                "Find a job, and ",
                style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "start",
                style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 0.5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 2.5.w,
              ),
              Text(
                "building ",
                style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "your career",
                style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 0.5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 2.5.w,
              ),
              Text(
                "from now on ",
                style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(height: 1.5.h,),

          Row(children: [
            SizedBox(width: 2.5.w,),
            Text("Explore over 25,924 available job roles and",style: TextStyle(fontSize: 13.sp,color: Colors.black45,fontWeight: FontWeight.w400),),
          ],),

          Row(children: [
            SizedBox(width: 2.5.w,),
            Text("upgrade your operator now.",style: TextStyle(fontSize: 13.sp,color: Colors.black45,fontWeight: FontWeight.w400),),
          ],),
        ],
      ),
    );
  }
}
