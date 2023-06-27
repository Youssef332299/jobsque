import 'package:flutter/material.dart';
import 'package:jobsque/screens/onboarding/provider/pageViewProvider.dart';
import 'package:provider/provider.dart';

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
            top: 50,
            left: -150,
            right: -150,
            child:  Container(
            height: 780,
            width: 780,
            decoration: BoxDecoration(
              color: const Color(0x24AFC6FF),
              borderRadius: BorderRadius.circular(400),
            ),
          ),),
          Positioned(
            top: 148,
            left: -100,
            right: -100,
            child:  Container(
              height: 590,
              width: 590,
              decoration: BoxDecoration(
                color: const Color(0x24AFC6FF),
                borderRadius: BorderRadius.circular(400),
              ),
            ),),
          Positioned(
            top: 250,
            left: 10,
            child:  Container(
              height: 390,
              width: 390,
              decoration: BoxDecoration(
                color: const Color(0x24AFC6FF),
                borderRadius: BorderRadius.circular(400),
              ),
            ),),
          Positioned(
            top: 345,
            left: 105,
            child:  Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: const Color(0x24AFC6FF),
                borderRadius: BorderRadius.circular(400),
              ),
            ),
          ),
          Positioned(
            top: 429,
            left: 142,
            child: Image.asset("assets/images/app logo/Logo.png",scale: 1.9,),
          ),
        ],
      )
    );
  }

}
