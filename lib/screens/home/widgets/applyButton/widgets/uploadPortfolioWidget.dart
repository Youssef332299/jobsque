import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import '../../../../../Core/app_colors.dart';
import '../../../../../core/app_AppBar.dart';
import '../provider/applyNowProvider.dart';

class UploadPortfolioWidget extends StatefulWidget {
  const UploadPortfolioWidget({super.key});

  @override
  State<UploadPortfolioWidget> createState() => _UploadPortfolioWidgetState();
}

class _UploadPortfolioWidgetState extends State<UploadPortfolioWidget> {
  @override
  void initState() {
    super.initState();
    context.read<ApplyNowProvider>().getPortfolio(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        title: 'Apply Job',
        routeName: 'typeOfWorkWidget',
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 770,
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
                    color: AppColors.primary500,
                    radius: const Radius.circular(10),
                    child: const SizedBox(),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 175,
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
                  left: 170,
                  child: Icon(
                    Iconsax.tick_circle,
                    size: 60,
                    color: AppColors.neutral100,
                  )),
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
                    color: AppColors.primary500,
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
                            color: AppColors.primary400,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 47,
                      ),
                      Text(
                        "Upload portfolio",
                        style: TextStyle(
                            fontSize: 12,
                            color: AppColors.primary500,
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
                        "Upload portfolio",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.neutral900,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 25,
                      ),
                      Text(
                        " Fill in your bio data correctly",
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
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.danger500,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 100,
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(
                          bottom: 25, left: 27, right: 27),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.neutral300, width: 1.4),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 22,
                          ),
                          Image.asset(
                            "assets/images/Pdf/pdf1.jpg",
                            scale: 8.3,
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
                                    context.watch<ApplyNowProvider>().state.isEditing
                                        ? SizedBox(
                                      height: 20,
                                      width: 160,
                                          child: TextFormField(
                                            decoration: const InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                            ),
                                              autofocus: true,
                                              // showCursor: true,
                                              controller: context.watch<ApplyNowProvider>().state.edit_CV_NameController,
                                              onEditingComplete: () {
                                                context.read<ApplyNowProvider>().saveCV_editing();
                                              },
                                            ),
                                        )
                                        : SizedBox(
                                      height: 15,width: 100,
                                          child: Text("${context.watch<ApplyNowProvider>().state.portfolioChocinData["name"]}",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  color: AppColors.neutral500),
                                            ),
                                        ),
                                  ],
                                ),
                                const SizedBox(height: 7),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      'CV.pdf ${context.watch<ApplyNowProvider>().state.portfolioChocinData["size"]}KB',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: AppColors.neutral500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              context.read<ApplyNowProvider>().onTapEditCV_name();
                            },
                            child: Icon(Iconsax.edit_2,
                                color: AppColors.primary500),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed("typeOfWorkWidget");
                              },
                              child: Icon(Iconsax.close_circle,
                                  color: AppColors.danger500)),
                        ],
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Other File",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),


                  Container(
                    alignment: context.watch<ApplyNowProvider>().state.otherFile.isEmpty
                    ? Alignment.center
                    : Alignment.topCenter,
                    height: 242,
                    width: context.watch<ApplyNowProvider>().state.otherFile.isEmpty
                    ? 332
                    : double.infinity,
                    child: context.watch<ApplyNowProvider>().state.otherFile.isEmpty
                    ? Container(
                      height: 240,
                      width: 330,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: HexColor("#ECF2FF"),
                      ),
                      child: DottedBorder(
                        strokeWidth: 2,
                        borderType: BorderType.RRect,
                        dashPattern: const [3.3, 3.3],
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
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Iconsax.document_upload5,
                                        color: AppColors.primary500,
                                        size: 35,
                                      ))),
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
                                context.read<ApplyNowProvider>().getOtherFile(context);
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
                    )
                    : Container(
                        height: 80,
                        margin: const EdgeInsets.only(
                            bottom: 25, left: 27, right: 27),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.neutral300, width: 1.4),
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 22,
                            ),
                            Image.asset(
                              "assets/images/Pdf/pdf1.jpg",
                              scale: 8.3,
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
                                      context.watch<ApplyNowProvider>().state.otherIsEditing
                                          ? SizedBox(
                                              height: 20,
                                              width: 160,
                                                child: TextFormField(
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            enabledBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            disabledBorder: InputBorder.none,
                                          ),
                                          autofocus: true,
                                          // showCursor: true,
                                          controller: context.watch<ApplyNowProvider>().state.edit_otherFileController,
                                          onEditingComplete: () {
                                            context.read<ApplyNowProvider>().saveOtherFile_editing();
                                          },
                                        ),
                                      )
                                          : SizedBox(
                                        height: 15,width: 100,
                                        child: Text("${context.watch<ApplyNowProvider>().state.otherFile["name"]}",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: AppColors.neutral500),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 7),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Text(
                                        'CV.pdf ${context.watch<ApplyNowProvider>().state.otherFile["size"]}KB',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                            color: AppColors.neutral500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                context.read<ApplyNowProvider>().onTapEditOtherFile_name();
                              },
                              child: Icon(Iconsax.edit_2,
                                  color: AppColors.primary500),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            InkWell(
                                onTap: () {
                                  context.read<ApplyNowProvider>().removeOtherFile();
                                },
                                child: Icon(Iconsax.close_circle,
                                    color: AppColors.danger500)),
                          ],
                        ),
                      ),
                    ),


                  const SizedBox(
                    height: 50,
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
                        context.read<ApplyNowProvider>().submit(context);
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
