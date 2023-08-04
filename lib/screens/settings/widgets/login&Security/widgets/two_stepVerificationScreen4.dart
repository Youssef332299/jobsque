import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/core/app_AppBar.dart';
import 'package:jobsque/screens/settings/provider/profileProvider.dart';
import 'package:provider/provider.dart';
import '../../../../../Core/app_colors.dart';
import '../provider/LoginAndSecurityProvider.dart';


// ignore: camel_case_types
class Two_stepVerificationScreen4 extends StatelessWidget {
  const Two_stepVerificationScreen4 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Two-step verification', routeName: 'two_stepVerification3',),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Add phone number",
                  style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500),
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
                  "We will send a verification code to this number",
                  style: TextStyle(fontSize: 14,fontWeight:FontWeight.w400,color: AppColors.neutral500),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              margin: const EdgeInsets.only(bottom: 22, right: 23, left: 23),
              child: TextFormField(
                controller: context.watch<ProfileProvider>().state.mobileController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (value){
                  context.watch<ProfileProvider>().state.mobileController.text = value;
                },
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
                  prefixIcon: const CountryCodePicker(
                    initialSelection: "EG",
                    showCountryOnly: false,
                    // dialogSize: Size(200, 500),
                    showOnlyCountryWhenClosed: false,
                  ),
                ),
              ),
            ),

            const Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Enter your password",
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
                controller: context.watch<LoginAndSecurityProvider>().state.checkPasswordController,
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
                  hintText: "Password",hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.neutral400),
                  suffixIcon: InkWell(
                    onTap: () {
                      context.read<LoginAndSecurityProvider>().getOldPasswordIsHidden();
                    },
                    child: context.watch<LoginAndSecurityProvider>().state.oldPasswordIsHidden
                        ? Icon(
                      Iconsax.eye_slash,
                      color: context.watch<LoginAndSecurityProvider>().state.checkPasswordController.text.isEmpty ||
                          context.watch<LoginAndSecurityProvider>().state.checkPasswordController.text.length > 8
                          ? AppColors.neutral400
                          : AppColors.neutral900,
                    )
                        : Icon(
                      Iconsax.eye,
                      color: context.watch<LoginAndSecurityProvider>().state.checkPasswordController.text.isEmpty ||
                          context.watch<LoginAndSecurityProvider>().state.checkPasswordController.text.length > 8
                          ? AppColors.neutral400
                          : AppColors.neutral900,
                    ),
                  ),
                  prefixIcon: Icon(
                    Iconsax.lock,
                    color: context.watch<LoginAndSecurityProvider>().state.checkPasswordController.text.isEmpty ||
                        context.watch<LoginAndSecurityProvider>().state.checkPasswordController.text.length > 8
                        ? AppColors.neutral400
                        : AppColors.neutral900,
                  ),
                ),
              ),
            ), // oldPassword

            const SizedBox(
              height: 375,
            ),

            SizedBox(
              width: 345,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary500,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(vertical: 14)),
                onPressed: () {
                  context.read<LoginAndSecurityProvider>().sendCode(context);
                },
                child: Text(
                  "Send Code",
                  style: TextStyle(fontSize: 18, color: AppColors.neutral100),
                ),
              ),
            ), // Email
          ],
        ),
      ),
    );
  }
}


