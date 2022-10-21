import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  Future<SharedPreferences> getInstance() async {
    return await SharedPreferences.getInstance();
  }

  login() async {
    SharedPreferences instance = await getInstance();
    instance.setBool('USER', true);
  }

  logout() async {
    SharedPreferences instance = await getInstance();
    instance.setBool('USER', false);
  }

  Future<bool> getUser() async {
    SharedPreferences instance = await getInstance();
    bool? user = instance.getBool('USER');

    if(user == null) {
      return false;
    }
    return user;
  }
}