import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/screens/auth/provider/createAccountProvider.dart';
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
              height: 340,
              width: double.infinity,
              child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.only(right: 20, left: 20, top: 40),
                childAspectRatio: 1.22,
                crossAxisSpacing: 15,
                mainAxisSpacing: 20,
                children: [
                  InkWell(
                    onTap: () {
                      context.read<CreateAccountProvider>().workSelected(Provider.of<CreateAccountProvider>(context, listen: false).state.work[0]);
                    },
                    child: Container(
                      height: 125,
                      width: 150,
                      decoration: BoxDecoration(
                          color: context.watch<CreateAccountProvider>().state.work[0] == false
                              ? HexColor("#F4F4F5")
                              : AppColors.primary100,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: context.watch<CreateAccountProvider>().state.work[0] == false
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
                                    color: context.watch<CreateAccountProvider>().state.work[0] == false
                                        ? HexColor("#F4F4F5")
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        color: context.watch<CreateAccountProvider>().state.work[0] == false
                                            ? HexColor("#D1D5DB")
                                            : AppColors.primary500,
                                        width: 1)),
                                child: Icon(Iconsax.bezier,
                                    color: context.watch<CreateAccountProvider>().state.work[0] == false
                                        ? AppColors.neutral800
                                        : AppColors.primary500),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "UI/UX Designer",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.read<CreateAccountProvider>().workSelected(Provider.of<CreateAccountProvider>(context, listen: false).state.work[1]);
                    },
                    child: Container(
                      height: 125,
                      width: 150,
                      decoration: BoxDecoration(
                          color: context.watch<CreateAccountProvider>().state.work[1] == false
                              ? HexColor("#F4F4F5")
                              : AppColors.primary100,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: context.watch<CreateAccountProvider>().state.work[1] == false
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
                                    color: context.watch<CreateAccountProvider>().state.work[1] == false
                                        ? HexColor("#F4F4F5")
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        color: context.watch<CreateAccountProvider>().state.work[1] == false
                                            ? HexColor("#D1D5DB")
                                            : AppColors.primary500,
                                        width: 1)),
                                child: Icon(Iconsax.pen_tool_2,
                                    color: context.watch<CreateAccountProvider>().state.work[1] == false
                                        ? AppColors.neutral800
                                        : AppColors.primary500),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Ilustrator Designer",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.read<CreateAccountProvider>().workSelected(Provider.of<CreateAccountProvider>(context, listen: false).state.work[2]);
                    },
                    child: Container(
                      height: 125,
                      width: 150,
                      decoration: BoxDecoration(
                          color: context.watch<CreateAccountProvider>().state.work[2] == false
                              ? HexColor("#F4F4F5")
                              : AppColors.primary100,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: context.watch<CreateAccountProvider>().state.work[2] == false
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
                                    color: context.watch<CreateAccountProvider>().state.work[2] == false
                                        ? HexColor("#F4F4F5")
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        color: context.watch<CreateAccountProvider>().state.work[2] == false
                                            ? HexColor("#D1D5DB")
                                            : AppColors.primary500,
                                        width: 1)),
                                child: Icon(Iconsax.code_1,
                                    color: context.watch<CreateAccountProvider>().state.work[2] == false
                                        ? AppColors.neutral800
                                        : AppColors.primary500),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Developer",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.read<CreateAccountProvider>().
                      workSelected(Provider.of<CreateAccountProvider>(context, listen: false).state.work[3]);
                    },
                    child: Container(
                      height: 125,
                      width: 150,
                      decoration: BoxDecoration(
                          color: context.watch<CreateAccountProvider>().state.work[3] == false
                              ? HexColor("#F4F4F5")
                              : AppColors.primary100,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: context.watch<CreateAccountProvider>().state.work[3] == false
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
                                    color: context.watch<CreateAccountProvider>().state.work[3] == false
                                        ? HexColor("#F4F4F5")
                                        : Colors.white,
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        color: context.watch<CreateAccountProvider>().state.work[3] == false
                                            ? HexColor("#D1D5DB")
                                            : AppColors.primary500,
                                        width: 1)),
                                child: Icon(Iconsax.graph,
                                    color: context.watch<CreateAccountProvider>().state.work[3] == false
                                        ? AppColors.neutral800
                                        : AppColors.primary500),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                "Management",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ), // GridView

            Container(
              height: 180,
              width: double.infinity,
              padding: const EdgeInsets.only(
                right: 20,
                left: 20,
              ),
              child: GridView.count(
                crossAxisCount: 2,
                addSemanticIndexes: true,
                childAspectRatio: 1.12,
                crossAxisSpacing: 20,
                children: [
                  InkWell(
                    onTap: () {
                      context.read<CreateAccountProvider>().workSelected(Provider.of<CreateAccountProvider>(context, listen: false).state.work[4]);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: context.watch<CreateAccountProvider>().state.work[4] == false
                              ? HexColor("#F4F4F5")
                              : AppColors.primary100,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: context.watch<CreateAccountProvider>().state.work[4] == false
                                  ? HexColor("#D1D5DB")
                                  : AppColors.primary500,
                              width: 1)),
                      child: Column(children: [
                        const SizedBox(
                          height: 20,
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
                                  color: context.watch<CreateAccountProvider>().state.work[4] == false
                                      ? HexColor("#F4F4F5")
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      color: context.watch<CreateAccountProvider>().state.work[4] == false
                                          ? HexColor("#D1D5DB")
                                          : AppColors.primary500,
                                      width: 1)),
                              child: Icon(Iconsax.devices_1,
                                  color: context.watch<CreateAccountProvider>().state.work[4] == false
                                      ? AppColors.neutral800
                                      : AppColors.primary500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        const Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Information",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Technology",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.read<CreateAccountProvider>().workSelected(Provider.of<CreateAccountProvider>(context, listen: false).state.work[5]);
                    },
                    child: Container(
                      height: 125,
                      width: 170,
                      decoration: BoxDecoration(
                          color: context.watch<CreateAccountProvider>().state.work[5] == false
                              ? HexColor("#F4F4F5")
                              : AppColors.primary100,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: context.watch<CreateAccountProvider>().state.work[5] == false
                                  ? HexColor("#D1D5DB")
                                  : AppColors.primary500,
                              width: 1)),
                      child: Column(children: [
                        const SizedBox(
                          height: 20,
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
                                  color: context.watch<CreateAccountProvider>().state.work[5] == false
                                      ? HexColor("#F4F4F5")
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      color: context.watch<CreateAccountProvider>().state.work[5] == false
                                          ? HexColor("#D1D5DB")
                                          : AppColors.primary500,
                                      width: 1)),
                              child: Icon(Iconsax.cloud_add,
                                  color: context.watch<CreateAccountProvider>().state.work[5] == false
                                      ? AppColors.neutral800
                                      : AppColors.primary500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        const Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Research and",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        const Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Analytics",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
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

