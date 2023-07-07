import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../Core/app_colors.dart';


class PrivacyPolicyScreen extends StatelessWidget{
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
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
                  width: 80,
                ),
                const SizedBox(
                  child: Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Lorem ipsum dolor",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.   ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.5,),
              child: Text(
                "Nam vel augue sit amet est molestie viverra. Nunc quis    ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.5,),
              child: Text(
                "bibendum orci. Donec feugiat massa mi, at hendrerit        ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.5,),
              child: Text(
                "mauris rutrum at. Lorem ipsum dolor sit amet,                    ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.5,),
              child: Text(
                "consectetur adipiscing elit. Nam vel augue sit amet est    ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.5,),
              child: Text(
                "molestie viverra. Nunc quis bibendum orci. Donec             ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.5,),
              child: Text(
                "feugiat massa mi, at hendrerit mauris rutrum at. Lorem    ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.5,),
              child: Text(
                "ipsum dolor sit amet, consectetur adipiscing elit. Nam     ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.5,),
              child: Text(
                "vel augue sit amet est molestie viverra. Nunc quis             ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.5,),
              child: Text(
                "bibendum orci. Donec feugiat massa mi, at hendrerit        ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.5),
              child: Text(
                "maurisrutrum at.                                                                       ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30,),
              child: Text(
                "Nunc quis bibendum orci. Donec feugiat massa mi, at       ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3.5,),
              child: Text(
                "hendrerit mauris rutrum at. Lorem ipsum dolor sit amet,   ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3,),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.   ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3,),
              child: Text(
                "Nam vel augue sit amet est molestie viverra. Nunc             ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3,),
              child: Text(
                "quis bibendum orci. Donec feugiat massa mi, at hendrerit",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3,),
              child: Text(
                "mauris rutrum at.  Nam vel augue sit amet est                    ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3,),
              child: Text(
                "molestie viverra. Nunc quis bibendum orci. Donec             ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),

            const SizedBox(
              height: 30,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Data controllers and contract ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),

            const SizedBox(height: 5,),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "partners",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit.   ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3,),
              child: Text(
                "Nam vel augue sit amet est molestie viverra. Nunc quis    ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3,),
              child: Text(
                "bibendum orci. Donec feugiat massa mi, at hendrerit        ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3,),
              child: Text(
                "mauris rutrum at. Lorem ipsum dolor sit amet,                    ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3,),
              child: Text(
                "consectetur adipiscing elit. Nam vel augue sit amet est    ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3,),
              child: Text(
                "molestie viverra. Nunc quis bibendum orci. Donec             ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3,),
              child: Text(
                "feugiat massa mi, at hendrerit mauris rutrum at. Lorem    ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3,),
              child: Text(
                "ipsum dolor sit amet, consectetur adipiscing elit. Nam     ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3,),
              child: Text(
                "vel augue sit amet est molestie viverra. Nunc quis             ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3,),
              child: Text(
                "bibendum orci. Donec feugiat massa mi, at hendrerit        ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Text(
                "maurisrutrum at.                                                                       ",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: AppColors.neutral400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}