import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/screens/auth/provider/createAccountProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../Core/app_colors.dart';


class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                SizedBox(width: 0.7.w),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("pageView");
                    },
                    icon: const Icon(Iconsax.arrow_left)),
                SizedBox(
                  width: 60.w,
                ),
                SizedBox(
                  width: 24.w,
                  child: Image.asset("assets/images/app logo/Logo.png"),
                ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
             Row(
              children: [
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "Create Account",
                  style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 1.1.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "Please create an account to find your dream job",
                  style: TextStyle(fontSize: 12.sp,color: AppColors.neutral500),
                )
              ],
            ),
            SizedBox(
              height: 3.5.h,
            ),
            // Design

            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 7.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: context.watch<CreateAccountProvider>().state.usernameController.text.isEmpty &&
                            context.watch<CreateAccountProvider>().state.passwordController.text.isEmpty ||
                            context.watch<CreateAccountProvider>().state.passwordController.text.length > 7
                            ? AppColors.neutral400
                            : AppColors.primary500),
                  ),
                  margin: EdgeInsets.only(bottom: 2.2.h, right: 5.w, left: 5.w, top: 2.0.h),
                  child: TextFormField(
                    onChanged: (username) {
                      context.read<CreateAccountProvider>().usernameOnChanged(username);
                    },
                    autovalidateMode: AutovalidateMode.always,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Username",
                      prefixIcon: Icon(Iconsax.frame_1,
                          color: context.watch<CreateAccountProvider>().state.usernameController.text.isEmpty &&
                              context.watch<CreateAccountProvider>().state.passwordController.text.isEmpty ||
                              context.watch<CreateAccountProvider>().state.passwordController.text.length > 7
                              ? AppColors.neutral400
                              : AppColors.neutral900),
                    ),
                  ),
                ),
                //username

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
                  margin: EdgeInsets.only(bottom: 2.h, right: 5.w, left: 5.w,),
                  child: TextFormField(
                    onChanged: (email) {
                      context.read<CreateAccountProvider>().emailOnChanged(email);
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
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
                ),
                // Email

                Container(
                  width: double.infinity,
                  height: 7.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: context.watch<CreateAccountProvider>().state.passwordController.text.isNotEmpty
                            && context.watch<CreateAccountProvider>().state.usernameController.text.isNotEmpty
                            && context.watch<CreateAccountProvider>().state.emailController.text.isNotEmpty
                            && context.watch<CreateAccountProvider>().state.passwordController.text.length < 8
                            ? AppColors.danger500
                            : AppColors.neutral400),
                  ),
                  margin: EdgeInsets.only(bottom: 2.h, right: 5.w, left: 5.w,),
                  child: TextFormField(
                    onChanged: (password) {
                      context.read<CreateAccountProvider>().passwordOnChanged(password);
                    },
                    onEditingComplete: () => FocusScope.of(context).unfocus(),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    autocorrect: true,
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
                ),
                //Password

                Row(
                  children: [
                    SizedBox(
                      width: 5.2.w,
                    ),
                    Text(
                      "Password must be at least 8 characters ",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 11.6.sp,
                        color: context.read<CreateAccountProvider>().Text_color(
                            Provider.of<CreateAccountProvider>(context, listen: false).state.passwordController.text),
                      ),)],
                ),
                // password must be at least 8 characters

                SizedBox(
                  height: 17.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 26.w,
                    ),
                    Text("Already have account? ",
                        style: TextStyle(fontSize: 10.7.sp, color: Colors.black26)),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("login");
                        },
                        child: Text(
                          "LogIn",
                          style: TextStyle(fontSize: 10.7.sp, color: AppColors.primary500),
                        ))
                  ],
                ),
                //LogIn

                SizedBox(
                  height: 2.5.h,
                ),
                SizedBox(
                  width: 86.w,
                  height: 6.h,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                           context.watch<CreateAccountProvider>().state.usernameController.text.isEmpty
                        || context.watch<CreateAccountProvider>().state.emailController.text.isEmpty
                        || context.watch<CreateAccountProvider>().state.passwordController.text.isEmpty
                            ? AppColors.neutral300
                            : AppColors.primary500,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 14)),
                    onPressed: () async {
                      context.read<CreateAccountProvider>().onTap(context);
                    },
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: context.watch<CreateAccountProvider>().state.usernameController.text.isEmpty ||
                            context.watch<CreateAccountProvider>().state.emailController.text.isEmpty ||
                            context.watch<CreateAccountProvider>().state.passwordController.text.isEmpty
                            ? AppColors.neutral500 : AppColors.neutral100,
                      ),
                    ),
                  ),
                ),
                // Create Account Button

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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
