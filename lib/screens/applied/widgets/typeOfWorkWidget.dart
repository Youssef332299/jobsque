import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../Core/app_colors.dart';
import '../../../core/app_AppBar.dart';
import '../provider/appliedState.dart';

class TypeOfWorkWidget extends StatefulWidget {
  const TypeOfWorkWidget({super.key});

  @override
  State<TypeOfWorkWidget> createState() => _TypeOfWorkWidgetState();
}

AppliedState state = AppliedState();

class _TypeOfWorkWidgetState extends State<TypeOfWorkWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Saved', routeName: 'bioDataWidget',),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 840,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                top: 110,
                left: 40,
                child: Container(
                  height: 60,
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      // border: Border.all(width: 10,color: AppColors.neutral100),
                      color: AppColors.primary500),
                ),
              ),
              Positioned(
                  top: 105,
                  left: 35,
                  child: Icon(
                    Iconsax.tick_circle,
                    size: 70,
                    color: AppColors.neutral100,
                  )),
              Positioned(
                top: 150,
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
                    color: AppColors.primary500,
                    radius: const Radius.circular(10),
                    child: const SizedBox(),
                  ),
                ),
              ),
              Positioned(
                top: 110,
                left: 170,
                child: Container(
                  height: 60,
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(width: 1.5, color: AppColors.primary500),
                    // color: AppColors.primary500
                  ),
                  child: Text(
                    "2",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: AppColors.primary500),
                  ),
                ),
              ),
              Positioned(
                top: 150,
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
                top: 110,
                left: 300,
                child: Container(
                  height: 60,
                  width: 60,
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
                  top: 180,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 46,
                      ),
                      Text(
                        "Biodata",
                        style: TextStyle(
                            fontSize: 14, color: AppColors.primary500),
                      ),
                      const SizedBox(
                        width: 67,
                      ),
                      Text(
                        "Type of work",
                        style: TextStyle(
                            fontSize: 14, color: AppColors.primary500),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Text(
                        "Upload portfolio",
                        style: TextStyle(
                            fontSize: 14, color: AppColors.neutral900),
                      ),
                    ],
                  )),
              Column(
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
                            // Navigator.of(context).pushNamed("bottomNavigation");
                          },
                          icon: const Icon(Iconsax.arrow_left)),
                      const SizedBox(
                        width: 98,
                      ),
                      const Text(
                        "Apply Job",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Type of work",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.neutral900,
                            fontSize: 22),
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
                    height: 20,
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 85,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: state.jobTitle == "UX"
                                ? AppColors.primary100
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: state.jobTitle == "UX"
                                    ? AppColors.primary500
                                    : AppColors.neutral300),
                          ),
                          margin: const EdgeInsets.only(
                              right: 25, left: 25, top: 15),
                          child: RadioListTile(
                              value: state.jobTitle,
                              activeColor: AppColors.primary500,
                              groupValue: "UX",
                              title: Column(
                                children: [
                                  const SizedBox(
                                    height: 11,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 130,
                                      ),
                                      Text(
                                        "Senior UX Designer",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.neutral900),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 137,
                                      ),
                                      Text(
                                        "CV.pdf • Portfolio.pdf",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.neutral500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              selected: state.jobTitle == "UX" ? true : false,
                              onChanged: (val) {
                                setState(() {
                                  state.jobTitle = "UX";
                                });
                              }),
                        ),

                        Container(
                          width: double.infinity,
                          height: 85,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: state.jobTitle == "UI"
                                ? AppColors.primary100
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: state.jobTitle == "UI"
                                    ? AppColors.primary500
                                    : AppColors.neutral300),
                          ),
                          margin: const EdgeInsets.only(
                              right: 25, left: 25, top: 15),
                          child: RadioListTile(
                              value: state.jobTitle,
                              activeColor: AppColors.primary500,
                              groupValue: "UI",
                              title: Column(
                                children: [
                                  const SizedBox(
                                    height: 11,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 136,
                                      ),
                                      Text(
                                        "Senior UI Designer",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.neutral900),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 137,
                                      ),
                                      Text(
                                        "CV.pdf • Portfolio.pdf",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.neutral500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              selected: state.jobTitle == "UI" ? true : false,
                              onChanged: (val) {
                                setState(() {
                                  state.jobTitle = "UI";
                                });
                              }),
                        ),

                        Container(
                          width: double.infinity,
                          height: 85,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: state.jobTitle == "Gr"
                                ? AppColors.primary100
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: state.jobTitle == "Gr"
                                    ? AppColors.primary500
                                    : AppColors.neutral300),
                          ),
                          margin: const EdgeInsets.only(
                              right: 25, left: 25, top: 15),
                          child: RadioListTile(
                              value: state.jobTitle,
                              activeColor: AppColors.primary500,
                              groupValue: "Gr",
                              title: Column(
                                children: [
                                  const SizedBox(
                                    height: 11,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 145,
                                      ),
                                      Text(
                                        "Graphik Designer",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.neutral900),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 137,
                                      ),
                                      Text(
                                        "CV.pdf • Portfolio.pdf",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.neutral500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              selected: state.jobTitle == "Gr" ? true : false,
                              onChanged: (val) {
                                setState(() {
                                  state.jobTitle = "Gr";
                                });
                              }),
                        ),

                        Container(
                          width: double.infinity,
                          height: 85,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: state.jobTitle == "Dev"
                                ? AppColors.primary100
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: state.jobTitle == "Dev"
                                    ? AppColors.primary500
                                    : AppColors.neutral300),
                          ),
                          margin: const EdgeInsets.only(
                              right: 25, left: 25, top: 15),
                          child: RadioListTile(
                              value: state.jobTitle,
                              activeColor: AppColors.primary500,
                              groupValue: "Dev",
                              title: Column(
                                children: [
                                  const SizedBox(
                                    height: 11,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 123,
                                      ),
                                      Text(
                                        "Front-End Developer",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.neutral900),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 137,
                                      ),
                                      Text(
                                        "CV.pdf • Portfolio.pdf",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.neutral500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              selected: state.jobTitle == "Dev" ? true : false,
                              onChanged: (val) {
                                setState(() {
                                  state.jobTitle = "Dev";
                                });
                              }),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(height: 75,),
                  SizedBox(
                    width: 345,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary500,
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.symmetric(vertical: 14)),
                      onPressed: () {
                        Navigator.of(context).pushNamed("uploadPortfolioWidget");
                      },
                      child: Text(
                        "Save",
                        style: TextStyle(
                            fontSize: 18, color: AppColors.neutral100),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
