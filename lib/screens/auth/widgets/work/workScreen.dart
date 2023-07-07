import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/screens/auth/widgets/work/provider/workProvider.dart';
import 'package:provider/provider.dart';
import '../../../../Core/app_colors.dart';


class WorkScreen extends StatelessWidget {
  const WorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: 850,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "What type of work are you",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "interested in?",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Tell us what you’re interested in so we can",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black38),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "customise the app for your needs.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black38),
                ),
              ],
            ),

            SizedBox(
              height: 680,
              width: double.infinity,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 1.22,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 20,
                    crossAxisCount: 10,
                  ),
                padding: const EdgeInsets.only(right: 20, left: 20, top: 40),
                itemCount: context.watch<WorkProvider>().state.work.length,
                itemBuilder: (context,i) {
                    return InkWell(
                        onTap: () {
                          context.read<WorkProvider>().selectCategory(
                            Provider.of<WorkProvider>(context, listen: false).state.work[i]
                          );
                        },
                        child: Container(
                          height: 125,
                          width: 150,
                          decoration: BoxDecoration(
                              color: context.watch<WorkProvider>().state.work.contains(
                                  Provider.of<WorkProvider>(context, listen: false).state.work[i])
                                  ? HexColor("#F4F4F5")
                                  : AppColors.primary100,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: context.watch<WorkProvider>().state.work.contains(
                                      Provider.of<WorkProvider>(context, listen: false).state.work[i])
                                      ? HexColor("#D1D5DB")
                                      : AppColors.primary500,
                                  width: 1)),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: context.watch<WorkProvider>().state.work.contains(
                                            Provider.of<WorkProvider>(context, listen: false).state.work[i])
                                            ? HexColor("#F4F4F5")
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(100),
                                        border: Border.all(
                                            color: context.watch<WorkProvider>().state.work.contains(
                                                Provider.of<WorkProvider>(context, listen: false).state.work[i])
                                                ? HexColor("#D1D5DB")
                                                : AppColors.primary500,
                                            width: 1)),
                                    child: Icon(context.watch<WorkProvider>().state.work[i]["icon"],
                                        color: context.watch<WorkProvider>().state.work.contains(
                                            Provider.of<WorkProvider>(context, listen: false).state.work[i])
                                            ? AppColors.neutral800
                                            : AppColors.primary500),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                               Row(
                                children: [
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    context.watch<WorkProvider>().state.work[i]["name"],
                                    style: const TextStyle(
                                        fontSize: 15, fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                    );
                },
              ),
            ), // GridView

            const SizedBox(
              height: 60,
            ),
            SizedBox(
              width: 345,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary500,
                    shape: const StadiumBorder(),
                    padding: const EdgeInsets.symmetric(vertical: 14)),
                onPressed: () {
                  Navigator.of(context).pushNamed("location");
                },
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 18, color: AppColors.neutral100),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

