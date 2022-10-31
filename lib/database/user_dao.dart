import 'package:study_app/database/db_helper.dart';
import 'package:study_app/domain/user.dart';
import 'package:sqflite/sqflite.dart';

class UserDao {
  Future<void> saveUser({required User user}) async {
    DbHelper dbHelper = DbHelper();
    Database db = await dbHelper.initDB();
    print('sim');
    print('entrou aq');
    await db.insert('USER', user.toJson());
  }

  Future<bool> aut({required String user, required String password}) async {
    DbHelper dbHelper = DbHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM USER WHERE username = ? AND password = ?;';
    var result = await db.rawQuery(sql, [user, password]);
    return result.isNotEmpty;
  }

  userList() async {
    DbHelper dbHelper = DbHelper();
    Database db = await dbHelper.initDB();

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
