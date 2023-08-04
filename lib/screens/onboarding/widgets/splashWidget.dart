import 'package:flutter/material.dart';
import 'package:jobsque/screens/onboarding/provider/pageViewProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<PageViewProvider>().handleData(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 5.5.h,
            left: -25.w,
            right: -25.w,
            child:  Container(
            height: 90.h,
            width: 90.w,
            decoration: BoxDecoration(
              color: const Color(0x24AFC6FF),
              // color: Colors.red,
              borderRadius: BorderRadius.circular(400),
            ),
          ),),
          Positioned(
            top: 14.8.h,
            left: -10.w,
            right: -10.w,
            child:  Container(
              height: 70.h,
              width: 70.w,
              decoration: BoxDecoration(
                color: const Color(0x24AFC6FF),
                borderRadius: BorderRadius.circular(400),
              ),
            ),),
          Positioned(
            top: 27.h,
            left: 2.w,
            child:  Container(
              height: 48.h,
              width: 96.w,
              decoration: BoxDecoration(
                color: const Color(0x24AFC6FF),
                borderRadius: BorderRadius.circular(400),
              ),
            ),),
          Positioned(
            top: 38.1.h,
            left: 22.5.w,
            child:  Container(
              height: 26.h,
              width: 55.w,
              decoration: BoxDecoration(
                color: const Color(0x24AFC6FF),
                borderRadius: BorderRadius.circular(400),
              ),
            ),
          ),
          Positioned(
            top: 49.5.h,
            left: 33.w,
            child: Image.asset("assets/images/app logo/Logo.png",scale: 1.4.sp,),
          ),
        ],
      )
    );
  }

}
