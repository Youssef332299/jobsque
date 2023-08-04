import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import '../../../Core/routes.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

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

            child: Image.asset("assets/images/onboarding/Onboarding3.png"),
          ),
          SizedBox(
            height: 2.5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 2.5.w,
              ),
              Text(
                "Get the best ",
                style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "choice for ",
                style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 2.5.w,
              ),
              Text(
                "the job ",
                style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "you,ve always",
                style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 2.5.w,
              ),
              Text(
                "dreamed of ",
                style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 2.5.w,
              ),
               Text(
                "The better the skills you have, the greater the",
                style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.black45,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 2.5.w,
              ),
              Text(
                "good job opprtunities for you.",
                style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.black45,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
