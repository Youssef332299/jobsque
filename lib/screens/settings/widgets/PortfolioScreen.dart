import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/screens/settings/provider/profileProvider.dart';
import 'package:provider/provider.dart';
import '../../../Core/app_colors.dart';


class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {

  @override
  void initState() {
    super.initState();
    context.read<ProfileProvider>().fill_isEditing_list(context);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: 840,
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
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Iconsax.arrow_left)),
                  const SizedBox(
                    width: 102,
                  ),
                  const Text(
                    "Portfolio",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Add portfolio here",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
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
                  dashPattern: const [3.3,3.3],
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
                              onPressed: (){},
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
                          context.read<ProfileProvider>().addNewFile(context);
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

              Expanded(
                child: SizedBox(
                  height: 500,
                  child: ListView.builder(
                      itemCount: context.watch<ProfileProvider>().state.pdfFilesList.length,
                      itemBuilder: (context, i) {
                        return Container(
                          height: 75,
                          width: double.infinity,
                          margin: const EdgeInsets.only(
                              bottom: 18, left: 27, right: 27),
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
                                        context.watch<ProfileProvider>().state.isEditing[i]
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
                                            controller: context.watch<ProfileProvider>().state.edit_CV_NameController,
                                            onEditingComplete: () {
                                              context.read<ProfileProvider>().
                                              saveCV_editing(Provider.of<ProfileProvider>(context, listen: false).state.edit_CV_NameController.text, i);
                                            },
                                          ),
                                        )
                                            : SizedBox(
                                          height: 15,
                                          width: 100,
                                          child: Text(
                                            context.watch<ProfileProvider>().state.pdfFilesList[i]["name"],
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                                color: AppColors.neutral900),
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
                                          'CV.pdf ${context.watch<ProfileProvider>().state.pdfFilesList[i]["size"]}KB',
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
                                  context.read<ProfileProvider>().onTapEditCV_name(i);
                                },
                                child: Icon(Iconsax.edit_2,
                                    color: AppColors.primary500),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              InkWell(
                                  onTap: () {
                                    context.read<ProfileProvider>().deleteFile(Provider.of<ProfileProvider>
                                      (context, listen: false).state.pdfFilesList[i],i);
                                  },
                                  child: Icon(Iconsax.close_circle,
                                      color: AppColors.danger500)),
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}