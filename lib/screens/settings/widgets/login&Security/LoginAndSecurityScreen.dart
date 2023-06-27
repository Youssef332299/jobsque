import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../Core/app_colors.dart';

class LoginAndSecurityScreen extends StatelessWidget {
  const LoginAndSecurityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                    Navigator.of(context).pushNamed("profile");
                  },
                  icon: const Icon(Iconsax.arrow_left)),
              const SizedBox(
                width: 65,
              ),
              const Text(
                "Login and security",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 105,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),

          Container(
            width: double.infinity,
            height: 42,
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                color: AppColors.neutral100,
                border: Border.all(color: AppColors.neutral200)),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Accont access",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: AppColors.neutral500),
                ),
              ],
            ),
          ), // gray Container
          const SizedBox(
            height: 40,
          ),

          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              const SizedBox(
                width: 162,
                child: Text(
                  "Email address",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              SizedBox(width: 160,height: 18,child: Text("Routes.email",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.neutral500),)),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("emailAddress");
                  },
                  icon: const Icon(Iconsax.arrow_right_1),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            endIndent: 20,
            indent: 20,
            thickness: 1.5,
          ),

          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              const SizedBox(
                width: 162,
                child: Text(
                  "Phone number",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              SizedBox(width: 160,height: 18,child: Text("Routes.email",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.neutral500),)),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("phoneNumber");
                  },
                  icon: const Icon(Iconsax.arrow_right_1)),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            endIndent: 20,
            indent: 20,
            thickness: 1.5,
          ),

          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              const SizedBox(
                width: 162,
                child: Text(
                  "Change password",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              SizedBox(width: 160,height: 18,child: Text("Routes.email",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.neutral500),)),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("changePassword");
                  },
                  icon: const Icon(Iconsax.arrow_right_1)),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            endIndent: 20,
            indent: 20,
            thickness: 1.5,
          ),

          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              const SizedBox(
                width: 162,
                child: Text(
                  "Two-step verification",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              SizedBox(width: 160,height: 18,child: Text("Routes.email",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.neutral500),)),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("two_stepVerification");
                  },
                  icon: const Icon(Iconsax.arrow_right_1)),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            endIndent: 20,
            indent: 20,
            thickness: 1.5,
          ),

          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              const SizedBox(
                width: 162,
                child: Text(
                  "Face ID",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
              ),
              SizedBox(width: 160,height: 18,child: Text("Routes.email",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.neutral500),)),
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("");
                  },
                  icon: const Icon(Iconsax.arrow_right_1)),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            endIndent: 20,
            indent: 20,
            thickness: 1.5,
          ),

        ],
      ),
    );
  }
}