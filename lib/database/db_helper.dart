import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DbHelper {
  initDB() async {
    String dbPath = await getDatabasesPath();
    String dbName = join(dbPath, 'database.db');
    var db = await openDatabase(
      dbName,
      version: 1,
      onCreate: onCreate,
    );
    return db;
  }

  onCreate(Database db, int version) async {
    String sql = "CREATE TABLE RESUMO (titulo varchar(100) NOT NULL, texto TEXT NOT NULL);";
    await db.execute(sql);

    sql = "INSERT INTO RESUMO (titulo, texto) VALUES ('Resumo 1', 'Lorem input não sei oq não sei oq não sei oq');";
    await db.execute(sql);

    sql = "INSERT INTO RESUMO (titulo, texto) VALUES ('Resumo 2', 'Lorem input não sei oq não sei oq não sei oq');";
    await db.execute(sql);

    sql = "CREATE TABLE USER (username varchar(100) PRIMARY KEY, password varchar(100));";
    await db.execute(sql);

    sql = "INSERT INTO USER (username, password) VALUES ('maria', '123456');";
    await db.execute(sql);
  }
}
