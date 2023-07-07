import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../Core/app_colors.dart';
import '../../../core/app_AppBar.dart';

class UploadPortfolioWidget extends StatelessWidget {
  const UploadPortfolioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Saved', routeName: 'typeOfWorkWidget',),
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
                      // border: Border.all(width: 10,color: AppColors.neutral100),
                      color: AppColors.primary500),
                ),
              ),
              Positioned(
                  top: 105,
                  left: 165,
                  child: Icon(
                    Iconsax.tick_circle,
                    size: 70,
                    color: AppColors.neutral100,
                  )),
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
                    color: AppColors.primary500,
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
                    border: Border.all(width: 1.5, color: AppColors.primary500),
                    // color: AppColors.primary500
                  ),
                  child: Text(
                    "3",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 24,
                        color: AppColors.primary500),
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
                            fontSize: 14, color: AppColors.primary500),
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
                            Navigator.of(context).pushNamed("typeOfWorkWidget");
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
                        "Upload portfolio",
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
                    height: 30,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Upload CV",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.neutral900,
                            fontSize: 16),
                      ),
                      Text(
                        "*",
                        style:
                            TextStyle(color: AppColors.danger500, fontSize: 17),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    height: 85,
                    width: double.infinity,
                    margin:
                        const EdgeInsets.only(bottom: 18, left: 27, right: 27),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: AppColors.neutral300, width: 1.4),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Image.asset(
                          "assets/images/Pdf/pdf1.jpg",
                          scale: 7.2,
                        ),
                        SizedBox(
                          width: 210,
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 18,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  // Text(state.fileList[i]["name"],style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: AppColors.neutral900),),
                                  Column(
                                    children: [
                                      const SizedBox(height: 5,),
                                      Text(
                                        'UI/UX Designer',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: AppColors.neutral900),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 7),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  // Text(state.fileList[i]["name"],style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: AppColors.neutral500),),
                                  Text(
                                    'CV.pdf 300KB',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: AppColors.neutral500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // state.editFile(state.fileList[i]["name"]);
                          },
                          child:
                              Icon(Iconsax.edit_2, color: AppColors.primary500),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        InkWell(
                            onTap: () {
                              // state.deleteFile(state.fileList[i]);
                            },
                            child: Icon(Iconsax.close_circle,
                                color: AppColors.danger500)),
                      ],
                    ),
                  ),

                  Row(
                    children: [
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Other File",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.neutral900,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  Container(
                    height: 240,
                    width: 330,
                    // margin: const EdgeInsets.only(right: 27, left: 27, top: 30),
                    decoration: BoxDecoration(
                      // border: Border.all(color: AppColors.primary500),
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor("#ECF2FF"),
                    ),
                    child: DottedBorder(
                      strokeWidth: 2,
                      borderType: BorderType.RRect,
                      dashPattern: [3.3,3.3],
                      color: AppColors.primary500,
                      radius: const Radius.circular(10),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: AppColors.primary100,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(
                                  Iconsax.document_upload5,
                                  color: AppColors.primary500,
                                  size: 35,
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text("Upload your other file",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              )),
                          const SizedBox(
                            height: 12,
                          ),
                          Text("Max. file size 10 MB",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: AppColors.neutral500)),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              // state.addNewFile(context);
                            },
                            child: Container(
                              height: 45,
                              margin: const EdgeInsets.all(17),
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColors.primary500),
                                borderRadius: BorderRadius.circular(40),
                                color: AppColors.primary100,
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 110,
                                  ),
                                  Icon(Iconsax.export_1,
                                      color: AppColors.primary500),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Text("Add file",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: AppColors.primary500)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 40,
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
                        Navigator.of(context).pushNamed("applySuccesfullyWidget");
                      },
                      child: Text(
                        "Submit",
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
