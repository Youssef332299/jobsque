import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/screens/settings/provider/profileProvider.dart';
import 'package:provider/provider.dart';
import '../../../../../Core/app_colors.dart';


class PhoneNumberScreen extends StatelessWidget {
  const PhoneNumberScreen({super.key});

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
                  "Phone number",
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
                  "Main phone number",
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
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                 Text(
                  "Use the phone number to reset your\npassword",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14,color: AppColors.neutral400),
                ),
                const SizedBox(
                  width: 60,
                ),
                CupertinoSwitch(
                    value: context.watch<ProfileProvider>().state.useIt,
                    onChanged: (value) {
                      context.read<ProfileProvider>().usePhoneToResetPassword(value);
                    },
                    trackColor: AppColors.neutral300,
                    activeColor: AppColors.primary500,
                    thumbColor: context.watch<ProfileProvider>().state.useIt
                        ? AppColors.primary100
                        : AppColors.neutral100),
              ],
            ),

            const SizedBox(
              height: 480,
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
                  context.read<ProfileProvider>().onPhoneChangedComplete(context);
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
