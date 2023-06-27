import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:jobsque/screens/auth/widgets/work/provider/workState.dart';
import '../../../Core/app_colors.dart';

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
                    setState(() {
                      if (state.isSelected == true) {
                        state.isSelected = false;
                      } else {
                        state.isSelected = true;
                      }
                    });
                  },
                  child: Container(
                    width: 150,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: state.isSelected == false
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: state.isSelected == false
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
                    setState(() {
                      if (state.isSelected2 == true) {
                        state.isSelected2 = false;
                      } else {
                        state. isSelected2 = true;
                      }
                    });
                  },
                  child: Container(
                    width: 125,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: state.isSelected2 == false
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: state.isSelected2 == false
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
                    setState(() {
                      if (state.isSelected3 == true) {
                        state.isSelected3 = false;
                      } else {
                        state.isSelected3 = true;
                      }
                    });
                  },
                  child: Container(
                    width: 125,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: state.isSelected3 == false
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: state.isSelected3 == false
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
                    setState(() {
                      if (state.isSelected4 == true) {
                        state.isSelected4 = false;
                      } else {
                        state.isSelected4 = true;
                      }
                    });
                  },
                  child: Container(
                    width: 133,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: state.isSelected4 == false
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: state.isSelected4 == false
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
                    setState(() {
                      if (state.isSelected5 == true) {
                        state.isSelected5 = false;
                      } else {
                        state.isSelected5 = true;
                      }
                    });
                  },
                  child: Container(
                    width: 132,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: state.isSelected5 == false
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: state.isSelected5 == false
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
                    setState(() {
                      if (state.isSelected6 == true) {
                        state.isSelected6 = false;
                      } else {
                        state.isSelected6 = true;
                      }
                    });
                  },
                  child: Container(
                    width: 119,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: state.isSelected6 == false
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: state.isSelected6 == false
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
                    setState(() {
                      if (state.isSelected7 == true) {
                        state.isSelected7 = false;
                      } else {
                        state.isSelected7 = true;
                      }
                    });
                  },
                  child: Container(
                    width: 96,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: state.isSelected7 == false
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: state.isSelected7 == false
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
                    setState(() {
                      if (state.isSelected8 == true) {
                        state.isSelected8 = false;
                      } else {
                        state.isSelected8 = true;
                      }
                    });
                  },
                  child: Container(
                    width: 119,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color:state.isSelected8 == false
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: state.isSelected8 == false
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
                    setState(() {
                      if (state.isSelected9 == true) {
                        state.isSelected9 = false;
                      } else {
                        state.isSelected9 = true;
                      }
                    });
                  },
                  child: Container(
                    width: 105,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color:state.isSelected9 == false
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: state.isSelected9 == false
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
                    setState(() {
                      if (state.isSelected10 == true) {
                        state.isSelected10 = false;
                      } else {
                        state.isSelected10 = true;
                      }
                    });
                  },
                  child: Container(
                    width: 122,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: state.isSelected10 == false
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: state.isSelected10 == false
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
                    setState(() {
                      if (state.isSelected11 == true) {
                        state.isSelected11 = false;
                      } else {
                        state.isSelected11 = true;
                      }
                    });
                  },
                  child: Container(
                    width: 150,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: state.isSelected11 == false
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: state.isSelected11 == false
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
                    setState(() {
                      if (state.isSelected12 == true) {
                        state.isSelected12 = false;
                      } else {
                        state.isSelected12 = true;
                      }
                    });
                  },
                  child: Container(
                    width: 135,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: state.isSelected12 == false
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: state.isSelected12 == false
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
                ), //10
                InkWell(
                  onTap: (){
                    setState(() {
                      if (state.isSelected13 == true) {
                        state.isSelected13 = false;
                      } else {
                        state.isSelected13 = true;
                      }
                    });
                  },
                  child: Container(
                    width: 95,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: state.isSelected13 == false
                            ? AppColors.neutral100
                            : AppColors.primary100,
                        border: Border.all(
                          color: state.isSelected13 == false
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
                ), //11
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
                Navigator.of(context).pushNamed("account");
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
