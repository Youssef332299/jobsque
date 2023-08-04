import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jobsque/screens/auth/widgets/work/provider/workProvider.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../../Core/app_colors.dart';


class WorkScreen extends StatelessWidget {
  const WorkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => WorkProvider(),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SizedBox(
            height: 200.h,
            width: double.infinity,
            child: Column(
                children: [
                  SizedBox(
                    height: 6.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "What type of work are you",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 19.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.7.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "interested in?",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 19.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "Tell us what you’re interested in so we can",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: Colors.black38),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "customise the app for your needs.",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12.sp,
                            color: Colors.black38),
                      ),
                    ],
                  ),

                  Consumer<WorkProvider>(builder: (context, opject, child) {
                    return SizedBox(
                      height: 42.h,
                      width: double.infinity,
                      child: GridView.builder(
                        itemBuilder: (context, i) {
                          return InkWell(
                              onTap: () {
                                opject.selectJob(opject.state.work[i]);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: !opject.state.worksSelected.contains(
                                        opject.state.work[i])
                                        ? HexColor("#F4F4F5")
                                        : AppColors.primary100,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: !opject.state.worksSelected
                                          .contains(opject.state.work[i])
                                          ? HexColor("#D1D5DB")
                                          : AppColors.primary500,)),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 2.5.h,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: !opject.state.worksSelected
                                                  .contains(
                                                  opject.state.work[i])
                                                  ? HexColor("#F4F4F5")
                                                  : Colors.white,
                                              borderRadius: BorderRadius
                                                  .circular(100),
                                              border: Border.all(
                                                  color: !opject.state
                                                      .worksSelected.contains(
                                                      opject.state.work[i])
                                                      ? HexColor("#D1D5DB")
                                                      : AppColors.primary500,
                                                  width: 1)),
                                          child: Icon(
                                              opject.state.work[i]["icon"],
                                              color: !opject.state.worksSelected
                                                  .contains(
                                                  opject.state.work[i])
                                                  ? AppColors.neutral800
                                                  : AppColors.primary500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.5.h,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 3.w,
                                        ),
                                        Text(
                                          opject.state.work[i]["name"],
                                          style: TextStyle(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                          );
                        },
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1.2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 20,
                          crossAxisCount: 2,
                        ),
                        padding: const EdgeInsets.only(
                            right: 20, left: 20, top: 30),
                        itemCount: opject.state.work.length,
                      ),
                    );
                  }), //
                  Consumer<WorkProvider>(builder: (context, opject, child) {
                    return SizedBox(
                      height: 25.h,
                      width: double.infinity,
                      child: GridView.builder(
                        itemBuilder: (context, i) {
                          return InkWell(
                              onTap: () {
                                opject.selectJob(opject.state.work2[i]);
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: !opject.state.worksSelected.contains(
                                        opject.state.work2[i])
                                        ? HexColor("#F4F4F5")
                                        : AppColors.primary100,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: !opject.state.worksSelected
                                          .contains(opject.state.work2[i])
                                          ? HexColor("#D1D5DB")
                                          : AppColors.primary500,)),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 3.h,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: !opject.state.worksSelected
                                                  .contains(
                                                  opject.state.work2[i])
                                                  ? HexColor("#F4F4F5")
                                                  : Colors.white,
                                              borderRadius: BorderRadius
                                                  .circular(100),
                                              border: Border.all(
                                                  color: !opject.state
                                                      .worksSelected.contains(
                                                      opject.state.work2[i])
                                                      ? HexColor("#D1D5DB")
                                                      : AppColors.primary500,
                                                  width: 1)),
                                          child: Icon(
                                              opject.state.work2[i]["icon"],
                                              color: !opject.state.worksSelected
                                                  .contains(
                                                  opject.state.work2[i])
                                                  ? AppColors.neutral800
                                                  : AppColors.primary500),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 2.h,
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: 1.5.w,
                                        ),
                                        Text(
                                          opject.state.work2[i]["name"],
                                          style: TextStyle(
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                          );
                        },
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 1.1,
                          crossAxisSpacing: 15,
                          crossAxisCount: 2,
                        ),
                        padding: const EdgeInsets.only(right: 20, left: 20, top: 0),
                        itemCount: opject.state.work2.length,
                      ),
                    );
                  }), // GridView
                  // GridView
                  SizedBox(height: 3.h,),
                  Consumer<WorkProvider>(builder: (context, opject, child) {
                    return SizedBox(
                      width: 86.w,
                      height: 6.h,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary500,
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.symmetric(vertical: 14)
                        ),
                        onPressed: () {
                          context.read<WorkProvider>().onTapNext(opject.state.worksSelected,context);
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(fontSize: 13.sp, color: AppColors.neutral100),
                        ),
                      ),
                    );
                  }

                  ),
                ]),
          ),
        )
    );
  }
}


