import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';
import '../../../Core/app_colors.dart';
import '../../../Core/routes.dart';
import '../provider/createAccountState.dart';


class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}
CreateAccountState state = CreateAccountState();

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                SizedBox(width: 1.w),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(Routes.login);
                    },
                    icon: const Icon(Iconsax.arrow_left)),
                SizedBox(
                  width: 58.w,
                ),
                SizedBox(
                  width: 25.w,
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
                  "Create new password",
                  style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 1.5.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "Set your new password so you can login and ",
                  style: TextStyle(fontSize: 13.sp, color: AppColors.neutral500),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  "access Jobsque",
                  style: TextStyle(fontSize: 13.sp, color: AppColors.neutral500),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: state.passwordController.text.isEmpty
                        ? AppColors.neutral400
                        : AppColors.primary500),
              ),
              margin: const EdgeInsets.only(bottom: 10, right: 23, left: 23, top: 45),
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    state.passwordController.text = value;
                  });
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type new password...",
                  prefixIcon: Icon(Iconsax.lock,
                      color: state.passwordController.text.isEmpty
                          ? AppColors.neutral400
                          : AppColors.neutral900),
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  "Passowrd must be at least 8 characters ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11.sp,
                      color: AppColors.neutral400),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 7.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: state.confirmPassword.isEmpty
                        ? AppColors.neutral400
                        : AppColors.primary500),
              ),
              margin: const EdgeInsets.only(bottom: 10, right: 23, left: 23, top: 21),
              child: TextFormField(
                onChanged: (value) {
                  setState(() {
                    state.confirmPassword = value;
                  });
                },
                onEditingComplete: () => FocusScope.of(context).unfocus(),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Confirm password...",
                  prefixIcon: Icon(Iconsax.lock,
                      color: state.confirmPassword.isEmpty
                          ? AppColors.neutral400
                          : AppColors.neutral900),
                ),
              ),
            ), //
            Row(
              children: [
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  "Both password must match",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 11.sp,
                      color: AppColors.neutral400),
                ),
              ],
            ),
            SizedBox(
              height: 33.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                Text("You remember your password ",
                    style:
                        TextStyle(fontSize: 10.sp, color: AppColors.neutral400)),
                InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed("login");
                    },
                    child: Text(
                      "LogIn",
                      style: TextStyle(fontSize: 10.sp, color: Colors.blue),
                    )),
              ],
            ),
            SizedBox(
              height: 2.6.h,
            ),
            SizedBox(
              width: 86.w,
              height: 6.h,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: state.confirmPassword == state.passwordController.text &&
                        state.confirmPassword.isNotEmpty &&
                        state.passwordController.text.length > 7 &&
                        state.passwordController.text.isNotEmpty
                        ? AppColors.primary500
                        : AppColors.neutral200,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(vertical: 14)),
                onPressed: () {
                  if (state.confirmPassword == state.passwordController.text &&
                      state.passwordController.text.length > 7 &&
                      state.confirmPassword.isNotEmpty &&
                      state.passwordController.text.isNotEmpty) {
                    Navigator.of(context).pushNamed("changedSuccessfully");
                  }
                },
                child: Text(
                  "Request password reset",
                  style: TextStyle(
                      fontSize: 13.sp,
                      color: state.confirmPassword == state.passwordController.text &&
                          state.passwordController.text.length > 7 &&
                          state.confirmPassword.isNotEmpty &&
                          state.passwordController.text.isNotEmpty
                          ? AppColors.neutral100
                          : AppColors.neutral400),
                ),
              ),
            ), // Email
          ],
        ),
      ),
    );
  }
}
