class Register {
  bool status;
  Data data;
  Profile profile;
  String token;

  Register({
    required this.status,
    required this.data,
    required this.profile,
    required this.token,
  });

}

class Data {
  String name;
  String email;
  int otp;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  Data({
    required this.name,
    required this.email,
    required this.otp,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

}

class Profile {
  int userId;
  String name;
  String email;
  DateTime updatedAt;
  DateTime createdAt;
  int id;

  Profile({
    required this.userId,
    required this.name,
    required this.email,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

}
