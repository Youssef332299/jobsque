import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import '../../../Core/app_colors.dart';
import '../provider/createAccountState.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}
CreateAccountState state = CreateAccountState();

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 45,),
            Row(
              children: [const SizedBox(width: 7),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("pageView");
                    },
                    icon: const Icon(Iconsax.arrow_left)),
                SizedBox(
                  width: 25.w,
                ),
                SizedBox(
                  width: 100,
                  child: Image.asset("assets/images/app logo/Logo.png"),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Reset Password",
                  style: TextStyle(fontSize: 29, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                Text(
                  "Enter the email address you used when you ",
                  style: TextStyle(fontSize: 16,color: AppColors.neutral500),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                Text(
                  "joined and we’ll send you instructions to reset",
                  style: TextStyle(fontSize: 16,color: AppColors.neutral500),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                Text(
                  "your password.",
                  style: TextStyle(fontSize: 16,color: AppColors.neutral500),
                ),
              ],
            ),
            const SizedBox(height: 50,),
            Container(
              width: double.infinity,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: state.emailController.text.isEmpty || state.emailController.text.endsWith("@gmail.com")
                        ? AppColors.neutral400
                        : AppColors.primary500),
              ),
              margin: const EdgeInsets.only(bottom: 22,right: 23,left: 23),
              child: TextFormField(
                onChanged: (email) {
                  setState(() {
                    state.emailController.text = email;
                  });
                },
                onEditingComplete: () => FocusScope.of(context).unfocus(),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your email....",
                  prefixIcon: Icon(
                      Iconsax.sms,
                      color: state.emailController.text.isEmpty || state.emailController.text.endsWith("@gmail.com")
                          ? AppColors.neutral400
                          : AppColors.neutral900
                  ),
                ),
              ),
            ),//
            const  SizedBox(
              height: 350,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 88,
                ),
                Text("You remember your password ",
                    style:
                    TextStyle(fontSize: 14, color: AppColors.neutral400)),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("login");
                    },
                    child: const Text(
                      "LogIn",
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    )),
              ],
            ),
            const SizedBox(height: 25,),
            SizedBox(
              width: 345,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary500,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(vertical: 14)),
                onPressed: () {
                  if (state.emailController.text.isEmail && state.emailController.text.endsWith("@gmail.com")) {
                     Navigator.of(context).pushNamed("checkEmail");
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text(
                            "Error .. Invaled Email")));
                  }},
                child: Text("Request password reset",style: TextStyle(fontSize: 18,color: AppColors.neutral100),),),
            ),// Email
          ],
        ),
      ),
    );
  }
}
