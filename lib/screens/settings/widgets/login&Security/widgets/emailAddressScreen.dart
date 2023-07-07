import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../Core/app_colors.dart';
import '../provider/loginAndSecurityState.dart';

class EmailAddressScreen extends StatefulWidget {
  const EmailAddressScreen({super.key});

  @override
  State<EmailAddressScreen> createState() => _EmailAddressScreenState();
}

LoginAndSecurityState state = LoginAndSecurityState();

class _EmailAddressScreenState extends State<EmailAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("loginAndSecurity");
                    },
                    icon: const Icon(Iconsax.arrow_left)),

                const SizedBox(
                  width: 78,
                ),
                const Text(
                  "Email address",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),

            const SizedBox(
              height: 50,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Main e-mail address",
                  style: TextStyle(fontSize: 16,fontWeight:FontWeight.w500),
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
                border: Border.all(
                    color: state.email.isEmpty
                        ? AppColors.neutral400
                        : AppColors.primary500),
              ),
              margin: EdgeInsets.only(bottom: 22, right: 23, left: 23),
              child: TextFormField(
                onChanged: (Email) {
                  setState(() {
                    state.email = Email;
                  });
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your email....",
                  prefixIcon: Icon(Iconsax.sms,
                      color: state.email.isEmpty
                          ? AppColors.neutral400
                          : AppColors.neutral900),
                ),
              ),
            ), //
            const SizedBox(
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
            const SizedBox(
              height: 25,
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
                  Navigator.of(context).pushNamed("checkEmailScreen");
                },
                child: Text(
                  "Request password reset",
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
