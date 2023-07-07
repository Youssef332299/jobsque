import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import '../../../../../Core/app_colors.dart';
import '../provider/LoginAndSecurityProvider.dart';
import '../provider/loginAndSecurityState.dart';

class EmailAddressScreen extends StatelessWidget {
  const EmailAddressScreen({super.key});

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
              height: 15,
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
                controller: context.watch<LoginAndSecurityProvider>().state.emailChangedController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onChanged: (value){
                  context.watch<LoginAndSecurityProvider>().state.emailFocus = true;
                  context.watch<LoginAndSecurityProvider>().state.emailChangedController.text = value;
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
                  hintText: "Enter your email....",
                  prefixIcon: Icon(Iconsax.sms,
                      color: !context.watch<LoginAndSecurityProvider>().state.emailFocus
                          ? AppColors.neutral400
                          : AppColors.neutral900),
                ),
              ),
            ), //
            const SizedBox(
              height: 520,
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
                  context.read<LoginAndSecurityProvider>().onEmailChangedComplete(context);
                },
                child: Text(
                  "Save",
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

