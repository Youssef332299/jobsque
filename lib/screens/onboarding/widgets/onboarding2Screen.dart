import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:sizer/sizer.dart';
import '../../../Core/routes.dart';

class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({Key? key}) : super(key: key);

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
            child: Image.asset("assets/images/onboarding/Onboarding2.png"),
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
                "Hundreds of jobs are",
                style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
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
                "waiting for you to ",
                style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "join",
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
                "together ",
                style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          SizedBox(height: 1.5.h,),

          Row(children: [
            SizedBox(width: 2.5.w,),
            Text("Immediately join us and start applying for the",style: TextStyle(fontSize: 13.sp,color: Colors.black45,fontWeight: FontWeight.w400),),
          ],),

          Row(children: [
            SizedBox(width: 2.5.w,),
            Text("job you are interested in.",style: TextStyle(fontSize: 13.sp,color: Colors.black45,fontWeight: FontWeight.w400),),
          ],),
        ],
      ),
    );
  }
}
