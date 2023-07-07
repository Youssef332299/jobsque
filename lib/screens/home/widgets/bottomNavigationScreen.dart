import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/screens/home/provider/homeProvder.dart';
import 'package:provider/provider.dart';
import '../../../Core/app_colors.dart';


class BottomNavigationScreen extends StatelessWidget {
  const BottomNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        // elevation: 0.0,
        // fixedColor: Colors.white,
        enableFeedback: true,
        backgroundColor: Colors.blueAccent,
        showUnselectedLabels: true,
        unselectedItemColor: AppColors.neutral400,
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
        selectedItemColor: AppColors.primary500,
        currentIndex: context.watch<HomeProvider>().state.indexSelect,
        onTap: (index) {
          context.read<HomeProvider>().onTapBottomNavigation(index);
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Iconsax.home4), activeIcon: Icon(Iconsax.home_15), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.message4), activeIcon: Icon(Iconsax.message5),label: "Messages"),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.briefcase4), activeIcon: Padding(padding: EdgeInsets.only(left: 25),child: Icon(Iconsax.briefcase5),), label: "Applied"),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.archive_minus4), activeIcon: Icon(Iconsax.archive_15), label: "Saved"),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.frame_1), activeIcon: Icon(Iconsax.frame5), label: "Profile")
        ],
      ),
      body:context.watch<HomeProvider>().state.pages[context.watch<HomeProvider>().state.indexSelect],
    );
  }
}
