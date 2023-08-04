import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/core/app_AppBar.dart';
import 'package:jobsque/screens/home/provider/homeProvder.dart';
import 'package:provider/provider.dart';

import '../../../Core/app_colors.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 9,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Iconsax.arrow_left)),
                const SizedBox(
                  width: 91,
                ),
                const Text(
                  "Notification",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            Column(
              children:!context.watch<HomeProvider>().state.haveNotification
                  ? [
                Container(
                  width: double.infinity,
                  height: 40,
                  margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: AppColors.neutral100,
                      border: Border.all(color: AppColors.neutral200)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Text (
                        "New",
                        style: TextStyle(fontSize: 15,color: AppColors.neutral500,fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 400,
                  child: ListView.separated(
                      itemBuilder: (context, i){
                        return Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          color:Colors.white,
                          child: Column(
                            children: [
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset("assets/images/Shoope Logo/Shoope Logo.png",scale: 3,),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 5,
                                      ),
                                      const Text("Shoope                      ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                      const SizedBox(height: 12,),
                                      Text("Posted new design jobs",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400, color: AppColors.neutral400),),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 80,
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(height: 20,),
                                      Text("•",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w400, color: AppColors.warning600),),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    children: [
                                      const SizedBox(height: 15,),
                                      Text("10.00AM",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400, color: AppColors.neutral400),),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                        },
                      separatorBuilder: (context, i){
                        return const Divider(
                          endIndent: 30,
                          indent: 30,
                          thickness: 1.6,
                        );
                        }
                      , itemCount: 4),
                ),
                Container(
                  width: double.infinity,
                  height: 40,
                  // margin: const EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: AppColors.neutral100,
                      border: Border.all(color: AppColors.neutral200)),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Text (
                        "Yesterday",
                        style: TextStyle(fontSize: 15,color: AppColors.neutral500,fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    width: double.infinity,
                    height: 220,
                    // margin: const EdgeInsets.only(top: 20),
                    child: ListView.separated(
                        itemBuilder: (context, i){
                          return Container(
                            height: 90,
                            color:Colors.white,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            color: AppColors.primary100,
                                            borderRadius: BorderRadius.circular(50),
                                          ),
                                          child: IconButton(
                                              onPressed: (){},
                                              icon: Icon(
                                                i == 0
                                                ?Iconsax.sms
                                                :Iconsax.search_status,
                                                color: AppColors.primary500,
                                                size: 29,
                                              )),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        const SizedBox(
                                          height: 5,
                                        ),
                                         Row(
                                           children: [
                                             Text(
                                              i == 0
                                                  ?"Email setup successful                    "
                                                  :"Welcome to Jobsque                          ",style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                                             Text(
                                               i == 0
                                                   ?"•"
                                                   :"",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w400, color: AppColors.warning600),),
                                             Text(
                                               i == 0
                                               ?"10.00AM"
                                               :"08.00AM",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400, color: AppColors.neutral400),),
                                           ],
                                         ),
                                        const SizedBox(height: 2,),
                                        Text(
                                          i == 0
                                              ?"Your email setup was successful with the following   "
                                              :"Hello Rafif Dian Axelingga, thank you for registering  ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400, color: AppColors.neutral400),),
                                        const SizedBox(height: 2,),
                                        Text(
                                          i == 0
                                              ?"details: Your new email is rafifdianganz@gmail.com. "
                                              :"Jobsque. Enjoy the various features that....                    ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400, color: AppColors.neutral400),),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (context, i){
                          return const Divider(
                            endIndent: 30,
                            indent: 30,
                            thickness: 1.6,
                          );
                        }
                        , itemCount: 2),
                ),
              const Divider(
                endIndent: 30,
                indent: 30,
                thickness: 1.6,
              ),
              ]
                  : [
                const SizedBox(height: 150,),
                Center(
                  child: Image.asset('assets/images/not found/not.PNG',scale: 4.2,),
                ),
                const SizedBox(height: 18,),
                const Text("Email setup successful",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),),
                const SizedBox(height: 12,),
                Text("You will receive a notification if there is ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400, color: AppColors.neutral400),),
                const SizedBox(height: 5,),
                Text("something on your account",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400, color: AppColors.neutral400),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
