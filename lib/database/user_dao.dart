import 'package:study_app/database/db_helper.dart';
import 'package:study_app/domain/user.dart';
import 'package:sqflite/sqflite.dart';

class userDao {
  saveUser({required User user}) async {
    db_helper dbHelper = db_helper();
    Database db = dbHelper.init_db();
    await db.insert('USER', user.toJson());
  }

  Future<bool> aut ({required String user, required String password}) async {
    db_helper dbHelper = db_helper();
    Database db = await dbHelper.init_db();

    String sql = 'SELECT * FROM USER WHERE username = ? AND password = ?;';
    var result = await db.rawQuery(sql, [user, password]);
    return result.isNotEmpty;
  }

  userList() async {
    db_helper dbHelper = db_helper();
    Database db = await dbHelper.init_db();

    String sql = 'SELECT * FROM USER;';
    var result = await db.rawQuery(sql);

    List<User> list = <User>[];
    for (var json in result) {
      User user = User.fromJson(json);
      list.add(user);
    }
    return list;
  }
}