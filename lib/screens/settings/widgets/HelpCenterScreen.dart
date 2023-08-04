import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/Core/app_colors.dart';
import 'package:jobsque/screens/settings/provider/profileProvider.dart';
import 'package:provider/provider.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(Iconsax.arrow_left),
                    )),
                const SizedBox(
                  width: 90,
                ),
                const SizedBox(
                  child: Text(
                    "Help Center",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
                height: 50,
                margin: const EdgeInsets.only(left: 22, right: 22, top: 30),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(color: Colors.black12)),
                      prefixIcon: const Icon(
                        Iconsax.search_normal_1,
                        size: 21,
                        color: Colors.black87,
                      ),
                      hintText: "What can we help?",
                      hintStyle:
                      TextStyle(color: AppColors.neutral400, fontSize: 14),
                      border: InputBorder.none),
                )),
            SizedBox(
              height: 700,
              width: double.infinity,
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, i) {
                    return InkWell(
                      onTap: () {
                        context
                            .read<ProfileProvider>()
                            .onTapIconArrow(i);
                      },
                      child: Container(
                        margin:
                        const EdgeInsets.only(left: 23, right: 23, top: 15),
                        height: context.watch<ProfileProvider>().state.isOpened[i]
                            ? 230
                            : 55,
                        alignment:
                        context.watch<ProfileProvider>().state.isOpened[i]
                            ? Alignment.topCenter
                            : Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColors.neutral300),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Lorem ipsum dolor sit amet",
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  width: 99,
                                ),
                              context.watch<ProfileProvider>().state.isOpened[i]
                                        ? Icon(
                                      Iconsax.arrow_up_24,
                                      color: AppColors.neutral400,
                                    )
                                        : Icon(
                                      Iconsax.arrow_down_14,
                                      color: AppColors.neutral400,
                                    )
                              ],
                            ),
                            SizedBox(
                              height: context
                                  .watch<ProfileProvider>()
                                  .state
                                  .isOpened[i]
                                  ? 20
                                  : 0,
                            ),
                            SizedBox(
                              child: context
                                  .watch<ProfileProvider>()
                                  .state
                                  .isOpened[i]
                                  ? Column(
                                children: [
                                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing  ",
                                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.neutral400),),
                                  const SizedBox(height: 3,),
                                  Text("elit. Fusce ultricies mi enim, quis vulputate nibh         ",
                                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.neutral400),),
                                  const SizedBox(height: 3,),
                                  Text("faucibus at. Maecenas est ante, suscipit vel sem       ",
                                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.neutral400),),
                                  const SizedBox(height: 3,),
                                  Text("non, blandit blandit erat. Praesent pulvinar ante et     ",
                                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.neutral400),),
                                  const SizedBox(height: 3,),
                                  Text("felis porta vulputate. Curabitur ornare velit nec           ",
                                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.neutral400),),
                                  const SizedBox(height: 3,),
                                  Text("fringilla finibus. Phasellus mollis pharetra ante, in      ",
                                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.neutral400),),
                                  const SizedBox(height: 3,),
                                  Text("ullamcorper massa ullamcorper et. Curabitur ac leo  ",
                                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.neutral400),),
                                  const SizedBox(height: 3,),
                                  Text("sit amet leo interdum mattis vel eu mauris.                 ",
                                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.neutral400),),
                                  const SizedBox(height: 3,),
                                ],
                              )
                                  : Text(""),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
