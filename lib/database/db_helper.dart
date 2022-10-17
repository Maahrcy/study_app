import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class db_helper {
  init_db() async {
    String db_path = await getDatabasesPath();
    String db_name = join(db_path, 'wardrobe.db');
    var db = await openDatabase(db_name, version: 1, onCreate: onCreate, onUpgrade: onUpgrade,);

    print(db_name);
    return db;
  }

  FutureOr<void> onCreate(Database db, int version) async {
    String sql = 'CREATE TABLE RESUMO (titulo varchar(100) NOT NULL, texto TEXT NOT NULL,);';
    await db.execute(sql);

    sql = 'INSERT INTO RESUMO VALUES (titulo, texto) VALUES ("Resumo 1", "Lorem input não sei oq não sei oq não sei oq" );';
    await db.execute(sql);

    sql = 'INSERT INTO RESUMO VALUES (titulo, texto) VALUES ("Resumo 2", "Lorem input não sei oq não sei oq não sei oq" );';
    await db.execute(sql);


  }

  FutureOr<void> onUpgrade(Database db, int oldVersion, int newVersion) async {

  }
}
