import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../Core/routes.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

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

            child: Image.asset("assets/images/onboarding/Onboarding3.png"),
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
                "Get the best ",
                style: TextStyle(
                    fontSize: 31,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "choice for ",
                style: TextStyle(
                    fontSize: 31,
                    color: Colors.blueAccent,
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
                "the job ",
                style: TextStyle(
                    fontSize: 31,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "you,ve always",
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
                "dreamed of ",
                style: TextStyle(
                    fontSize: 31,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              SizedBox(
                width: 25,
              ),
               Text(
                "The better the skills you have, the greater the",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black45,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Text(
                "good job opprtunities for you.",
                style: TextStyle(
                    fontSize: 15,
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
