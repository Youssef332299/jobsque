import 'package:country_code_picker/country_code_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/screens/applied/provider/appliedProvider.dart';
import 'package:jobsque/screens/home/provider/homeProvder.dart';
import 'package:provider/provider.dart';
import '../../../../../Core/app_colors.dart';
import '../../auth/provider/createAccountProvider.dart';
import '../../home/widgets/applyButton/provider/applyNowProvider.dart';


class AppliedBioData extends StatelessWidget {
  const AppliedBioData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 9,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("applied");
                    },
                    icon: const Icon(Iconsax.arrow_left)),
                const SizedBox(
                  width: 90,
                ),
                const Text(
                  "Applied Job",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),

            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/twitte/twitte6.png",
              scale: 10,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "${context.watch<AppliedProvider>().state.jobDetails[
                Provider.of<AppliedProvider>(context, listen: false).state.index]["job_level"]}"
                  " ${context.watch<AppliedProvider>().state.jobDetails[
              Provider.of<AppliedProvider>(context, listen: false).state.index]["name"]}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: 180,
              height: 45,
              child: Text(
                "${context.watch<AppliedProvider>().state.jobDetails[
                Provider.of<AppliedProvider>(context, listen: false).state.index]["location"]}",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: AppColors.neutral500),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 730,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    left: 45,
                    child: Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          // border: Border.all(width: 10,color: AppColors.neutral100),
                          color: AppColors.primary500),
                    ),
                  ),
                  Positioned(
                      top: 25,
                      left: 40,
                      child: Icon(
                        Iconsax.tick_circle,
                        size: 60,
                        color: AppColors.neutral100,
                      )),
                  Positioned(
                    top: 70,
                    left: 120,
                    child: Container(
                      height: 0,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor("#ECF2FF"),
                      ),
                      child: DottedBorder(
                        strokeWidth: 1.7,
                        borderType: BorderType.RRect,
                        dashPattern: const [3.0, 3.9],
                        color: AppColors.neutral300,
                        radius: const Radius.circular(10),
                        child: const SizedBox(),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 170,
                    child: Container(
                      height: 55,
                      width: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(width: 1.5, color: AppColors.neutral400),
                        // color: AppColors.primary500
                      ),
                      child: Text(
                        "2",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: AppColors.neutral400),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 248,
                    child: Container(
                      height: 0,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor("#ECF2FF"),
                      ),
                      child: DottedBorder(
                        strokeWidth: 1.7,
                        borderType: BorderType.RRect,
                        dashPattern: const [3.0, 3.9],
                        color: AppColors.neutral300,
                        radius: const Radius.circular(10),
                        child: const SizedBox(),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 295,
                    child: Container(
                      height: 55,
                      width: 55,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(width: 1.5, color: AppColors.neutral400),
                        // color: AppColors.primary500
                      ),
                      child: Text(
                        "3",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: AppColors.neutral400),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 100,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 50,
                          ),
                          Text(
                            "Biodata",
                            style: TextStyle(
                                fontSize: 12,
                                color: AppColors.primary500,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            width: 72,
                          ),
                          Text(
                            "Type of work",
                            style: TextStyle(
                                fontSize: 12,
                                color: AppColors.neutral900,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            width: 47,
                          ),
                          Text(
                            "Upload portfolio",
                            style: TextStyle(
                                fontSize: 12,
                                color: AppColors.neutral900,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      )),
                  Column(
                    children: [
                      const SizedBox(
                        height: 150,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 25,
                          ),
                          Text(
                            "Biodata",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColors.neutral900,
                                fontSize: 20),
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
                            "Fill in your bio data correctly",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: AppColors.neutral400,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 25,
                          ),
                          Text(
                            "Full Name",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.neutral900,
                                fontSize: 16),
                          ),
                          Column(
                            children: [
                              Text(
                                "*",
                                style: TextStyle(
                                    color: AppColors.danger500, fontSize: 17),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.neutral400),
                        ),
                        margin: const EdgeInsets.only(right: 25, left: 25, top: 15),
                        child: TextFormField(
                          controller: context
                              .watch<ApplyNowProvider>()
                              .state
                              .usernameController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.frame_1),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 25,
                          ),
                          Text(
                            "Email",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.neutral900,
                                fontSize: 16),
                          ),
                          Column(
                            children: [
                              Text(
                                "*",
                                style: TextStyle(
                                    color: AppColors.danger500, fontSize: 17),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.neutral400),
                        ),
                        margin: const EdgeInsets.only(right: 25, left: 25, top: 15),
                        child: TextFormField(
                          controller: context
                              .watch<CreateAccountProvider>()
                              .state
                              .emailController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.sms),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 25,
                          ),
                          Text(
                            "No.Handphone",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.neutral900,
                                fontSize: 16),
                          ),
                          Column(
                            children: [
                              Text(
                                "*",
                                style: TextStyle(
                                    color: AppColors.danger500, fontSize: 17),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 60,
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.neutral400),
                        ),
                        margin: const EdgeInsets.only(right: 25, left: 25, top: 15),
                        child: TextField(
                          controller: context
                              .watch<ApplyNowProvider>()
                              .state
                              .phoneController,
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            prefixIcon: CountryCodePicker(
                              initialSelection: "EG",
                              showCountryOnly: false,
                              // dialogSize: Size(200, 500),
                              showOnlyCountryWhenClosed: false,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 120,
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
                            context.read<AppliedProvider>().onTapNext_bio_data(context);
                          },
                          child: Text(
                            "Next",
                            style: TextStyle(
                                fontSize: 18, color: AppColors.neutral100),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}