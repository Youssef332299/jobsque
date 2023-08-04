import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../Core/app_colors.dart';
import '../provider/createAccountProvider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                children: [
                  SizedBox(height: 4.5.h,),
                  Row(
                    children: [
                      SizedBox(width: 70.w,),
                      SizedBox(
                        width: 25.w,
                        child: Image.asset("assets/images/app logo/Logo.png"),),
                    ],
                  ),
                  SizedBox(height: 4.h,),
                  Row(
                    children: [
                      SizedBox(width: 5.w,),
                      Text("Login", style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500),),],
                  ),
                  SizedBox(height: 1.h,),
                  Row(
                    children: [
                      SizedBox(width: 5.w,),
                      Text("Please login to find your dream job", style: TextStyle(fontSize: 12.sp),),],
                  ),
                  SizedBox(height: 4.h,),
                  Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 7.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: context.watch<CreateAccountProvider>().state.emailController.text.isEmpty &&
                                    context.watch<CreateAccountProvider>().state.passwordController.text.isEmpty ||
                                    context.watch<CreateAccountProvider>().state.passwordController.text.length > 7
                                    ? AppColors.neutral400
                                    : AppColors.primary500),
                          ),
                          margin: EdgeInsets.only(bottom: 2.2.h, right: 5.w, left: 5.w, top: 2.0.h),
                          child: TextFormField(
                            onChanged: (emailValue) {
                              context.read<CreateAccountProvider>().emailLoginOnChanged(emailValue);
                            },
                    controller: context.watch<CreateAccountProvider>().state.emailController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                      prefixIcon: Icon(Iconsax.sms,
                          color: context.watch<CreateAccountProvider>().state.emailController.text.isEmpty &&
                              context.watch<CreateAccountProvider>().state.passwordController.text.isEmpty ||
                              context.watch<CreateAccountProvider>().state.passwordController.text.length > 7
                              ? AppColors.neutral400
                              : AppColors.neutral900),
                    ),
                  ),
                ), //email

                Container(
                  width: double.infinity,
                  height: 7.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: context.watch<CreateAccountProvider>().state.passwordController.text.isNotEmpty &&
                            context.watch<CreateAccountProvider>().state.passwordController.text.length < 8
                            ? AppColors.primary500
                            : AppColors.neutral400),
                  ),
                  margin: EdgeInsets.only(bottom: 2.2.h, right: 5.w, left: 5.w,),
                  child: TextFormField(
                    onChanged: (passwordValue) {
                      context.read<CreateAccountProvider>().passwordLoginOnChanged(passwordValue);
                    },
                    onEditingComplete: () => FocusScope.of(context).unfocus(),
                    controller: context.watch<CreateAccountProvider>().state.passwordController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    obscureText: context.watch<CreateAccountProvider>().state.isHidden,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      suffixIcon: InkWell(
                        onTap: () {
                          context.read<CreateAccountProvider>().isHidden();
                        },
                        child: context.watch<CreateAccountProvider>().state.isHidden
                            ? Icon(
                          Iconsax.eye_slash,
                          color: context.watch<CreateAccountProvider>().state.passwordController.text.isEmpty ||
                              context.watch<CreateAccountProvider>().state.passwordController.text.length > 7
                              ? AppColors.neutral400
                              : AppColors.neutral900,
                        )
                            : Icon(
                          Iconsax.eye,
                          color: context.watch<CreateAccountProvider>().state.passwordController.text.isEmpty ||
                              context.watch<CreateAccountProvider>().state.passwordController.text.length > 7
                              ? AppColors.neutral400
                              : AppColors.neutral900,
                        ),
                      ),
                      prefixIcon: Icon(
                        Iconsax.lock,
                        color: context.watch<CreateAccountProvider>().state.passwordController.text.isEmpty ||
                            context.watch<CreateAccountProvider>().state.passwordController.text.length > 7
                            ? AppColors.neutral400
                            : AppColors.neutral900,
                      ),
                    ),
                  ),
                ), //Password

                Row(
                  children: [
                    SizedBox(
                      width: 2.5.w,
                    ),
                    CupertinoCheckbox(
                        value: context.watch<CreateAccountProvider>().state.isCheck,
                        activeColor: AppColors.primary500,
                        onChanged: (newBool) {
                          context.read<CreateAccountProvider>().isCheck(newBool);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6))),
                    Text(
                      "Remember me",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10.7.sp,
                          color: Colors.black54),
                    ),
                    SizedBox(
                      width: 27.w,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("forgetPassword");
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 10.7.sp,
                            color: AppColors.primary500),
                      ),
                    ),
                  ],
                ), //check Box

                SizedBox(
                  height: 23.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 24.w,
                    ),
                    Text("Don't have an account? ",
                        style: TextStyle(fontSize: 11.sp, color: Colors.black26)),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("createAccount");
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(fontSize: 11.sp, color: AppColors.primary500),
                        ))
                  ],
                ), //Register //Register
              ]),
              SizedBox(
                height: 3.0.h,
              ),

              SizedBox(
                width: 86.w,
                height: 6.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: context.watch<CreateAccountProvider>().state.emailController.text.isEmpty ||
                          context.watch<CreateAccountProvider>().state.passwordController.text.isEmpty
                          ? AppColors.neutral300
                          : AppColors.primary500,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(vertical: 14)),
                  onPressed: () {
                    context.read<CreateAccountProvider>().loginInTap(context);
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 18,
                        color: context.watch<CreateAccountProvider>().state.passwordController.text.isEmpty ||
                            context.watch<CreateAccountProvider>().state.passwordController.text.isEmpty
                            ? AppColors.neutral500
                            : AppColors.neutral100),
                  ),
                ),
              ), //Log In

                  SizedBox(
                    height: 3.5.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 8.w,
                      ),
                      Container(
                        height: 2,
                        width: 15.w,
                        color: AppColors.neutral300,
                      ),
                      const Text(
                        "          Or Sign up With Account          ",
                        style: TextStyle(color: Colors.black45),
                      ),
                      Container(
                        height: 2,
                        width: 15.w,
                        color: AppColors.neutral300,
                      ),
                    ],
                  ),
                  // Or Sign up With Account

                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 8.w,
                      ),
                      InkWell(
                        onTap: (){
                          context.read<CreateAccountProvider>().googleSignIn(context);
                        },
                        child: Container(
                            height: 6.h,
                            width: 40.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: AppColors.neutral300, width: 1)),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 7.w,
                                    ),
                                    SizedBox(
                                      height: 4.h,
                                      child: Image.asset(
                                          "assets/images/google/google logo.png"),
                                    ),
                                    Text(
                                      "Google",
                                      style: TextStyle(
                                          fontSize: 10.7.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                          height: 6.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: AppColors.neutral300, width: 1)),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 25,
                              ),
                              SizedBox(
                                height: 2.4.h,
                                child: Image.asset(
                                    "assets/images/facebook/facebook-logo.png"),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Text(
                                " Facebook",
                                style: TextStyle(
                                    fontSize: 10.7.sp, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )),
                    ],
                  ), //google & facebook
            ])));
  }
}
