import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../Core/app_colors.dart';
import '../provider/createAccountState.dart';


class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordScreenState();
}
CreateAccountState state = CreateAccountState();
//
// var newPassword = "";
// var confirmPassword = "";

class _CreatePasswordScreenState extends State<CreatePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              height: 40,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Create new password",
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
                  "Set your new password so you can login and ",
                  style: TextStyle(fontSize: 16, color: AppColors.neutral500),
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
                  "access Jobsque",
                  style: TextStyle(fontSize: 16, color: AppColors.neutral500),
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
                const SizedBox(
                  width: 26,
                ),
                Text(
                  "Passowrd must be at least 8 characters ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: AppColors.neutral400),
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
                    color: state.confirmPassword!.isEmpty
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
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Confirm password...",
                  prefixIcon: Icon(Iconsax.lock,
                      color: state.confirmPassword!.isEmpty
                          ? AppColors.neutral400
                          : AppColors.neutral900),
                ),
              ),
            ), //
            Row(
              children: [
                const SizedBox(
                  width: 26,
                ),
                Text(
                  "Both password must match",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: AppColors.neutral400),
                ),
              ],
            ),
            const SizedBox(
              height: 250,
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
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 345,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: state.confirmPassword == state.passwordController.text &&
                        state.confirmPassword!.isNotEmpty &&
                        state.passwordController.text.length > 7 &&
                        state.passwordController.text.isNotEmpty
                        ? AppColors.primary500
                        : AppColors.neutral200,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(vertical: 14)),
                onPressed: () {
                  if (state.confirmPassword == state.passwordController.text &&
                      state.passwordController.text.length > 7 &&
                      state.confirmPassword!.isNotEmpty &&
                      state.passwordController.text.isNotEmpty) {
                    Navigator.of(context).pushNamed("changedSuccessfully");
                  }
                },
                child: Text(
                  "Request password reset",
                  style: TextStyle(
                      fontSize: 18,
                      color: state.confirmPassword == state.passwordController.text &&
                          state.passwordController.text.length > 7 &&
                          state.confirmPassword!.isNotEmpty &&
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
