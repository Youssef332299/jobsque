import 'package:flutter/cupertino.dart';

class CreateAccountState {
  String? id;
  String? phone;
  String? username;
  String? email;
  String? token;
  String? password;
  String? otp;

  String confirmPassword = "";
  bool isHidden = true;
  bool isCheck = false;

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
