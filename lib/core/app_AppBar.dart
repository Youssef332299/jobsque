import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String routeName;

  const CustomAppBar({super.key, required this.title, required this.routeName});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      title: Text(title,style: TextStyle(fontWeight: FontWeight.w500,color: AppColors.neutral900,fontSize: 20),),
      elevation: 0,
      leading: IconButton(
        icon: Icon(Iconsax.arrow_left,color: AppColors.neutral900,), onPressed: () {
          Navigator.of(context).pushNamed(routeName);
      },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}