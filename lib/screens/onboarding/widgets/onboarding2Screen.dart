import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../Core/routes.dart';

class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({Key? key}) : super(key: key);

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
            child: Image.asset("assets/images/onboarding/Onboarding2.png"),
          ),
          const SizedBox(
            height: 25,
          ),
          const Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Text(
                "Hundreds of jobs are",
                style: TextStyle(
                    fontSize: 31,
                    color: Colors.black,
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
                "waiting for you to ",
                style: TextStyle(
                    fontSize: 31,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "join",
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
                "together ",
                style: TextStyle(
                    fontSize: 31,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(height: 15,),

          const Row(children: [
            SizedBox(width: 25,),
            Text("Immediately join us and start applying for the",style: TextStyle(fontSize: 15,color: Colors.black45,fontWeight: FontWeight.w400),),
          ],),

          const Row(children: [
            SizedBox(width: 25,),
            Text("job you are interested in.",style: TextStyle(fontSize: 15,color: Colors.black45,fontWeight: FontWeight.w400),),
          ],),
        ],
      ),
    );
  }
}
