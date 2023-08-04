import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/Core/app_colors.dart';
import 'package:jobsque/screens/auth/provider/createAccountProvider.dart';
import 'package:jobsque/screens/home/provider/homeProvder.dart';
import 'package:jobsque/screens/settings/provider/profileProvider.dart';
import 'package:provider/provider.dart';
import '../../Core/routes.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
              children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 190,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.primary100,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 9,),
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed("bottomNavigation");
                                }, icon: const Icon(Iconsax.arrow_left)),
                            const SizedBox(
                              width: 110,
                            ),
                            const Text(
                              "Profile",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              width: 105,
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.of(context).pushNamed("login");
                                  Provider.of<HomeProvider>(context, listen: false).state.indexSelect = 0;
                                },
                                icon: const Icon(
                                  Iconsax.logout_1,
                                  color: Colors.red,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 138,
                  left: 147,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 50,
                    child: CircleAvatar(
                        radius: 45,
                        child:ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: context.watch<ProfileProvider>().state.loignByGmailOrFacebook
                              ? ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: context.watch<ProfileProvider>().state.hasImage
                                ? Image.file(context.watch<ProfileProvider>().state.image, width: 150, height: 150)
                                : Image.network("${Provider.of<CreateAccountProvider>(context, listen: false).state.photoUrl}"),)
                              : context.watch<ProfileProvider>().state.hasImage
                              ? Image.file(context.watch<ProfileProvider>().state.image, width: 150, height: 150)
                              : Image.asset(
                              "assets/images/profile-picture/OIP1.jpeg"),
                        ),
                        ),
                    ),
                ),
                Positioned(
                  // top: 235,
                  child: Column(
                    children: [
                      const SizedBox(height: 250,),
                      Text(
                        "${context.watch<HomeProvider>().state.username}",
                        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                      ),

                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        context.watch<ProfileProvider>().state.bioController.text,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.black38),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 100,
                        width: 330,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.shade100),
                        child: Row(
                          children: [
                            const Column(
                              children: [
                                SizedBox(height: 25),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 28,
                                    ),
                                    Text(
                                      "Applied",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.black38),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 28,
                                    ),
                                    Text(
                                      "46",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black87),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                              width: 1,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            const Column(
                              children: [
                                SizedBox(height: 25),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 28,
                                    ),
                                    Text(
                                      "Reviewed",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.black38),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 28,
                                    ),
                                    Text(
                                      "23",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black87),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Container(
                              width: 1,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                            const  Column(
                              children: [
                                SizedBox(height: 25),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Contacted",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.black38),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "16",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18,
                                          color: Colors.black87),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const  SizedBox(
                        height: 20,
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
                            width: 255,
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).pushNamed("about");
                            },
                            child: const Text(
                              "Edit",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueAccent),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 330,
                        height: context.watch<ProfileProvider>().state.aboutController.text.isEmpty || context.watch<ProfileProvider>().state.aboutController.text == null
                            ?80
                            :context.watch<ProfileProvider>().state.aboutController.text.length.toDouble() < 20
                              ? context.watch<ProfileProvider>().state.aboutController.text.length.toDouble()
                              : context.watch<ProfileProvider>().state.aboutController.text.length.toDouble() / 2.2,
                        child: Text(
                          context.watch<ProfileProvider>().state.aboutController.text.isEmpty || context.watch<ProfileProvider>().state.aboutController.text == null
                          ?"I'm Rafif Dian Axelingga, I’m UI/UX Designer, I have "
                              "experience designing UI Design for approximately 1 year."
                              " I am currently joining the Vektora studio team "
                              "based in Surakarta, Indonesia.I am a person who has "
                              "a high spirit and likes to work to achieve what I dream of."
                          :context.watch<ProfileProvider>().state.aboutController.text,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black38),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      Container(
                        width: double.infinity,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            border:
                            Border.all(width: 1, color: Colors.grey.shade300)),
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "General",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 75,
                        width: double.infinity,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 24,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed(Routes.editProfile);
                              },
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(300),
                                      color: Colors.indigo.shade100,
                                    ),
                                    child: const Icon(
                                          Iconsax.frame_1,
                                          color: Colors.blueAccent,
                                        ),
                                  ), //Icon
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const SizedBox(
                                    width: 150,
                                    child: Text(
                                      "Edit Profile",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16,
                                          color: Colors.black87),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 100,
                                  ),
                                  const Icon(Iconsax.arrow_right_1)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ), //1
                      const Divider(
                        indent: 30,
                        endIndent: 30,
                        thickness: 1,
                        height: 40,
                      ),
                      SizedBox(
                        height: 55,
                        width: double.infinity,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(Routes.portfolio);
                          },
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(300),
                                  color: Colors.indigo.shade100,
                                ),
                                child: const Icon(
                                      Iconsax.folder_favorite,
                                      color: Colors.blueAccent,
                                    ),
                              ), //Icon
                              const SizedBox(
                                width: 15,
                              ),
                              const SizedBox(
                                width: 150,
                                child: Text(
                                  "Portfolio",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.black87),
                                ),
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                                const Icon(Iconsax.arrow_right_1)
                            ],
                          ),
                        ),
                      ), //2
                      const Divider(
                        indent: 30,
                        endIndent: 30,
                        thickness: 1,
                        height: 40,
                      ),
                      SizedBox(
                        height: 55,
                        width: double.infinity,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("language");
                          },
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(300),
                                  color: Colors.indigo.shade100,
                                ),
                                child: const Icon(
                                      Iconsax.global,
                                      color: Colors.blueAccent,
                                    ),
                              ), //Icon
                              const SizedBox(
                                width: 15,
                              ),
                              const SizedBox(
                                width: 150,
                                child: Text(
                                  "Language",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.black87),
                                ),
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              const Icon(Iconsax.arrow_right_1)
                            ],
                          ),
                        ),
                      ), //3
                      const Divider(
                        indent: 30,
                        endIndent: 30,
                        thickness: 1,
                        height: 40,
                      ),
                      SizedBox(
                        height: 55,
                        width: double.infinity,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(Routes.notification);
                          },
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(300),
                                  color: Colors.indigo.shade100,
                                ),
                                child: const Icon(
                                      Iconsax.notification,
                                      color: Colors.blueAccent,
                                    ),
                              ), //Icon
                              const SizedBox(
                                width: 15,
                              ),
                              const SizedBox(
                                width: 150,
                                child: Text(
                                  "Notification",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.black87),
                                ),
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                                const Icon(Iconsax.arrow_right_1)
                            ],
                          ),
                        ),
                      ), //4
                      const Divider(
                        indent: 30,
                        endIndent: 30,
                        thickness: 1,
                        height: 40,
                      ),
                      SizedBox(
                        height: 55,
                        width: double.infinity,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(Routes.loginAndSecurity);
                          },
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(300),
                                  color: Colors.indigo.shade100,
                                ),
                                child: const Icon(
                                      Iconsax.lock,
                                      color: Colors.blueAccent,
                                    ),
                              ), //Icon
                              const  SizedBox(
                                width: 15,
                              ),
                              const SizedBox(
                                width: 150,
                                child: Text(
                                  "Login and security",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.black87),
                                ),
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              const Icon(Iconsax.arrow_right_1)
                            ],
                          ),
                        ),
                      ), //5
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(
                        indent: 30,
                        endIndent: 30,
                        thickness: 1,
                        height: 40,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            border:
                            Border.all(width: 1, color: Colors.grey.shade300)),
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "Others",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38),
                            ),
                          ],
                        ),
                      ), //Others
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: InkWell(
                          onTap: () {
                            // Navigator.of(context).pushNamed("accessibility");
                          },
                          child: const Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                width: 200,
                                child: Text(
                                  "Accessibility",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.black87),
                                ),
                              ),
                              SizedBox(
                                width: 110,
                              ),
                              Icon(Iconsax.arrow_right_1)
                            ],
                          ),
                        ),
                      ), //6
                      const Divider(
                        indent: 30,
                        endIndent: 30,
                        thickness: 1,
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed(Routes.helpCenter);
                          },
                          child: const Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                width: 200,
                                child: Text(
                                  "Help Center",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.black87),
                                ),
                              ),
                              SizedBox(
                                width: 110,
                              ),
                            Icon(Iconsax.arrow_right_1)
                            ],
                          ),
                        ),
                      ), //7
                      const  Divider(
                        indent: 30,
                        endIndent: 30,
                        thickness: 1,
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed("termsAndConditions");
                          },
                          child: const Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                width: 200,
                                child: Text(
                                  "Terms & Conditions",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.black87),
                                ),
                              ),
                              SizedBox(
                                width: 110,
                              ),
                                  Icon(Iconsax.arrow_right_1)
                            ],
                          ),
                        ),
                      ), //8
                      const  Divider(
                        indent: 30,
                        endIndent: 30,
                        thickness: 1,
                        height: 20,
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed("privacyPolicy");
                          },
                          child: const Row(
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                width: 200,
                                child: Text(
                                  "Privacy Policy",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      color: Colors.black87),
                                ),
                              ),
                              SizedBox(
                                width: 110,
                              ),
                            Icon(Iconsax.arrow_right_1)
                            ],
                          ),
                        ),
                      ), //9
                      const Divider(
                        indent: 30,
                        endIndent: 30,
                        thickness: 1,
                        height: 20,
                      ),
                      const SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
