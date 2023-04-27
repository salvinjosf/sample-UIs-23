import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE notes(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        title TEXT,
        note TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )
      """);
  }

// id: the id of a item
// title, note: title and description of your note
// created_at: the time that the item was created. It will be automatically handled by SQLite

  static Future<sql.Database> db() async {
    return sql.openDatabase(
      'myNotes.db',
      version: 1,
      onCreate: (sql.Database database, int version) async {
        await createTables(database);
      },
    );
  }

  // add data to mynotes db
  static Future<int> createNote(String title, String note) async {
    final db = await SQLHelper.db(); //to open the database
    final data = {'title': title, 'note': note}; //store data
    final id = await db.insert('notes', data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace); //insert to table
    return id;
  }

  static Future<List<Map<String, dynamic>>> readNote() async {
    final db = await SQLHelper.db();
    return db.query('notes', orderBy: 'id');
  }

  static Future<int> updateNote(
      int id, String titlenew, String notenew) async {
    final db = await SQLHelper.db();
    final newdata = {
      'title': titlenew,
      'note': notenew,
      'createdAt': DateTime.now().toString()
    };
    final updated =
        await db.update('notes', newdata, where: 'id = ?', whereArgs: [id]);
    return updated;
  }

  static Future<void> deleteNote(id) async {
    final db = await SQLHelper.db();
    try {
      await db.delete('notes', where: 'id=?', whereArgs: [id]);
    } catch (err) {
      debugPrint('something went wrong');
    }
  }
}
