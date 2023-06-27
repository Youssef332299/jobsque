import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          SizedBox(
            width: double.infinity,
            child: Image.asset("assets/images/onboarding/Onboarding.png"),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Text(
                "Find a job, and ",
                style: TextStyle(
                    fontSize: 31,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "start",
                style: TextStyle(
                    fontSize: 31,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Text(
                "building ",
                style: TextStyle(
                    fontSize: 31,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "your career",
                style: TextStyle(
                    fontSize: 31,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Text(
                "from now on ",
                style: TextStyle(
                    fontSize: 31,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(height: 15,),

          const Row(children: [
            SizedBox(width: 25,),
            Text("Explore over 25,924 available job roles and",style: TextStyle(fontSize: 15,color: Colors.black45,fontWeight: FontWeight.w400),),
          ],),

          const Row(children: [
            SizedBox(width: 25,),
            Text("upgrade your operator now.",style: TextStyle(fontSize: 15,color: Colors.black45,fontWeight: FontWeight.w400),),
          ],),
        ],
      ),
    );
  }
}
