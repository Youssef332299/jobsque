// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';
// import '../../../Data/core/urlRoutes.dart';
// import '../../model/login/userModel.dart';
//
// class LoginServices{
//   Future<List<User>> getData() async {
//     // Future login(email, password, context) async {
//
//       var response = await http.post(Uri.parse(UrlRoutes.loginUrl),
//           body: {"email": email, "password": password});
//       if (response.statusCode == 200) {
//         var responseData = await jsonDecode(response.body);
//
//         Map<String, dynamic> userDataList =
//         Map<String, dynamic>.from(responseData);
//         Navigator.of(context).pushNamed("bottomNavigation");
//         return userDataList;
//       } else {
//         print(response.statusCode);
//
//     }
//
//   }
// }