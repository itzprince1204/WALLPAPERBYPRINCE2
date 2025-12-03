import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class LocalDbService extends ChangeNotifier {
  Database? _db;
  List<Map> favorites = [];

  Future initDb() async {
    var dbPath = await getDatabasesPath();
    _db = await openDatabase(join(dbPath, 'wbp.db'), version:1, onCreate: (db, v){
      db.execute('CREATE TABLE IF NOT EXISTS favorites(id TEXT PRIMARY KEY, url TEXT, type TEXT)');
    });
    await loadFavorites();
  }

  Future loadFavorites() async {
    if (_db == null) await initDb();
    favorites = await _db!.query('favorites');
    notifyListeners();
  }
}
