import 'package:flutter/cupertino.dart';

class LoginAndSecurityState {

  var email = "";
  var phone = "";
  int timerLeft = 60;


  bool emailFocus = false;
  bool oldPasswordIsHidden = true;
  bool newPasswordIsHidden = true;
  bool confirmPasswordIsHidden = true;


  TextEditingController emailChangedController = TextEditingController();
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController checkPasswordController = TextEditingController();

  TextEditingController code1 = TextEditingController();
  TextEditingController code2 = TextEditingController();
  TextEditingController code3 = TextEditingController();
  TextEditingController code4 = TextEditingController();
  TextEditingController code5 = TextEditingController();
  TextEditingController code6 = TextEditingController();

}