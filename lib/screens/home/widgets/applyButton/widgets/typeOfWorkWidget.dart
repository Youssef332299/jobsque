import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/screens/home/widgets/applyButton/provider/applyNowProvider.dart';
import 'package:provider/provider.dart';
import '../../../../../Core/app_colors.dart';
import '../../../../../core/app_AppBar.dart';
import '../../../../settings/provider/profileProvider.dart';



class TypeOfWorkWidget extends StatefulWidget {
  const TypeOfWorkWidget({super.key});

  @override
  State<TypeOfWorkWidget> createState() => _TypeOfWorkWidgetState();
}

class _TypeOfWorkWidgetState extends State<TypeOfWorkWidget> {

@override
  void initState() {
    super.initState();
    context.read<ApplyNowProvider>().fill_radio_list(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Apply Job', routeName: 'bioDataWidget',),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 760,
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
                    color: AppColors.primary500
                ),
              ),
            ),
              Positioned(
                  top: 25,
                  left: 40,
                  child: Icon(Iconsax.tick_circle,size: 60,color: AppColors.neutral100,)
              ),

              Positioned(
                top: 70,
                left: 120,
                child: Container(
                  height: 0,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor("#ECF2FF"),),
                  child: DottedBorder(
                    strokeWidth: 1.7,
                    borderType: BorderType.RRect,
                    dashPattern: const [3.0,3.9],
                    color: AppColors.primary500,
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
                    border: Border.all(width: 1.5,color: AppColors.primary500),
                    // color: AppColors.primary500
                  ),
                  child: Text("2",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24,color: AppColors.primary500),),
                ),
              ),

              Positioned(
                top: 70,left: 248,
                child: Container(
                  height: 0,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: HexColor("#ECF2FF"),),
                  child: DottedBorder(
                    strokeWidth: 1.7,
                    borderType: BorderType.RRect,
                    dashPattern: const [3.0,3.9],
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
                    border: Border.all(width: 1.5,color: AppColors.neutral400),
                    // color: AppColors.primary500
                  ),
                  child: Text("3",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24,color: AppColors.neutral400),),
                ),
              ),

              Positioned(
                  top: 100,
                  child: Row(children: [
                    const SizedBox(width: 50,),
                    Text("Biodata",style: TextStyle(fontSize: 12,color: AppColors.primary500, fontWeight: FontWeight.w400),),
                    const SizedBox(width: 72,),
                    Text("Type of work",style: TextStyle(fontSize: 12,color: AppColors.primary400, fontWeight: FontWeight.w400),),
                    const SizedBox(width: 47,),
                    Text("Upload portfolio",style: TextStyle(fontSize: 12,color: AppColors.neutral900, fontWeight: FontWeight.w400),),
                  ],)),

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
                        "Type of work",
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
                    height: 20,
                  ),
                  const SizedBox(height: 15,),
                    SizedBox(
                      height: 455,
                      child: ListView.builder(
                            itemCount: context.watch<ProfileProvider>().state.pdfFilesList.length,
                            itemBuilder: (context, i) {
                              return InkWell(
                                onTap: (){
                                  context.read<ApplyNowProvider>().onTapRadio(i,
                                      Provider.of<ProfileProvider>(context, listen: false).state.pdfFilesList[i]);
                                },
                                child: Container(
                                  height: 85,
                                  width: double.infinity,
                                  margin: const EdgeInsets.only(
                                      bottom: 18, left: 25, right: 25),
                                  decoration: BoxDecoration(
                                      color: context.watch<ApplyNowProvider>().state.radio[i]
                                          ?AppColors.primary100
                                          :Colors.white,
                                      border: Border.all(
                                          color: context.watch<ApplyNowProvider>().state.radio[i]
                                              ?AppColors.primary500
                                              :AppColors.neutral300,
                                          width: 1.4),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 210,
                                        child: Column(
                                          children: [
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                const SizedBox(
                                                  width: 13,
                                                ),
                                                SizedBox(
                                                  height: 17,
                                                  width: 140,
                                                  child: Text(
                                                    context.watch<ProfileProvider>().state.pdfFilesList[i]["name"],
                                                    style: TextStyle(
                                                        fontWeight: FontWeight.w500,
                                                        fontSize: 16,
                                                        color: AppColors.neutral900),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(height: 15),
                                            Row(
                                              children: [
                                                const SizedBox(
                                                  width: 13,
                                                ),
                                                // Text(state.fileList[i]["name"],style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: AppColors.neutral500),),
                                                Text(
                                                  'CV.pdf • Portfolio.pdf',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 13,
                                                      color: AppColors.neutral500),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 90,),
                                      Container(
                                        height: 19,
                                        width: 19,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: context.watch<ApplyNowProvider>().state.radio[i]
                                              ?AppColors.primary500
                                              :AppColors.neutral400,
                                          ),
                                          borderRadius: BorderRadius.circular(18),),
                                        child: Container(
                                          height: 13,
                                          width: 13,
                                          decoration: BoxDecoration(
                                              color: context.watch<ApplyNowProvider>().state.radio[i]
                                                  ?AppColors.primary500
                                                  :Colors.white,
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                  const SizedBox(height: 5,),
                  SizedBox(
                    width: 345,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary500,
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.symmetric(vertical: 14)),
                      onPressed: () {
                        context.read<ApplyNowProvider>().onTapNext_type_of_work(context);
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
        ),
      ),
    );
  }
}
