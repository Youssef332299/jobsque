import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/core/app_AppBar.dart';
import 'package:jobsque/screens/applied/provider/appliedProvider.dart';
import 'package:provider/provider.dart';
import '../../../Core/app_colors.dart';


class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {

  @override
  void initState() {
    context.read<AppliedProvider>().getEducation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(routeName: "completeProfile", title: 'Education',),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Center(
              child: Container(
                height: 570,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: AppColors.neutral300),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "University *",
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
                            controller: context.watch<AppliedProvider>().state.universityController,
                            style: Theme.of(context).textTheme.labelLarge,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Title",
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
                            controller: context.watch<AppliedProvider>().state.titleController,
                            style: Theme.of(context).textTheme.labelLarge,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Start Year",
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
                          margin: const EdgeInsets.only(left: 20,),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: context.watch<AppliedProvider>().state.startYearController,
                            style: Theme.of(context).textTheme.labelLarge,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Iconsax.calendar_2,color: AppColors.neutral900,),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          "End Year",
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
                          margin: const EdgeInsets.only(left: 20,),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            onEditingComplete: () {
                              FocusScope.of(context).unfocus();
                              Provider.of<AppliedProvider>(context,listen: false).state.complete = true;
                            },
                            controller: context.watch<AppliedProvider>().state.endYearController,
                            style: Theme.of(context).textTheme.labelLarge,
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                              suffixIcon: Icon(Iconsax.calendar_2,color: AppColors.neutral900,),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40,),
                    SizedBox(
                      height: 45,
                      width: 300,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: context.watch<AppliedProvider>().state.complete
                                ? AppColors.primary500
                                : AppColors.neutral300,
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.symmetric(vertical: 14)),
                        onPressed: () {
                          Provider.of<AppliedProvider>(context, listen: false).state.isEdit
                              ? context.read<AppliedProvider>().saveEditing(context, Provider.of<AppliedProvider>(context, listen: false).state.isEditIndex)
                              : context.read<AppliedProvider>().save(context);
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
              height: context.watch<AppliedProvider>().state.education.length * 120 ,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: context.watch<AppliedProvider>().state.education.length,
                  itemBuilder: (ctx,i){
                    return Center(
                      child: Container(
                        height: 110,
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
                                  onTap: () => context.read<AppliedProvider>().getImage(i),
                                  child: Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: AppColors.neutral300),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(60),
                                      child: context.watch<AppliedProvider>().state.hasImage[i]
                                          ? Image.file(context.watch<AppliedProvider>().state.image[i], width: 60, height: 60)
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
                                    child: Text(context.watch<AppliedProvider>().state.education[i].university,style: TextStyle(fontWeight: FontWeight.w500,color: AppColors.neutral900,fontSize: 16),)),
                                const SizedBox(height: 2,),
                                Container(
                                    width: 200,
                                    alignment: Alignment.centerLeft,
                                    child: Text(context.watch<AppliedProvider>().state.education[i].title,style: TextStyle(fontWeight: FontWeight.w400,color: AppColors.neutral500,fontSize: 14),)),
                                const SizedBox(height: 3,),
                                Container(
                                    width: 200,
                                    alignment: Alignment.centerLeft,
                                    child: Text("${context.watch<AppliedProvider>().state.education[i].startYear} - ${context.watch<AppliedProvider>().state.education[i].endYear}",style: TextStyle(fontWeight: FontWeight.w400,color: AppColors.neutral400,fontSize: 14),)),
                              ],
                            ),
                            const SizedBox(width: 20,),
                            InkWell(
                              onTap: () {
                                context.read<AppliedProvider>().editEducation(context, i);
                                Provider.of<AppliedProvider>(context, listen: false).state.isEditIndex = i;
                              },
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
