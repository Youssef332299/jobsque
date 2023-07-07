import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:country_code_picker/country_code_picker.dart';
import '../../../core/app_colors.dart';
import '../provider/profileProvider.dart';
import '../provider/profileState.dart';
import 'dart:io';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}
 ProfileState state = ProfileState();

class _EditProfileScreenState extends State<EditProfileScreen> {

  late File _image;
  bool _hasImage = false;

  @override
  void initState() {
    super.initState();
    getUserData();
    _loadImageFromPrefs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: 840,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 270,
                child: Stack(
                  children: [
                    const Positioned(
                      top: 50,
                      left: 150,
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 10,
                      child: IconButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed("profile");
                          },
                          icon: const Icon(Iconsax.arrow_left)),
                    ),
                    Positioned(
                      top: 120,
                      left: 150,
                      child: CircleAvatar(
                        radius: 50,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child:
                          _hasImage
                              ? Image.file(_image, width: 150, height: 150)
                              : Image.asset("assets/images/profile-picture/OIP1.jpeg"),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 120,
                        left: 150,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0x3AFFFFFF)),
                          child: IconButton(
                            onPressed: _getImage,
                            icon: Icon(
                              Iconsax.camera,
                              size: 40,
                              color: AppColors.neutral100,
                            ),
                          ),
                        )),
                    Positioned(
                      left: 143,
                      top: 230,
                      child: TextButton(
                        onPressed: _getImage,
                        child: Text(
                          "Change photo",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primary500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(children: [
                const SizedBox(width: 25,),
                Text("Name",style: TextStyle(fontWeight: FontWeight.w400,color: AppColors.neutral400,fontSize: 16),),
              ],),
              Container(
                width: double.infinity,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: AppColors.neutral400),
                ),
                margin:
                const EdgeInsets.only(right: 25, left: 25,top: 15),
                child: Container(
                  width: 310,
                  height: 60,
                  alignment: Alignment.center,
                  child: TextFormField(
                    controller: state.nameController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10,),
              Row(children: [
                const SizedBox(width: 25,),
                Text("Bio",style: TextStyle(fontWeight: FontWeight.w400,color: AppColors.neutral400,fontSize: 16),),
              ],),
              Container(
                width: double.infinity,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: AppColors.neutral400),
                ),
                margin:
                const EdgeInsets.only(right: 25, left: 25,top: 15),
                child: Container(
                  width: 310,
                  height: 60,
                  alignment: Alignment.center,
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: state.bioController,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10,),
              Row(children: [
                const SizedBox(width: 25,),
                Text("Address",style: TextStyle(fontWeight: FontWeight.w400,color: AppColors.neutral400,fontSize: 16),),
              ],),
              Container(
                width: double.infinity,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: AppColors.neutral400),
                ),
                margin:
                const EdgeInsets.only(right: 25, left: 25,top: 15),
                child: Container(
                  width: 310,
                  height: 60,
                  alignment: Alignment.center,
                  child: TextFormField(
                    controller: state.addressController,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10,),
              Row(children: [
                const SizedBox(width: 25,),
                Text("No.Handphone",style: TextStyle(fontWeight: FontWeight.w400,color: AppColors.neutral400,fontSize: 16),),
              ],),
              Container(
                width: double.infinity,
                height: 60,
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: AppColors.neutral400),
                ),
                margin:
                const EdgeInsets.only(right: 25, left: 25,top: 15),
                  child:
                  TextField(
                    keyboardType: TextInputType.phone,
                    controller: state.mobileController,
                    decoration: const InputDecoration(
                      prefixIcon:
                      CountryCodePicker(
                        initialSelection: "EG",
                        showCountryOnly: false,
                        // dialogSize: Size(200, 500),
                        showOnlyCountryWhenClosed: false,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                  ),

              const SizedBox(height: 100,),
              SizedBox(
                width: 345,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary500,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(vertical: 14)),
                  onPressed: () {
                    context.read<ProfileProvider>().saveProfileEditing(
                      context,
                      state.bioController.text,
                      state.addressController.text,
                      state.mobileController.text,
                    );
                    context.read<ProfileProvider>().setUserData(
                      state.nameController.text,
                      state.bioController.text,
                      state.addressController.text,
                      state.mobileController.text,
                    );
                    _saveImageToPrefs(_image);
                  },
                  child: Text("Save",style: TextStyle(fontSize: 18,color: AppColors.neutral100),),),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _loadImageFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    final imagePath = prefs.getString('profileImage');
    if (imagePath != null) {
      setState(() {
        _image = File(imagePath);
        _hasImage = true;
      });
    }
  }

  Future<void> _saveImageToPrefs(File image) async {
    final tempDir = await getTemporaryDirectory();
    final tempPath = '${tempDir.path}/${DateTime.now().millisecondsSinceEpoch}.jpg';
    await image.copy(tempPath);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('profileImage', tempPath);
  }

  Future<void> _getImage() async {
    final myfile = await ImagePicker().pickImage(source: ImageSource.gallery);
    final image = File(myfile!.path);

    setState(() {
      _image = image;
      _hasImage = true;
    });
  }

  getUserData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      state.nameController.text = (sharedPreferences.getString("usernameValue") ?? "");
      state.bioController.text = (sharedPreferences.getString("bioValue") ?? "");
      state.addressController.text = (sharedPreferences.getString("addressValue") ?? "");
      state.mobileController.text = (sharedPreferences.getString("mobileValue") ?? "");
    });
  }


}
