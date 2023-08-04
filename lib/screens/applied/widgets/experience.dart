import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/core/app_AppBar.dart';
import 'package:jobsque/screens/applied/provider/appliedProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../Core/app_colors.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(routeName: "completeProfile", title: 'Experience',),
      body: SingleChildScrollView(
        child: Column(
            children: [
              const SizedBox(height: 20,),
              Center(
                child: Container(
                  height: 81.h,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.neutral300),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 2.h,),
                      Row(
                        children: [
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            "Position *",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.neutral400,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 6.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.neutral400),
                        ),
                        margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
                        child: Container(
                          alignment: Alignment.center,
                          child: Container(
                            margin: const EdgeInsets.only(left: 20,right: 20),
                            child: TextFormField(
                              controller: context.watch<AppliedProvider>().state.positionController,
                              style: Theme.of(context).textTheme.labelLarge,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      Row(
                        children: [
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            "Type of work",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.neutral400,
                                fontSize: 16),
                          ),
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
                        margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
                        child: Container(
                          width: 81.w,
                          height: 6.h,
                          alignment: Alignment.center,
                          child: Container(
                            margin: const EdgeInsets.only(left: 20,right: 20),
                            child: DropdownButtonFormField(
                              isExpanded: true,
                              isDense: true,
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: AppColors.neutral600,
                                  fontWeight: FontWeight.w500),
                              value: context.watch<AppliedProvider>().state.chosenItem,
                              decoration:
                              const InputDecoration(border: InputBorder.none),
                              icon: const Icon(Iconsax.arrow_down_14),
                              items: const [
                                DropdownMenuItem(
                                  value: 0,
                                  child: Text(
                                    "Full Time",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: 1,
                                  child: Text("Remote",
                                      style: TextStyle(fontSize: 16)),
                                ),
                                DropdownMenuItem(
                                  value: 2,
                                  child: Text("Post date",
                                      style: TextStyle(fontSize: 16)),
                                ),
                                DropdownMenuItem(
                                  value: 2,
                                  child: Text("Part",
                                      style: TextStyle(fontSize: 16)),
                                ),
                              ],
                              onChanged: (value) {
                                context.read<AppliedProvider>().chosenItem(value);
                              },
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      Row(
                        children: [
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            "Company name *",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.neutral400,
                                fontSize: 16),
                          ),
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
                        margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
                        child: Container(
                          width: 310,
                          height: 60,
                          alignment: Alignment.center,
                          child: Container(
                            margin: const EdgeInsets.only(left: 20,right: 20),
                            child: TextFormField(
                              controller: context.watch<AppliedProvider>().state.companyNameController,
                              style: Theme.of(context).textTheme.labelLarge,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      Row(
                        children: [
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            "Location",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.neutral400,
                                fontSize: 16),
                          ),
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
                        margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
                        child: Container(
                          width: 81.w,
                          height: 6.h,
                          alignment: Alignment.center,
                          child: Container(
                            margin: const EdgeInsets.only(left: 15,),
                            child: TextFormField(
                              controller: context.watch<AppliedProvider>().state.locationController,
                              style: Theme.of(context).textTheme.labelLarge,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                icon: Icon(Iconsax.location,color: AppColors.neutral900,),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 1.2.h,),
                      GestureDetector(
                        onTap: (){
                          context.read<AppliedProvider>().isCheck();
                        },
                        child: Row(
                          children: [
                            const SizedBox(width: 15,),
                            SizedBox(
                                height: 25,
                                width: 25,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 0,left: 5,
                                      child: Container(
                                        width: 19,
                                        height: 19,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(6),
                                            border: Border.all(color: context.watch<AppliedProvider>().state.isCheck
                                              ? Colors.white
                                              : AppColors.neutral400
                                            ),
                                            color: context.watch<AppliedProvider>().state.isCheck
                                                ? AppColors.primary500
                                                : Colors.white
                                        ),
                                      ),
                                    ),
                                    context.watch<AppliedProvider>().state.isCheck
                                    ? const Positioned(
                                      bottom: 5.1,
                                        left: 3.1,
                                        child: Icon(Iconsax.tick_square,size: 23,
                                          color: Colors.white,
                                        ))
                                        : const SizedBox()
                                  ],
                                ),
                              ),
                            const SizedBox(width: 5,),
                            Container(
                              height: 23,
                                alignment: Alignment.topCenter,
                                child: const Text("I am currently working in this role", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),))
                          ],
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      Row(
                        children: [
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            "Start Year *",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: AppColors.neutral400,
                                fontSize: 16),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: 6.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.neutral400),
                        ),
                        margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
                        child: Container(
                          width: 81.w,
                          height: 6.h,
                          alignment: Alignment.center,
                          child: Container(
                            margin: const EdgeInsets.only(left: 20,),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              onEditingComplete: () {
                                FocusScope.of(context).unfocus();
                                Provider.of<AppliedProvider>(context,listen: false).state.complete = true;
                              },
                              controller: context.watch<AppliedProvider>().state.startYearExperienceController,
                              style: Theme.of(context).textTheme.labelLarge,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 4.h,),
                      SizedBox(
                        height: 5.h,
                        width: 80.w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: context.watch<AppliedProvider>().state.complete
                                  ? AppColors.primary500
                                  : AppColors.neutral300,
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.symmetric(vertical: 14)),
                          onPressed: () {
                            context.read<AppliedProvider>().saveExperience(context);
                          },
                          child: Text(
                            "Save",
                            style: TextStyle(fontSize: 16,
                              color: context.watch<AppliedProvider>().state.complete
                                  ? AppColors.neutral100
                                  : AppColors.neutral500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: context.watch<AppliedProvider>().state.experience.length * 120,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: context.watch<AppliedProvider>().state.experience.length,
                    itemBuilder: (ctx,i){
                      return Center(
                        child: Container(
                          height: 12.9.h,
                          margin: const EdgeInsets.only(left: 20,right: 20,top: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.neutral300),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 15,),
                              Column(
                                children: [
                                  const SizedBox(height: 25,),
                                  InkWell(
                                    onTap: () => context.read<AppliedProvider>().getExperienceImage(i),
                                    child: Container(
                                      height: 60,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: AppColors.neutral300),
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(60),
                                        child: context.watch<AppliedProvider>().state.hasExperienceImage[i]
                                            ? Image.file(context.watch<AppliedProvider>().state.imageExperience[i], width: 60, height: 60)
                                            : Image.asset(
                                            "assets/images/profile-picture/Group 15495.png"),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 15,),
                              Column(
                                children: [
                                  const SizedBox(height: 21,),
                                  Container(
                                      width: 200,
                                      alignment: Alignment.centerLeft,
                                      child: Text(context.watch<AppliedProvider>().state.experience[i].position,style: TextStyle(fontWeight: FontWeight.w500,color: AppColors.neutral900,fontSize: 16),)),
                                  const SizedBox(height: 2,),
                                  Container(
                                      width: 200,
                                      alignment: Alignment.centerLeft,
                                      child: Text("${context.watch<AppliedProvider>().state.experience[i].typeOfWork}•${context.watch<AppliedProvider>().state.experience[i].companyName}",style: TextStyle(fontWeight: FontWeight.w400,color: AppColors.neutral500,fontSize: 14),)),
                                  const SizedBox(height: 3,),
                                  Container(
                                      width: 200,
                                      alignment: Alignment.centerLeft,
                                      child: Text("${context.watch<AppliedProvider>().state.experience[i].startYear} - 2022",style: TextStyle(fontWeight: FontWeight.w400,color: AppColors.neutral400,fontSize: 14),)),
                                ],
                              ),
                              const SizedBox(width: 20,),
                              GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 55),
                                  child: Icon(Iconsax.edit_2,
                                      color: AppColors.primary500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),),
              const SizedBox(height: 110,),
            ]
        ),
      ),
    );
  }
}
