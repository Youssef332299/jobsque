import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../Core/app_colors.dart';
import '../../Messages/MessagesScreen.dart';
import '../../applied/appliedScreen.dart';
import '../homeScreen.dart';
import '../../save/savedScreen.dart';
import '../../settings/profileScreen.dart';



class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {

  List<Widget> pages = [
    const HomeScreen(),
    const MessageScreen(),
    const AppliedScreen(),
    const SavedScreen(),
    ProfileScreen()
  ];
  int indexSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        // enableFeedback: false,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
        selectedItemColor: AppColors.primary500,
        // selectedIconTheme: IconThemeData(),
        currentIndex: indexSelect,
        onTap: (index) {
          setState(() {
            indexSelect = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Iconsax.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.message), label: "Messages",),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.briefcase), label: "Applied"),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.archive_minus), label: "Saved"),
          BottomNavigationBarItem(
              icon: Icon(Iconsax.frame_1), label: "Profile"),
        ],
      ),
      body:pages[indexSelect],
    );
  }
}

