import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MyDatabase {
  static const tableName = "Todu";

  Future<Database> initDatabase() async {
    Directory directory = await getApplicationCacheDirectory();
    String path = join(directory.path, 'curd.db');
    var db = await openDatabase(path, onCreate: (db, version) async {
      await db.execute('''
          create table $tableName(
           id INTEGER PRIMARY KEY AUTOINCREMENT,
           title TEXT NOT NULL,
           dec TEXT NOT NULL
          )
        ''');
    }, onUpgrade: (db, oldVersion, newVersion) {
      // if(newVersion > oldVersion){
      //   db.execute('ALTER TABLE TblUser()');
      // }
    }, version: 1);
    return db;
  }

  Future<int> insert(Map<String, dynamic> todu) async {
    Database db = await initDatabase();
    return await db.insert(tableName, todu);
  }

  Future<List<Map<String, dynamic>>> getAllTodu() async {
    Database db = await initDatabase();
    return db.query(tableName);
  }

  Future<int> updateTodu(String title, String dec, int id) async {
    Database db = await initDatabase();

    return await db.update(tableName, {'title': title, 'dec': dec},
        where: 'id = ?', whereArgs: [id]);
  }

  Future<int> deleteTodu(int id) async {
    Database db = await initDatabase();
    return await db.delete(tableName, where: 'id = ?', whereArgs: [id]);
  }
}
