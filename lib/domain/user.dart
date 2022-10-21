class User {
  String? username; //? para possible null variables
  String? password;

  User({this.username, this.password});

  User.fromJson(Map<String, dynamic> json) {
    username = json['user'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> database = <String, dynamic>{};
    database['user'] = username;
    database['password'] = password;
    return database;
  }
}