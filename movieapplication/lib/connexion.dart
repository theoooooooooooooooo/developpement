import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

// Connexion bd
Future<Database> initDatabase() async {
  final pathDB = await getDatabasesPath();
  final path = join(pathDB, 'movieapp.db');

  return openDatabase(
    path,
    version: 1,
    onCreate: (db, version) async{
      return db.execute('''
        CREATE TABLE movies(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          titre TEXT,
          designation TEXT,
          img TEXT
        )
      ''');
    },
  );
}

// Liste des films
Future<List<Map<String, dynamic>>> getMovies(Database db) async {
  return await db.query('movies');
}