import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
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
                  const SizedBox(height: 70,),
                  Row(
                    children: [
                      const SizedBox(width: 270,),
                      SizedBox(
                        width: 100,
                        child: Image.asset("assets/images/app logo/Logo.png"),),
                    ],
                  ),
                  const SizedBox(height: 35,),
                  const Row(
                    children: [
                      SizedBox(width: 30,),
                      Text("Login", style: TextStyle(fontSize: 29, fontWeight: FontWeight.w500),),],
                  ),
                  const SizedBox(height: 10,),
                  const Row(
                    children: [
                      SizedBox(width: 30,),
                      Text("Please login to find your dream job", style: TextStyle(fontSize: 16),),],
                  ),
                  const SizedBox(height: 55,),
                  Column(
                      children: [
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
                          margin: const EdgeInsets.only(bottom: 20, right: 23, left: 23),
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
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: context.watch<CreateAccountProvider>().state.passwordController.text.isNotEmpty &&
                            context.watch<CreateAccountProvider>().state.passwordController.text.length < 8
                            ? AppColors.primary500
                            : AppColors.neutral400),
                  ),
                  margin: const EdgeInsets.only(bottom: 20, right: 23, left: 23),
                  child: TextFormField(
                    onChanged: (passwordValue) {
                      context.read<CreateAccountProvider>().passwordLoginOnChanged(passwordValue);
                    },
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
                    const SizedBox(
                      width: 15,
                    ),
                    CupertinoCheckbox(
                        value: context.watch<CreateAccountProvider>().state.isCheck,
                        activeColor: AppColors.primary500,
                        onChanged: (newBool) {
                          context.read<CreateAccountProvider>().isCheck(newBool);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6))),
                    const Text(
                      "Remember me",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: Colors.black54),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("forgetPassword");
                      },
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: AppColors.primary500),
                      ),
                    ),
                  ],
                ), //check Box

                const SizedBox(
                  height: 150,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 80,
                    ),
                    const Text("Don't have an account? ",
                        style: TextStyle(fontSize: 14, color: Colors.black26)),
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed("createAccount");
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(fontSize: 14, color: AppColors.primary500),
                        ))
                  ],
                ), //Register //Register
              ]),
              const SizedBox(
                height: 30,
              ),

              SizedBox(
                width: 345,
                height: 55,
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

              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 2,
                    width: 60,
                    color: Colors.black12,
                  ),
                  const Text(
                    "        Or Sign up With Account        ",
                    style: TextStyle(color: Colors.black45),
                  ),
                  Container(
                    height: 2,
                    width: 60,
                    color: Colors.black12,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                      height: 48,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.neutral300, width: 1)),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 25,
                              ),
                              SizedBox(
                                height: 32,
                                child:
                                Image.asset("assets/images/google/google logo.png"),
                              ),
                              const Text(
                                "Google",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      )),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                      height: 48,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.neutral300, width: 1)),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 25,
                          ),
                          SizedBox(
                            height: 22,
                            child:
                            Image.asset("assets/images/facebook/facebook-logo.png"),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          const Text(
                            " Facebook",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      )),
                ],
              )
            ])));
  }
}
