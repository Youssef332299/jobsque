import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../Core/app_colors.dart';
import '../provider/profileState.dart';

class LangaugeScreen extends StatefulWidget {
  const LangaugeScreen({super.key});

  @override
  State<LangaugeScreen> createState() => _LangaugeScreenState();
}

ProfileState state = ProfileState();

class _LangaugeScreenState extends State<LangaugeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 152,
                ),
                const Text(
                  "Language",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 100,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("profile");
                    },
                    icon: const Icon(Iconsax.arrow_left)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),

            RadioListTile(
                value: state.country,
                activeColor: AppColors.primary500,
                groupValue: "England",
                title: const Row(
                  children: [
                    SizedBox(width: 188,),
                    Text(
                      "England",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                secondary: Image.asset(
                  "assets/images/language flags/England.png",
                  scale: 2.9,
                ),
                selected: state.country == "Eng" ? true : false,
                onChanged: (val) {
                  setState(() {
                    state.country = "England";
                  });
                }),
            const Divider(
              thickness: 1.5,
              indent: 20,
              endIndent: 20,
            ),

            RadioListTile(
                activeColor: AppColors.primary500,
                value: state.country,
                title: const Row(
                  children: [
                    SizedBox(width: 177,),
                    Text(
                      "Indonesia",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                groupValue: "Indonesia",
                secondary: Image.asset(
                  "assets/images/language flags/Indonesia.png",
                  scale: 2.9,
                ),
                selected: state.country == "Indonesia" ? true : false,
                onChanged: (val) {
                  setState(() {
                    // state.country = "Indonesia";
                  });
                }),
            const Divider(
              thickness: 1.5,
              indent: 20,
              endIndent: 20,
            ),

            RadioListTile(
                activeColor: AppColors.primary500,
                value: state.country,
                title: const Row(
                  children: [
                    SizedBox(width: 200,),
                    Text(
                      "Arabic",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                groupValue: "Arabic",
                secondary: Image.asset(
                  "assets/images/language flags/Saudi Arabia.png",
                  scale: 2.9,
                ),
                selected: state.country == "Arabic" ? true : false,
                onChanged: (val) {
                  setState(() {
                    // state.country = "Arabic";
                  });
                }),
            const Divider(
              thickness: 1.5,
              indent: 20,
              endIndent: 20,
            ),

            RadioListTile(
                activeColor: AppColors.primary500,
                value: state.country,
                groupValue: "Chinese",
                title: const Row(
                  children: [
                    SizedBox(width: 188,),
                    Text(
                      "Chinese",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                secondary: Image.asset(
                  "assets/images/language flags/China.png",
                  scale: 2.9,
                ),
                selected: state.country == "Chinese" ? true : false,
                onChanged: (val) {
                  setState(() {
                    // state.country = "Chinese";
                  });
                }),
            const Divider(
              thickness: 1.5,
              indent: 20,
              endIndent: 20,
            ),

            RadioListTile(
                activeColor: AppColors.primary500,
                value: state.country,
                title: const Row(
                  children: [
                    SizedBox(width: 203,),

                    Text(
                      "Dutch",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                groupValue: "Dutch",
                secondary: Image.asset(
                  "assets/images/language flags/Netherlands.png",
                  scale: 2.9,
                ),
                selected: state.country == "Dutch" ? true : false,
                onChanged: (val) {
                  setState(() {
                    // state.country = "Netherlands";
                  });
                }),
            const Divider(
              thickness: 1.5,
              indent: 20,
              endIndent: 20,
            ),

            RadioListTile(
                activeColor: AppColors.primary500,
                value: state.country,
                groupValue: "France",
                title: const Row(
                  children: [
                    SizedBox(width: 195,),
                    Text(
                      "France",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                secondary: Image.asset(
                  "assets/images/language flags/France.png",
                  scale: 2.9,
                ),
                selected: state.country == "France" ? true : false,
                onChanged: (val) {
                  setState(() {
                    // state.country = "France";
                  });
                }),
            const Divider(
              thickness: 1.5,
              indent: 20,
              endIndent: 20,
            ),

            RadioListTile(
                activeColor: AppColors.primary500,
                value: state.country,
                groupValue: "German",
                title: const Row(
                  children: [
                    SizedBox(width: 188,),
                    Text(
                      "German",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                secondary: Image.asset(
                  "assets/images/language flags/Germany.png",
                  scale: 2.9,
                ),
                selected: state.country == "German" ? true : false,
                onChanged: (val) {
                  setState(() {
                    // state.country = "German";
                  });
                }),
            const Divider(
              thickness: 1.5,
              indent: 20,
              endIndent: 20,
            ),

            RadioListTile(
                activeColor: AppColors.primary500,
                value: state.country,
                title: const Row(
                  children: [
                    SizedBox(width: 175,),
                    Text(
                      "Japanese",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                groupValue: "Japanese",
                secondary: Image.asset(
                  "assets/images/language flags/Japan.png",
                  scale: 2.9,
                ),
                selected: state.country == "Japanese" ? true : false,
                onChanged: (val) {
                  setState(() {
                    // state.country = "Japanese";
                  });
                }),
            const Divider(
              thickness: 1.5,
              indent: 20,
              endIndent: 20,
            ),

            RadioListTile(
                activeColor: AppColors.primary500,
                value: state.country,
                title: const Row(
                  children: [
                    SizedBox(width: 192,),
                    Text(
                      "Korean",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                groupValue: "Korean",
                secondary: Image.asset(
                  "assets/images/language flags/South Korea.png",
                  scale: 2.9,
                ),
                selected: state.country == "Korean" ? true : false,
                onChanged: (val) {
                  setState(() {
                    // state.country =  "Korean" ;
                  });
                }),
            const Divider(
              thickness: 1.5,
              indent: 20,
              endIndent: 20,
            ),

            RadioListTile(
                activeColor: AppColors.primary500,
                value: state.country,
                groupValue: "Portuguese",
                title: const Row(
                  children: [
                    SizedBox(width: 160,),

                    Text(
                      "Portuguese",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                secondary: Image.asset(
                  "assets/images/language flags/Portugal.png",
                  scale: 2.9,
                ),
                selected: state.country == "Portuguese" ? true : false,
                onChanged: (val) {
                  setState(() {
                    // state.country = "Portuguese";
                  });
                }),
            const Divider(
              thickness: 1.5,
              indent: 20,
              endIndent: 20,
            ),
          ],
        ),
      ),
    );
  }
}
