import 'package:study_app/database/db_helper.dart';
import 'package:study_app/domain/materia.dart';
import 'package:sqflite/sqflite.dart';

import 'db_helper.dart';

class MateriaDao {
  Future<List<Materia>> listaMaterias() async {
    DbHelper dbHelper = DbHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM materia';
    return listaMaterias();
  }
}
