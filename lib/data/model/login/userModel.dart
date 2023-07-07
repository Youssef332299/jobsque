

class User {
  final List<dynamic> user;

  User({required this.user,});

  factory User.fromJson(Map<String, dynamic> jsonData){
    return User(user: jsonData["user"],);
  }

}


// int id;
// String name;
// String otp;
// String email;
// dynamic towStep;
// dynamic emailVerifiedAt;
// DateTime createdAt;
// DateTime updatedAt;


// required this.id,
// required this.name,
// required this.otp,
// this.towStep,
// required this.email,
// this.emailVerifiedAt,
// required this.createdAt,
// required this.updatedAt,

// id: jsonData["user"],
// name: jsonData["user"],
// otp: jsonData["user"],
// email: jsonData["user"],
// createdAt: jsonData["user"],
// updatedAt: jsonData["user"],