import 'package:jobsque/data/model/login/userModel.dart';

class Login {
  User user;
  String token;
  bool status;

  Login({
    required this.user,
    required this.token,
    required this.status,
  });

  factory Login.fromJson(Map<String, dynamic> jsonData){
    return Login(
        user: jsonData["user"],
        token: jsonData["token"],
        status: jsonData["status"],
    );
  }
}

