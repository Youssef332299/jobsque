import 'package:country_code_picker/country_code_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../Core/app_colors.dart';
import '../../../core/app_AppBar.dart';

class BioDataWidget extends StatelessWidget {
  const BioDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Apply Job', routeName: 'bottomNavigation',),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 840,
          width: double.infinity,
          child:
          Stack(
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
                      color: AppColors.primary500
                  ),
                ),
              ),
              Positioned(
                  top: 105,left: 35,
                  child: Icon(Iconsax.tick_circle,size: 70,color: AppColors.neutral100,)

              ),

              Positioned(
                  top: 150,left: 120,
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
                top: 110,
                left: 170,
                child: Container(
                  height: 60,
                  width: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      border: Border.all(width: 1.5,color: AppColors.neutral400),
                      // color: AppColors.primary500
                  ),
                  child: Text("2",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24,color: AppColors.neutral400),),
                ),
              ),

              Positioned(
                top: 150,left: 248,
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
                top: 110,
                left: 300,
                child: Container(
                  height: 60,
                  width: 60,
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
                top: 180,
                  child: Row(children: [
                    const SizedBox(width: 46,),
                    Text("Biodata",style: TextStyle(fontSize: 14,color: AppColors.primary500),),
                    const SizedBox(width: 67,),
                    Text("Type of work",style: TextStyle(fontSize: 14,color: AppColors.neutral900),),
                    const SizedBox(width: 40,),
                    Text("Upload portfolio",style: TextStyle(fontSize: 14,color: AppColors.neutral900),),
              ],)),

              Column(
                children: [
                  const SizedBox(height: 150,),
                  Row(children: [
                    const SizedBox(width: 25,),
                    Text("Biodata",style: TextStyle(fontWeight: FontWeight.w500,color: AppColors.neutral900,fontSize: 22),),
                  ],),
                  const SizedBox(height: 5,),
                  Row(children: [
                    const SizedBox(width: 25,),
                    Text("Fill in your bio data correctly",style: TextStyle(fontWeight: FontWeight.w500,color: AppColors.neutral400,fontSize: 16),),
                  ],),

                  const SizedBox(height: 30,),

                  const SizedBox(height: 10,),
                  Row(children: [
                    const SizedBox(width: 25,),
                    Text("Full Name",style: TextStyle(fontWeight: FontWeight.w400,color: AppColors.neutral900,fontSize: 16),),
                    Column(
                      children: [
                        Text("*",style: TextStyle(color: AppColors.danger500,fontSize: 17),),
                      ],
                    )

                  ],),
                  Container(
                    width: double.infinity,
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: AppColors.neutral400),
                    ),
                    margin:
                    const EdgeInsets.only(right: 25, left: 25,top: 15),
                    child: Container(
                      width: 310,
                      height: 60,
                      alignment: Alignment.center,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10,),
                  Row(children: [
                    const SizedBox(width: 25,),
                    Text("Email",style: TextStyle(fontWeight: FontWeight.w400,color: AppColors.neutral900,fontSize: 16),),
                    Column(
                      children: [
                        Text("*",style: TextStyle(color: AppColors.danger500,fontSize: 17),),
                      ],
                    )
                  ],),
                  Container(
                    width: double.infinity,
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: AppColors.neutral400),
                    ),
                    margin:
                    const EdgeInsets.only(right: 25, left: 25,top: 15),
                    child: Container(
                      width: 310,
                      height: 60,
                      alignment: Alignment.center,
                      child: TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10,),
                  Row(children: [
                    const SizedBox(width: 25,),
                    Text("No.Handphone",
                      style: TextStyle(fontWeight: FontWeight.w400,color: AppColors.neutral900,fontSize: 16),),
                    Column(
                      children: [
                        Text("*",style: TextStyle(color: AppColors.danger500,fontSize: 17),),
                      ],
                    )
                  ],),
                  Container(
                    width: double.infinity,
                    height: 60,
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: AppColors.neutral400),
                    ),
                    margin:
                    const EdgeInsets.only(right: 25, left: 25,top: 15),
                    child:
                    const TextField(
                      // onChanged: ,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        prefixIcon:
                        CountryCodePicker(
                          initialSelection: "EG",
                          showCountryOnly: false,
                          // dialogSize: Size(200, 500),
                          showOnlyCountryWhenClosed: false,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 145,),
                  SizedBox(
                    width: 345,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary500,
                          shape: const StadiumBorder(),
                          padding: const EdgeInsets.symmetric(vertical: 14)),
                      onPressed: () {
                        Navigator.of(context).pushNamed("typeOfWorkWidget");
                      },
                      child: Text("Save",style: TextStyle(fontSize: 18,color: AppColors.neutral100),),),
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
