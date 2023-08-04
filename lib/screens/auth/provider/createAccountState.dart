import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';

class CreateAccountState {
  String? id;
  String? phone;
  String? username;
  String? email;
  String? token;
  String? password;
  String? otp;
  String? photoUrl;

  String confirmPassword = "";
  bool isHidden = true;
  bool isCheck = false;
  bool isLoading = false;

  final GoogleSignIn googleSignIn = GoogleSignIn();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();


  String Email = "";
  String Password = "";

  List<Map> work = [
    {"UI/UX Designer": false},
    {"Ilustrator Designer": false},
    {"Developer": false},
    {"Management": false},
    {"Information Technology": false},
    {"Research and Analytics": false},
  ];
}
