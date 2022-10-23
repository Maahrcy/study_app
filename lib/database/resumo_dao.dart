import 'package:study_app/database/db_helper.dart';
import 'package:study_app/domain/resumo.dart';
import 'package:sqflite/sqflite.dart';

class ResumoDao {
  Future<List<Resumo>> listaResumesMat() async {
    DbHelper dbHelper = DbHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM materia';
  }
}
