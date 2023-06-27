import 'package:flutter/material.dart';

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
            const SizedBox(
              height: 200,
            ),
            Center(
              child: Image.asset(
                "assets/images/Password Check/img.png",
                scale: 3.3,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "Check your Email",
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 18,),
            Center(
              child: Text(
                "We have sent a reset password to your email",
                style: TextStyle(fontSize: 16,color: AppColors.neutral500),
              ),
            ),
            const SizedBox(height: 5,),
            Center(
              child: Text(
                "address",
                style: TextStyle(fontSize: 16,color: AppColors.neutral500),
              ),
            ),
            const SizedBox(height: 230,),
            SizedBox(
              width: 345,
              height: 55,
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
