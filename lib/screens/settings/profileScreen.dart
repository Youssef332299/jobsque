import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque/Core/app_colors.dart';
import 'package:jobsque/screens/settings/provider/profileState.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../Core/routes.dart';

// ignore: must_be_immutable
class ProfileScreen extends StatefulWidget {
   const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  ProfileState state = ProfileState();
  dynamic username;

   getUsernameValue() async {
     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
     setState(() {
       username = (sharedPreferences.getString("usernameValue") ?? "");
     });
   }

  @override
  void initState() {
    super.initState();
    getUsernameValue();
    // Future.delayed(Duration.zero, () => getImageGallery());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
      child: Column(children: [
        // SizedBox(height: 15,),
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
                          width: 115,
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
                            onPressed: () {},
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
              left: 150,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 50,
                child: CircleAvatar(
                     radius: 45,
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(100),
                       child
                           // : state.galleryImage != null
                           // ? Image.file(state.galleryImage)
                           : Image.asset("assets/images/profile-picture/OIP1.jpeg",),

                     )
                ),
              ),
            ),
            Positioned(
              // top: 235,
              child: Column(
                children: [
                  const SizedBox(height: 270,),
                   Text(
                    "$username",
                    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),

                  const SizedBox(
                    height: 11,
                  ),
                  const Text(
                    "Senior UI/UX Designer",
                    style: TextStyle(
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
                  const  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "About",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black45),
                      ),
                      SizedBox(
                        width: 265,
                      ),
                      Text(
                        "Edit",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Colors.blueAccent),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    width: 330,
                    height: 80,
                    child: Text(
                      "I'm Rafif Dian Axelingga, I’m UI/UX Designer, I have experience designing UI Design for approximately 1 year. I am currently joining the Vektora studio team based in Surakarta, Indonesia.I am a person who has a high spirit and likes to work to achieve what I dream of.",
                      style: TextStyle(
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
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Iconsax.frame_1,
                                      color: Colors.blueAccent,
                                    )),
                              ), //Icon
                              const SizedBox(
                                width: 15,
                              ),
                              const Text(
                                "Edit Profile",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.black87),
                              ),
                              const SizedBox(
                                width: 161,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Iconsax.arrow_right_1))
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
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Iconsax.folder_favorite,
                                  color: Colors.blueAccent,
                                )),
                          ), //Icon
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "Portfolio",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black87),
                          ),
                          const SizedBox(
                            width: 175,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Iconsax.arrow_right_1))
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
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Iconsax.global,
                                  color: Colors.blueAccent,
                                )),
                          ), //Icon
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "Langauge",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black87),
                          ),
                          const SizedBox(
                            width: 166,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Iconsax.arrow_right_1))
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
                            child: IconButton(
                                onPressed: () {},
                                icon:const  Icon(
                                  Iconsax.notification,
                                  color: Colors.blueAccent,
                                )),
                          ), //Icon
                          const SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "Notification",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black87),
                          ),
                          const SizedBox(
                            width: 150,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Iconsax.arrow_right_1))
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
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Iconsax.lock,
                                  color: Colors.blueAccent,
                                )),
                          ), //Icon
                          const  SizedBox(
                            width: 15,
                          ),
                          const Text(
                            "Login and security",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black87),
                          ),
                          const SizedBox(
                            width: 100,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Iconsax.arrow_right_1))
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
                        Navigator.of(context).pushNamed("accessibility");
                      },
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 30,
                          ),
                          const  SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "Accesibility",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black87),
                          ),
                          const SizedBox(
                            width: 213,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon:const  Icon(Iconsax.arrow_right_1))
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
                      child: Row(
                        children: [
                          const  SizedBox(
                            width: 30,
                          ),
                          const  SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "Help Center",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black87),
                          ),
                          const  SizedBox(
                            width: 209,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Iconsax.arrow_right_1))
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
                            .pushNamed(Routes.termsAndConditions);
                      },
                      child: Row(
                        children: [
                          const  SizedBox(
                            width: 30,
                          ),
                          const   SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "Terms & Conditions",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black87),
                          ),
                          const  SizedBox(
                            width: 152,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon:const  Icon(Iconsax.arrow_right_1))
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
                        Navigator.of(context).pushNamed(Routes.privacyPolicy);
                      },
                      child: Row(
                        children: [
                          const  SizedBox(
                            width: 30,
                          ),
                          const  SizedBox(
                            width: 5,
                          ),
                          const  Text(
                            "Privacy Policy",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black87),
                          ),
                          const  SizedBox(
                            width: 190,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Iconsax.arrow_right_1))
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
