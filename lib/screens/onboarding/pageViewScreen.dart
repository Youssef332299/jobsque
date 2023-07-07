import 'package:flutter/material.dart';
import 'package:jobsque/screens/onboarding/provider/pageViewProvider.dart';
import 'package:provider/provider.dart';
import '../../Core/app_colors.dart';


class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 55,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 100,
                child: Image.asset("assets/images/app logo/Logo.png"),
              ),
              const SizedBox(
                width: 230,
              ),
              InkWell(
                onTap: () {
                  context.read<PageViewProvider>().setBool();
                  Navigator.of(context).pushNamed("login");
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black45),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 390,
            height: 600,
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
              height: 8,
              width: 60,
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
          const SizedBox(
            height: 90,
          ),
          SizedBox(
            width: 345,
            height: 55,
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
                style: const TextStyle(
                  fontSize: 18,
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
