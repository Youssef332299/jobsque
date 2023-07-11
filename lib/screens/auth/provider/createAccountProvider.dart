import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jobsque/screens/home/provider/homeProvder.dart';
import 'package:jobsque/screens/settings/provider/profileProvider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../Core/app_colors.dart';
import '../../../Core/routes.dart';
import '../../../Data/core/urlRoutes.dart';
import 'createAccountState.dart';

class CreateAccountProvider extends ChangeNotifier {
  CreateAccountState state = CreateAccountState();

  //  createAccount_______________________________________

  void init(){
    loadIconRecent();
    checkRememberMe();
  }

  usernameOnChanged(username){
    state.usernameController.text = username;
    notifyListeners();
  }

  emailOnChanged(email){
    state.emailController.text = email;
    notifyListeners();
  }

  passwordOnChanged(password){
    state.passwordController.text = password;
    notifyListeners();
  }

  isHidden(){
    state.isHidden = !state.isHidden;
    notifyListeners();
  }

  Text_color(passwordController) {
    if (passwordController.isEmpty) {
      notifyListeners();
      return AppColors.neutral400;
    } else if (state.passwordController.text.length > 7) {
      notifyListeners();
      return AppColors.success500;
    } else {
      notifyListeners();
      return AppColors.danger500;
    }
  } // password must be at least 8 characters

  onTap(context){
    if (state.usernameController.text.isNotEmpty ||
        state.emailController.text.isNotEmpty ||
        state.passwordController.text.isNotEmpty ||
        state.passwordController.text.length > 7) {
      createAccount(
          state.usernameController.text,
          state.passwordController.text,
          state.emailController.text,
          context);
    }
  }

  createAccount(username, password, email, context) async {
    Map userData = {
      'name': username,
      'email': email,
      'password': password,
    };
    http.Response response = await http.post(
      Uri.parse(UrlRoutes.register),
      body: userData,
    );
    var responseData = await jsonDecode(response.body);
    if (response.statusCode == 200) {

      print(response.statusCode);
      Navigator.of(context).pushNamed("work");
      Map<String, dynamic> userDataList =
      Map<String, dynamic>.from(responseData);

      print(userDataList);

      setUserData(
        userDataList["token"],
        userDataList["data"]["name"],
        userDataList["data"]["email"],
        password,
        userDataList["data"]["updated_at"],
        userDataList["data"]["created_at"],
        userDataList["data"]["otp"],
        userDataList["data"]["id"],);
      return userDataList;
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Error")));
    }
  }

  //  login_______________________________________

  checkRememberMe() async {
    SharedPreferences.getInstance().then((prefs) {
        bool rememberMe = prefs.getBool('remember_me')!;
        state.isCheck = rememberMe;
        if (rememberMe == true) {
          SharedPreferences.getInstance().then((prefs) {
            state.Email = prefs.getString('emailValue') ?? "";
            state.Password = prefs.getString('passwordValue') ?? "";
            state.emailController.text = state.Email;
            state.passwordController.text = state.Password;
            notifyListeners();
          });
        }
      }
    );
  }

  emailLoginOnChanged(email){
    email = state.emailController.text;
    notifyListeners();
  }

  passwordLoginOnChanged(password){
    password = state.passwordController.text;
    notifyListeners();
  }

  isCheck(newBool){
    state.isCheck = newBool!;
    saveIsCheck(state.isCheck);
    setRememberMe(state.emailController.text, state.passwordController.text);
    notifyListeners();
  }

  loginInTap(context) async {
    if (state.emailController.text.isNotEmpty ||
        state.passwordController.text.isNotEmpty) {
      if (await login(
          state.emailController.text,
          state.passwordController.text,context) == true) {
        if (state.isCheck) {
          setRememberMe(state.emailController.text, state.passwordController.text);
        }
        Navigator.of(context).pushNamed("bottomNavigation");
      }
    } else {
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              title: Text("Error"),
              content: Text("Invalid email or password"),
            );
          });
    }
  }

  Future<void> setUserData(token, usernameValue, emailValue, passwordValue, updated_atValue, created_atValue, otpValue, idValue,) async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("token", '$token');
    sharedPreferences.setString("usernameValue", '$usernameValue');
    sharedPreferences.setString("emailValue", '$emailValue');
    sharedPreferences.setString("passwordValue", '$passwordValue');
    sharedPreferences.setString("updated_atValue", '$updated_atValue');
    sharedPreferences.setString("created_atValue", '$created_atValue');
    sharedPreferences.setString("idValue", '$idValue');
    sharedPreferences.setString("otpValue", '$otpValue');
  }

  Future getUserData(key) async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var value = await sharedPreferences.getString(key);
    return value;
  }

  void saveIsCheck(bool newBool) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('remember_me', newBool);
    notifyListeners();
  }

  Future setRememberMe(email, password) async {
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString("emailValue", email);
    await sharedPreferences.setString("passwordValue", password);
    notifyListeners();
  }

  Future login(email, password, context) async {
    var response = await http.post(Uri.parse(UrlRoutes.loginUrl),
        body: {"email": email, "password": password});
    if (response.statusCode == 200) {
      var responseData = await jsonDecode(response.body);

      Map<String, dynamic> userDataList =
      Map<String, dynamic>.from(responseData);

      setUserData(
        userDataList["token"],
        userDataList["user"]["name"],
        userDataList["user"]["email"],
        password,
        userDataList["user"]["updated_at"],
        userDataList["user"]["created_at"],
        userDataList["user"]["otp"],
        userDataList["user"]["id"],
      );
      notifyListeners();
      return true;
    } else {
      print(response.statusCode);
      return false;
    }
  }

  //  work_______________________________________

  Future<void> loadIconRecent() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    List<bool?> works = [];
    for (int i = 0; i < 6; i++) {
      bool? work = sharedPreferences.getBool('work$i');
      works.add(work ?? false);
      state.work[1][false];
    }
    print(works);
    notifyListeners();
  }

  workSelected(isSelected){
    if (isSelected == true) {
      isSelected = false;
      print("isSelected: $isSelected");
      notifyListeners();
    } else {
      isSelected = true;
      print("isSelected: $isSelected");
      notifyListeners();
    }
  }

  googleSignIn(context){
    state.googleSignIn.signIn().then((value) {
      Provider.of<HomeProvider>(context, listen: false).state.username = value!.displayName!;
      state.photoUrl = value.photoUrl!;
      state.email = value.email;
    });
    Provider.of<ProfileProvider>(context, listen: false).state.loignByGmailOrFacebook = true;
    Navigator.of(context).pushNamed(Routes.bottomNavigation);
    notifyListeners();
  }

}

