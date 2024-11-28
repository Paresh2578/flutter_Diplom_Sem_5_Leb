import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:flutter/services.dart';

class MyDatabase {
  Future<Database> loadDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'todo.db');

    // Copy the database from assets if it doesn't exist
    final exists = await databaseExists(path);
    if (!exists) {
      ByteData data = await rootBundle.load('assets/todo.db');
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write the copied bytes to the database file
      await File(path).writeAsBytes(bytes, flush: true);
    }

    // Open the database
    return await openDatabase(path);
  }

  Future<List<Map<String, dynamic>>> getAllTasks() async {
    Database db = await loadDatabase();
    return await db.query('tasks');
  }

  Future<void> addTask(String title, int categoryId) async {
    Database db = await loadDatabase();
    await db.insert('tasks', {'title': title, 'category_id': categoryId});
  }

  Future<void> addCategories(String name) async {
    Database db = await loadDatabase();
    await db.insert('categories', {'name': name});
  }

  Future<List<Map<String, dynamic>>> getTasksWithCategories() async {
    Database db = await loadDatabase();
    return await db.rawQuery('''
      select t.id , t.title , t.category_id , c.name from tasks as t
      inner join categories as c
      on t.category_id = c.id
      ''');
  }
}
