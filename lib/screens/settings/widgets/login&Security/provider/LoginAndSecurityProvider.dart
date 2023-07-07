import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../Core/routes.dart';
import 'loginAndSecurityState.dart';

class LoginAndSecurityProvider extends ChangeNotifier{
  LoginAndSecurityState state = LoginAndSecurityState();

  // LoginAndSecurity________________________________________
  void init(context){
    getEmailValue();
    getEmailControllerValue();
  }

  Future<void> getEmailValue() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    state.email = (sharedPreferences.getString("emailValue") ?? "");
  }


  // emailAddress________________________________________
  Future<void> getEmailControllerValue() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    state.emailChangedController.text = sharedPreferences.getString("emailValue")!;
    notifyListeners();
  }

  onEmailChangedComplete(context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString("emailValue", state.emailChangedController.text);
    Navigator.of(context).pop();
    notifyListeners();
  }


  // changePassword________________________________________
  getOldPasswordIsHidden(){
    state.oldPasswordIsHidden = !state.oldPasswordIsHidden;
    notifyListeners();
  }

  getNewPasswordIsHidden(){
    state.newPasswordIsHidden = !state.newPasswordIsHidden;
    notifyListeners();
  }

  getConfirmPasswordIsHidden(){
    state.confirmPasswordIsHidden = !state.confirmPasswordIsHidden;
    notifyListeners();
  }

  onTapSaveNewPassword(context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String oldPassword =  sharedPreferences.getString("passwordValue")!;
    if(state.confirmPasswordController.text != state.newPasswordController.text){
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text("Error"),
              content: Text("New password must be equal confirm password"),
            );
          });
    }else if(oldPassword != state.oldPasswordController.text){
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text("Error"),
              content: Text("Check your old password"),
            );
          });
    }else{
      await sharedPreferences.setString("passwordValue",state.newPasswordController.text);
      Navigator.of(context).pushNamed("loginAndSecurity");
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Saved")));
    }

  }


  // sendCode________________________________________
  sendCode(context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String newPassword =  sharedPreferences.getString("passwordValue")!;
    print(newPassword);

    if(state.checkPasswordController.text == newPassword){
      Navigator.of(context).pushNamed("two_stepVerification5");

    }else if(state.checkPasswordController.text.isEmpty){
      ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Type your password")));
    } else{
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text("Error"),
              content: Text("Check your password"),
            );
          });
    }
  }


  // Verify________________________________________________________
  verify(context){
    String code = "";
    String inputValue =
        state.code1.text +
        state.code2.text +
        state.code3.text +
        state.code4.text +
        state.code5.text +
        state.code6.text ;

    if(inputValue == code && state.timerLeft != 0){
      Navigator.of(context).pushNamed(Routes.loginAndSecurity);
    }else if(state.timerLeft == 0){
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text("Time is left"),
              content: Text("Try again"),
            );
          });
    }else{
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text("Wrong code"),
              // content: Text(""),
            );
          });
    }
  }

  statTimer(context){
    // if(state.timerLeft %2 == 0){
    //   Timer.periodic(const Duration(seconds: 2), (timer){
    //     if(state.timerLeft > 0){
    //       state.timerLeft --;
    //       notifyListeners();
    //     }
    //   });
    // }else{
    // Timer.periodic(const Duration(seconds: 1), (timer){
    //   if(state.timerLeft > 0){
    //     state.timerLeft --;
    //     notifyListeners();
    //   }
    // });
    // }
    Timer.periodic(const Duration(seconds: 1), (timer){
      if(state.timerLeft > 0){
        state.timerLeft --;
        notifyListeners();
      }
    });

  }


  // faceID__________________________________________________________

}

