import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/screens/home/provider/homeProvder.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import '../../../Core/app_colors.dart';


class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  //    backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 4.5.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 1.5.w,
                ),
                IconButton(onPressed: (){
                  Navigator.of(context).pushNamed("bottomNavigation");
                }, icon: const Icon(Iconsax.arrow_left)),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 80.w,
                  height: 6.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.black12)),
                  child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.search_normal_1,
                            color: Colors.black87,
                            size: 16.sp,
                          ),
                          hintText: "Type something...",
                          border: InputBorder.none),
                      autofocus: true,
                      controller: context.watch<HomeProvider>().state.searchValueController,
                      onEditingComplete: (){
                        context.read<HomeProvider>().onEditingComplete(context);
                        FocusScope.of(context).unfocus();
                      }
                  ),
                ),
              ],
            ),
                Container(
                  width: double.infinity,
                  height: 5.h,
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: AppColors.neutral100,
                      border: Border.all(color: AppColors.neutral200)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        "Recent searches",
                        style: TextStyle(fontSize: 11.sp),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35.h,
                    child: ListView.builder(
                      itemCount: context.watch<HomeProvider>().state.searchList.length,
                      itemBuilder: (context, i) {
                        return Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Iconsax.clock,
                                  size: 17.sp,
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                InkWell(
                                  onTap:(){
                                    context.read<HomeProvider>().
                                    addToResult(Provider.of<HomeProvider>(
                                        context, listen: false).state.searchList[i],context);
                                  },
                                  child: SizedBox(
                                    width: 72.w,
                                    height: 2.h,
                                    child: Text(
                                      context.watch<HomeProvider>().state.searchList[i],
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {
                                      context.read<HomeProvider>().deleteFromHistory(Provider.of<HomeProvider>
                                        (context, listen: false).state.searchList[i]);},
                                    icon: Icon(
                                      Iconsax.close_circle,
                                      size: 19.sp,
                                      color: Colors.red,
                                    )),
                              ],
                        );
                      },
                    ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: AppColors.neutral100,
                      border: Border.all(color: AppColors.neutral200)),
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Popular searches",style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 300,
                    child: ListView.builder(
                      itemCount: context.watch<HomeProvider>().state.suggestions.length,
                      itemBuilder: (context, i) {
                        context.watch<HomeProvider>().state.suggestions[i];
                        return Row(
                              children: [
                                const SizedBox(
                                  width: 20,
                                ),
                                const Icon(
                                  Iconsax.search_status,
                                  size: 20,
                                  color: Colors.black,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                SizedBox(
                                  width: 280,
                                  height: 20,
                                  child: Text(
                                    context.watch<HomeProvider>().state.suggestions[i],
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                IconButton(
                                    onPressed: (){
                                      context.read<HomeProvider>().
                                      addToResult(Provider.of<HomeProvider>(
                                          context, listen: false).state.suggestions[i],context);
                                      context.read<HomeProvider>().
                                      addToHistory(Provider.of<HomeProvider>(
                                          context, listen: false).state.suggestions[i]);
                                    },
                                    icon: Icon(
                                      Iconsax.arrow_right_2,
                                      size: 24,
                                      color: AppColors.primary500,
                                    )),
                              ],
                            );
                      },
                    ),
                ),
          ],
        ),
      ),
    );
  }
}
