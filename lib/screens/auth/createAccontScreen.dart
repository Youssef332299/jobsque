import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/screens/auth/provider/createAccountProvider.dart';
import 'package:provider/provider.dart';
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
            const SizedBox(
              height: 45,
            ),
            Row(
              children: [
                const SizedBox(width: 7),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("pageView");
                    },
                    icon: const Icon(Icons.arrow_back_rounded)),
                const SizedBox(
                  width: 220,
                ),
                SizedBox(
                  width: 100,
                  child: Image.asset("assets/images/app logo/Logo.png"),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 19,
                ),
                Text(
                  "Create Account",
                  style: TextStyle(fontSize: 29, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 11,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 19,
                ),
                Text(
                  "Please create an account to find your dream job",
                  style: TextStyle(fontSize: 16),
                )
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            // Design

            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 60,
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
                  margin: const EdgeInsets.only(
                      bottom: 22, right: 23, left: 23, top: 20),
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
                  height: 60,
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
                  margin:
                  const EdgeInsets.only(bottom: 22, right: 23, left: 23),
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
                  height: 60,
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
                  margin: const EdgeInsets.only(bottom: 22, right: 23, left: 23),
                  child: TextFormField(
                    onChanged: (password) {
                      context.read<CreateAccountProvider>().passwordOnChanged(password);
                    },
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
                    const SizedBox(
                      width: 26,
                    ),
                    Text(
                      "Password must be at least 8 characters ",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: context.read<CreateAccountProvider>().Text_color(
                            Provider.of<CreateAccountProvider>(context, listen: false).state.passwordController.text),
                      ),)],
                ),
                // password must be at least 8 characters

                const SizedBox(
                  height: 105,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 110,
                    ),
                    const Text("Already have account? ",
                        style: TextStyle(fontSize: 14, color: Colors.black26)),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("login");
                        },
                        child: Text(
                          "LogIn",
                          style: TextStyle(fontSize: 14, color: AppColors.primary500),
                        ))
                  ],
                ),
                //LogIn

                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: 345,
                  height: 55,
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
                        fontSize: 18,
                        color: context.watch<CreateAccountProvider>().state.usernameController.text.isEmpty ||
                            context.watch<CreateAccountProvider>().state.emailController.text.isEmpty ||
                            context.watch<CreateAccountProvider>().state.passwordController.text.isEmpty
                            ? AppColors.neutral500 : AppColors.neutral100,
                      ),
                    ),
                  ),
                ),
                // Create Account Button

                const SizedBox(
                  height: 35,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 25,
                    ),
                    Container(
                      height: 2,
                      width: 55,
                      color: AppColors.neutral300,
                    ),
                    const Text(
                      "          Or Sign up With Account          ",
                      style: TextStyle(color: Colors.black45),
                    ),
                    Container(
                      height: 2,
                      width: 55,
                      color: AppColors.neutral300,
                    ),
                  ],
                ),
                // Or Sign up With Account

                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: (){
                        context.read<CreateAccountProvider>().googleSignIn(context);
                        },
                      child: Container(
                          height: 48,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: AppColors.neutral300, width: 1)),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  SizedBox(
                                    height: 32,
                                    child: Image.asset(
                                        "assets/images/google/google logo.png"),
                                  ),
                                  const Text(
                                    "Google",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Container(
                        height: 48,
                        width: 150,
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
                              height: 22,
                              child: Image.asset(
                                  "assets/images/facebook/facebook-logo.png"),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            const Text(
                              " Facebook",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
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
