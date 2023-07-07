import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:country_code_picker/country_code_picker.dart';
import '../../../core/app_colors.dart';
import '../provider/profileProvider.dart';

class EditAboutWidget extends StatelessWidget {
  const EditAboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 840,
          width: double.infinity,
          child: Column(
              children: [
                const  SizedBox(
                  height: 220,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
                      "About",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black45),
                    ),
                    const SizedBox(
                      width: 250,
                    ),
                    InkWell(
                      onTap: (){
                        context.read<ProfileProvider>().setEditAbout(context);
                      },
                      child: const Text(
                        "Save",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.blueAccent),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 260,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.neutral400),
                  ),
                  margin: const EdgeInsets.only(right: 25, left: 25, top: 15),
                  child: Container(
                    width: 310,
                    height: 260,
                    alignment: Alignment.topCenter,
                    child: TextFormField(
                      maxLines: 7,
                      maxLength:400,
                      autofocus: true,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: context.watch<ProfileProvider>().state.aboutController,
                          textInputAction: TextInputAction.send,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
          ),
        ),
      ),
    );

  }
}
