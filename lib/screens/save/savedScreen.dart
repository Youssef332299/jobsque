import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/screens/save/provider/savedProvider.dart';
import 'package:provider/provider.dart';
import '../../Core/app_colors.dart';
import '../../core/app_AppBar.dart';


class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: const CustomAppBar(title: 'Saved', routeName: 'bottomNavigation',),
        body: context.watch<SavedProvider>().state.showAllFavorites.isEmpty || context.watch<SavedProvider>().state.showAllFavorites == null
        ? Column(
          children: [
            const SizedBox(height: 140,),
            Center(child: Image.asset("assets/images/not found/save.PNG",scale: 4,)),
            const SizedBox(height: 18,),
            const Text("Nothing has been saved yet",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
            const SizedBox(height: 12,),
            Text("Press the star icon on the job you want to save.",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400, color: AppColors.neutral400),),
          ],
        )
        : Column(
          children: [
            Container(
              width: double.infinity,
              height: 40,
              margin: const EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  color: AppColors.neutral100,
                  border: Border.all(color: AppColors.neutral200)),
              child: Center(
                child: context.watch<SavedProvider>().state.showAllFavorites.isEmpty || context.watch<SavedProvider>().state.showAllFavorites == null
                    ?const CircularProgressIndicator()
                    :Text(
                  "${context.watch<SavedProvider>().state.showAllFavorites.length} Job Saved",
                  style: TextStyle(fontSize: 15,color: AppColors.neutral500,fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 657,
              child: ListView.separated(
                itemCount: context.watch<SavedProvider>().state.showAllFavorites.length,
                itemBuilder: (context, i) {
                  return Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: 360,
                      height: 110,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  const SizedBox(height: 15,),
                                  Container(
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white),
                                    child: Image.asset(
                                      "assets/images/twitte/spectrum.png",
                                    ),
                                  ),
                                ],
                              ), //Image
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        width: 155,
                                        height: 25,
                                        child: Text(
                                          context.watch<SavedProvider>().state.showAllFavorites[i]['name'],
                                          style: const TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black87),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    height: 15,
                                    width: 140,
                                    child: Text(
                                      context.watch<SavedProvider>().state.showAllFavorites[i]['location'],
                                      style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black45),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 90,
                              ),
                              IconButton(
                                  onPressed: () {
                                    context.read<SavedProvider>().showBottomSheet2(context,Provider.of<SavedProvider>(context,listen: false).state.showAllFavorites[i]['job_id']);
                                  }, icon: const Icon(Iconsax.more))
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              Text("Posted 2 days ago",style: TextStyle(fontSize: 12,color: AppColors.neutral500,fontWeight: FontWeight.w500),),
                              const SizedBox(width: 115,),
                              Icon(
                                Iconsax.clock,
                                size: 14,
                                color: AppColors.success500,
                              ),
                              const SizedBox(width: 5),
                              const Text("Be an early applicant",style: TextStyle(fontSize: 12),),
                            ],
                          ),
                        ],
                      ));
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    endIndent: 30,
                    indent: 30,
                    thickness: 1.6,
                    height: 0,
                  );
                },
              ),
            ),
          ],
        )
    );
  }
}
