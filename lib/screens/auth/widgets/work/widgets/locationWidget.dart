import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jobsque/screens/auth/widgets/work/provider/workProvider.dart';
import 'package:jobsque/screens/auth/widgets/work/provider/workState.dart';
import 'package:jobsque/screens/auth/widgets/work/workScreen.dart';
import 'package:provider/provider.dart';
import '../../../../../Core/app_colors.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {

  WorkState state = WorkState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 60),
          const Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Text(
                "Where are you preferred",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Text(
                "Location?",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Text(
                "Lets us know, where is the work location you",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black38),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Text(
                "want at this time, so we can adjust it.",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black38),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 350,
            height: 60,
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Text("Work From Office",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.neutral500),),
                const SizedBox(
                  width: 23,
                ),
                Container(
                  width: 185,
                  height: 54,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: HexColor("#091A7A"),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Text("Remote Work",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Text(
                "Select the country you want for your job",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade400),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          //Design

          SizedBox(
            height: 420,
            width: 350,
            child: Wrap(
              spacing: 15,
              runSpacing: 15,
              children: [
                InkWell(
                  onTap: (){
                    context.read<WorkProvider>().isSelected(0);
                  },
                  child: Container(
                    width: 150,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: !context.watch<WorkProvider>().state.isSelected[0]
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: !context.watch<WorkProvider>().state.isSelected[0]
                              ? AppColors.neutral200
                              : AppColors.primary500,
                        )),
                    child: Row(
                      children: [
                        const SizedBox(width: 9,),
                        Image.asset(
                          "assets/images/flags/Ellipse 804.png",
                          scale: 18,
                        ),
                        const SizedBox(width: 7,),
                        const Text("United States",style: TextStyle(fontWeight: FontWeight.w500,),)
                      ],
                    ),
                  ),
                ), //1
                InkWell(
                  onTap: (){
                    context.read<WorkProvider>().isSelected(1);
                  },
                  child: Container(
                    width: 125,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: !context.watch<WorkProvider>().state.isSelected[1]
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: !context.watch<WorkProvider>().state.isSelected[1]
                              ? AppColors.neutral200
                              : AppColors.primary500,
                        )),
                    child: Row(
                      children: [
                        const SizedBox(width: 8,),
                        Image.asset(
                          "assets/images/flags/2.png",
                          scale: 3.59,
                        ),
                        const SizedBox(width: 7,),
                        const Text("Malaysia",style: TextStyle(fontWeight: FontWeight.w500,),)
                      ],
                    ),
                  ),
                ), //2

                InkWell(
                  onTap: (){
                    context.read<WorkProvider>().isSelected(2);
                  },
                  child: Container(
                    width: 125,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: !context.watch<WorkProvider>().state.isSelected[2]
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: !context.watch<WorkProvider>().state.isSelected[2]
                              ? AppColors.neutral200
                              : AppColors.primary500,
                        )),
                    child: Row(
                      children: [
                        const SizedBox(width: 9,),
                        Image.asset(
                          "assets/images/flags/Singapore.png",
                          scale: 3.5,
                        ),
                        const SizedBox(width: 7,),
                        const Text("Singapore",style: TextStyle(fontWeight: FontWeight.w500,),)
                      ],
                    ),
                  ),
                ), //3
                InkWell(
                  onTap: (){
                    context.read<WorkProvider>().isSelected(3);
                  },
                  child: Container(
                    width: 133,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: !context.watch<WorkProvider>().state.isSelected[3]
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: !context.watch<WorkProvider>().state.isSelected[3]
                              ? AppColors.neutral200
                              : AppColors.primary500,
                        )),
                    child: Row(
                      children: [
                        const SizedBox(width: 9,),
                        Image.asset(
                          "assets/images/flags/Indonesia.png",
                          scale: 3.5,
                        ),
                        const SizedBox(width: 7,),
                        const Text("Indonesia",style: TextStyle(fontWeight: FontWeight.w500,),)
                      ],
                    ),
                  ),
                ), //4

                InkWell(
                  onTap: (){
                    context.read<WorkProvider>().isSelected(4);
                  },
                  child: Container(
                    width: 132,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: !context.watch<WorkProvider>().state.isSelected[4]
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: !context.watch<WorkProvider>().state.isSelected[4]
                              ? AppColors.neutral200
                              : AppColors.primary500,
                        )),
                    child: Row(
                      children: [
                        const SizedBox(width: 9,),
                        Image.asset(
                          "assets/images/flags/Philiphines.png",
                          scale: 3.5,
                        ),
                        const SizedBox(width: 7,),
                        const Text("Philiphines",style: TextStyle(fontWeight: FontWeight.w500,),)
                      ],
                    ),
                  ),
                ), //5
                InkWell(
                  onTap: (){
                    context.read<WorkProvider>().isSelected(5);
                  },
                  child: Container(
                    width: 119,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: !context.watch<WorkProvider>().state.isSelected[5]
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: !context.watch<WorkProvider>().state.isSelected[5]
                              ? AppColors.neutral200
                              : AppColors.primary500,
                        )),
                    child: Row(
                      children: [
                        const SizedBox(width: 9,),
                        Image.asset(
                          "assets/images/flags/Polandia.png",
                          scale: 3.5,
                        ),
                        const SizedBox(width: 7,),
                        const Text("Polandia",style: TextStyle(fontWeight: FontWeight.w500,),)
                      ],
                    ),
                  ),
                ), //6

                InkWell(
                  onTap: (){
                    context.read<WorkProvider>().isSelected(6);
                  },
                  child: Container(
                    width: 96,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: !context.watch<WorkProvider>().state.isSelected[6]
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: !context.watch<WorkProvider>().state.isSelected[6]
                              ? AppColors.neutral200
                              : AppColors.primary500,
                        )),
                    child: Row(
                      children: [
                        const SizedBox(width: 9,),
                        Image.asset(
                          "assets/images/flags/India.png",
                          scale: 3.5,
                        ),
                        const SizedBox(width: 7,),
                        const Text("India",style: TextStyle(fontWeight: FontWeight.w500,),)
                      ],
                    ),
                  ),
                ), //7
                InkWell(
                  onTap: (){
                    context.read<WorkProvider>().isSelected(7);
                  },
                  child: Container(
                    width: 119,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: !context.watch<WorkProvider>().state.isSelected[7]
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: !context.watch<WorkProvider>().state.isSelected[7]
                              ? AppColors.neutral200
                              : AppColors.primary500,
                        )),
                    child: Row(
                      children: [
                        const SizedBox(width: 9,),
                        Image.asset(
                          "assets/images/flags/Vietnam.png",
                          scale: 3.5,
                        ),
                        const SizedBox(width: 7,),
                        const Text("Vietnam",style: TextStyle(fontWeight: FontWeight.w500,),)
                      ],
                    ),
                  ),
                ), //8
                InkWell(
                  onTap: (){
                        context.read<WorkProvider>().isSelected(8);
                  },
                  child: Container(
                    width: 105,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: !context.watch<WorkProvider>().state.isSelected[8]
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: !context.watch<WorkProvider>().state.isSelected[8]
                              ? AppColors.neutral200
                              : AppColors.primary500,
                        )),
                    child: Row(
                      children: [
                        const SizedBox(width: 9,),
                        Image.asset(
                          "assets/images/flags/China.png",
                          scale: 3.5,
                        ),
                        const SizedBox(width: 7,),
                        const Text("China",style: TextStyle(fontWeight: FontWeight.w500,),)
                      ],
                    ),
                  ),
                ), //9

                InkWell(
                  onTap: (){
                    context.read<WorkProvider>().isSelected(9);
                  },
                  child: Container(
                    width: 122,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: !context.watch<WorkProvider>().state.isSelected[9]
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: !context.watch<WorkProvider>().state.isSelected[9]
                              ? AppColors.neutral200
                              : AppColors.primary500,
                        )),
                    child: Row(
                      children: [
                        const SizedBox(width: 9,),
                        Image.asset(
                          "assets/images/flags/Canada.png",
                          scale: 3.5,
                        ),
                        const SizedBox(width: 7,),
                        const Text("Canada",style: TextStyle(fontWeight: FontWeight.w500,),)
                      ],
                    ),
                  ),
                ), //10
                InkWell(
                  onTap: (){
                    context.read<WorkProvider>().isSelected(10);
                  },
                  child: Container(
                    width: 150,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: !context.watch<WorkProvider>().state.isSelected[10]
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: !context.watch<WorkProvider>().state.isSelected[10]
                              ? AppColors.neutral200
                              : AppColors.primary500,
                        )),
                    child: Row(
                      children: [
                        const SizedBox(width: 9,),
                        Image.asset(
                          "assets/images/flags/Saudi Arabia.png",
                          scale: 3.5,
                        ),
                        const SizedBox(width: 7,),
                        const Text("Saudi Arabia",style: TextStyle(fontWeight: FontWeight.w500,),)
                      ],
                    ),
                  ),
                ), //11

                InkWell(
                  onTap: (){
                    context.read<WorkProvider>().isSelected(11);
                  },
                  child: Container(
                    width: 135,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: !context.watch<WorkProvider>().state.isSelected[11]
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: !context.watch<WorkProvider>().state.isSelected[11]
                              ? AppColors.neutral200
                              : AppColors.primary500,
                        )),
                    child: Row(
                      children: [
                        const SizedBox(width: 9,),
                        Image.asset(
                          "assets/images/flags/Argentina.png",
                          scale: 3.5,
                        ),
                        const SizedBox(width: 7,),
                        const Text("Argentina",style: TextStyle(fontWeight: FontWeight.w500,),)
                      ],
                    ),
                  ),
                ), //12
                InkWell(
                  onTap: (){
                    context.read<WorkProvider>().isSelected(12);
                  },
                  child: Container(
                    width: 95,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: !context.watch<WorkProvider>().state.isSelected[12]
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: !context.watch<WorkProvider>().state.isSelected[12]
                              ? AppColors.neutral200
                              : AppColors.primary500,
                        )),
                    child: Row(
                      children: [
                        const SizedBox(width: 9,),
                        Image.asset(
                          "assets/images/flags/Brazil.png",
                          scale: 3.5,
                        ),
                        const SizedBox(width: 7,),
                        const Text("Brazil",style: TextStyle(fontWeight: FontWeight.w500,),)
                      ],
                    ),
                  ),
                ), //13
              ],
            ),
          ),
          // Wrap

          SizedBox(
            width: 345,
            height: 55,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary500,
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(vertical: 14)),
              onPressed: () {
                Navigator.of(context).pushNamed("setup");
              },
              child: Text(
                "Next",
                style: TextStyle(fontSize: 18, color: AppColors.neutral100),
              ),
            ),
          ), //Next
        ],
      )
    );
  }
}
