import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../Core/app_colors.dart';

class UnreadWidget extends StatelessWidget {
  const UnreadWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Iconsax.arrow_left)),
                const SizedBox(
                  width: 95,
                ),
                const Text("Messages",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              ],
            ),
            const SizedBox(height: 15,),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: Row(
                children: [
                  const SizedBox(width: 25,),
                  Container(
                    width: 290,
                    height: 55,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black12)),
                    child: const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Iconsax.search_normal_1,
                            color: Colors.black87,
                            size: 24,
                          ),
                          hintText: "Search messages....",
                          border: InputBorder.none),
                      autofocus: true,
                      // controller: state.searchValueController,
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black12)),
                    child: IconButton(onPressed: (){
                      // showBottomSheet(context);
                    }, icon: const Icon(Iconsax.setting_4)),
                  ),
                ],
              ),
            ),
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
                  Text(
                    "Unread",
                    style: TextStyle(fontSize: 15,color: AppColors.neutral500,fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 195,
                  ),
                  TextButton(
                    onPressed: () {}, child: Text(
                    "Read all messages",
                    style: TextStyle(fontSize: 15,color: AppColors.primary500),),
                  ),//Read all messages
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}