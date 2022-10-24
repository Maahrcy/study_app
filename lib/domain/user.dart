class User {
  String? username;
  String? password;

  User({this.username, this.password});

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> database = <String, dynamic>{};
    database['username'] = username;
    database['password'] = password;
    return database;
  }
}
