import 'package:flutter/material.dart';
import 'package:jobsque/screens/onboarding/provider/pageViewProvider.dart';
import 'package:provider/provider.dart';
import '../../Core/app_colors.dart';
import 'package:sizer/sizer.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 5.5.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 2.w,
              ),
              SizedBox(
                width: 24.w,
                child: Image.asset("assets/images/app logo/Logo.png"),
              ),
              SizedBox(
                width: 60.w,
              ),
              InkWell(
                onTap: () {
                  context.read<PageViewProvider>().setBool();
                  Navigator.of(context).pushNamed("login");
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 150.w,
            height: 72.h,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: context.watch<PageViewProvider>().state.scroll,
              onPageChanged: (int index) {
                context.read<PageViewProvider>().changeIndex(index);
              },
              children: context.watch<PageViewProvider>().state.pages,
            ),
          ),
          Container(
              height: 1.h,
              width: 9.w,
              alignment: Alignment.center,
              child: ListView.builder(
                  itemCount: context.watch<PageViewProvider>().state.pages.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Row(
                      children: [
                        Container(
                          width: context.watch<PageViewProvider>().state.pageIndex == index ? 8 : 6,
                          height: context.watch<PageViewProvider>().state.pageIndex == index ? 8 : 6,
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                          decoration: BoxDecoration(
                              color: context.watch<PageViewProvider>().state.pageIndex == index
                                  ? AppColors.primary500
                                  : AppColors.primary100,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ],
                    );
                  })), // dots
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            width: 86.w,
            height: 6.h,
            child: TextButton(
              style: TextButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: AppColors.primary500,
                  padding: const EdgeInsets.symmetric(vertical: 14)),
              onPressed: () {
                context.read<PageViewProvider>().onTap(context);
              },
              child: Text(
                context.watch<PageViewProvider>().state.pageIndex == 2 ? "Get Started" : "Next",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ), // next button
        ],
      ),
    );
  }
}
