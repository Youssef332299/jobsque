import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/core/app_AppBar.dart';
import 'package:jobsque/screens/settings/widgets/login&Security/provider/LoginAndSecurityProvider.dart';
import 'package:provider/provider.dart';

import '../../../../../Core/app_colors.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Change password', routeName: 'loginAndSecurity',),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),

            const Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Enter your old password",
                  style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
                  width: double.infinity,
                  height: 60,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(bottom: 22, right: 23, left: 23),
                  child: TextFormField(
                    // onChanged: (password) {
                    //   context.watch<LoginAndSecurityProvider>().state.oldPasswordController.text = password;
                    // },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    autocorrect: true,
                    controller: context.watch<LoginAndSecurityProvider>().state.oldPasswordController,
                    obscureText: context.watch<LoginAndSecurityProvider>().state.oldPasswordIsHidden,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.primary500),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.neutral400),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: "Old password",hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.neutral400),
                      suffixIcon: InkWell(
                        onTap: () {
                          context.read<LoginAndSecurityProvider>().getOldPasswordIsHidden();
                        },
                        child: context.watch<LoginAndSecurityProvider>().state.oldPasswordIsHidden
                            ? Icon(
                          Iconsax.eye_slash,
                          color: context.watch<LoginAndSecurityProvider>().state.oldPasswordController.text.isEmpty ||
                              context.watch<LoginAndSecurityProvider>().state.oldPasswordController.text.length > 8
                              ? AppColors.neutral400
                              : AppColors.neutral900,
                        )
                            : Icon(
                          Iconsax.eye,
                          color: context.watch<LoginAndSecurityProvider>().state.oldPasswordController.text.isEmpty ||
                              context.watch<LoginAndSecurityProvider>().state.oldPasswordController.text.length > 7
                              ? AppColors.neutral400
                              : AppColors.neutral900,
                        ),
                      ),
                      prefixIcon: Icon(
                        Iconsax.lock,
                        color: context.watch<LoginAndSecurityProvider>().state.oldPasswordController.text.isEmpty ||
                            context.watch<LoginAndSecurityProvider>().state.oldPasswordController.text.length > 7
                            ? AppColors.neutral400
                            : AppColors.neutral900,
                      ),
                    ),
                  ),
                ), // oldPassword

            const Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Enter your new password",
                  style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 60,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(bottom: 22, right: 23, left: 23),
              child: TextFormField(
                // onChanged: (password) {
                //   context.watch<LoginAndSecurityProvider>().state.newPasswordController.text = password;
                // },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                autocorrect: true,
                controller: context.watch<LoginAndSecurityProvider>().state.newPasswordController,
                obscureText: context.watch<LoginAndSecurityProvider>().state.newPasswordIsHidden,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary500),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.neutral400),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "New password",hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.neutral400),
                  suffixIcon: InkWell(
                    onTap: () {
                      context.read<LoginAndSecurityProvider>().getNewPasswordIsHidden();
                    },
                    child: context.watch<LoginAndSecurityProvider>().state.newPasswordIsHidden
                        ? Icon(
                      Iconsax.eye_slash,
                      color: context.watch<LoginAndSecurityProvider>().state.newPasswordController.text.isEmpty ||
                          context.watch<LoginAndSecurityProvider>().state.newPasswordController.text.length > 8
                          ? AppColors.neutral400
                          : AppColors.neutral900,
                    )
                        : Icon(
                      Iconsax.eye,
                      color: context.watch<LoginAndSecurityProvider>().state.newPasswordController.text.isEmpty ||
                          context.watch<LoginAndSecurityProvider>().state.newPasswordController.text.length > 7
                          ? AppColors.neutral400
                          : AppColors.neutral900,
                    ),
                  ),
                  prefixIcon: Icon(
                    Iconsax.lock,
                    color: context.watch<LoginAndSecurityProvider>().state.newPasswordController.text.isEmpty ||
                        context.watch<LoginAndSecurityProvider>().state.newPasswordController.text.length > 7
                        ? AppColors.neutral400
                        : AppColors.neutral900,
                  ),
                ),
              ),
            ), // oldPassword

            const Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Confirm your new password",
                  style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              height: 60,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(bottom: 22, right: 23, left: 23),
              child: TextFormField(
                // onChanged: (password) {
                //   context.watch<LoginAndSecurityProvider>().state.confirmPasswordController.text = password;
                // },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                autocorrect: true,
                controller: context.watch<LoginAndSecurityProvider>().state.confirmPasswordController,
                obscureText: context.watch<LoginAndSecurityProvider>().state.confirmPasswordIsHidden,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primary500),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder:OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.neutral400),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Confirm password",hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.neutral400),
                  suffixIcon: InkWell(
                    onTap: () {
                      context.read<LoginAndSecurityProvider>().getConfirmPasswordIsHidden();
                    },
                    child: context.watch<LoginAndSecurityProvider>().state.confirmPasswordIsHidden
                        ? Icon(
                      Iconsax.eye_slash,
                      color: context.watch<LoginAndSecurityProvider>().state.confirmPasswordController.text.isEmpty ||
                          context.watch<LoginAndSecurityProvider>().state.confirmPasswordController.text.length > 8
                          ? AppColors.neutral400
                          : AppColors.neutral900,
                    )
                        : Icon(
                      Iconsax.eye,
                      color: context.watch<LoginAndSecurityProvider>().state.confirmPasswordController.text.isEmpty ||
                          context.watch<LoginAndSecurityProvider>().state.confirmPasswordController.text.length > 7
                          ? AppColors.neutral400
                          : AppColors.neutral900,
                    ),
                  ),
                  prefixIcon: Icon(
                    Iconsax.lock,
                    color: context.watch<LoginAndSecurityProvider>().state.confirmPasswordController.text.isEmpty ||
                        context.watch<LoginAndSecurityProvider>().state.confirmPasswordController.text.length > 7
                        ? AppColors.neutral400
                        : AppColors.neutral900,
                  ),
                ),
              ),
            ), // oldPassword

                const SizedBox(
                  height: 320,
                ),
                SizedBox(
                  width: 345,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.primary500,
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 14)),
                    onPressed: () async {
                      context.read<LoginAndSecurityProvider>().onTapSaveNewPassword(context);
                    },
                    child: Text(
                      "Save",
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.neutral100,
                      ),
                    ),
                  ),
                ),
        ]),
      ),
    );
  }
}
