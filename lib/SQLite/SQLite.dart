import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SQLiteDemo extends StatefulWidget {
  const SQLiteDemo({super.key});

  @override
  State<SQLiteDemo> createState() => _SQLiteDemoState();
}

class _SQLiteDemoState extends State<SQLiteDemo> {
  Database? database;
  Future<void> createDb() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');

    database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER)');
    });
  }

  Future<void> insertData() async {
    await database!.insert('Test', {
      "id": 2,
      "name": "Abc",
      "value": 1001,
    });
  }

  Future<void> getData() async {
    List<Map<String, dynamic>> data = await database!.query('Test');
    print('DATA-----> $data');
  }

  Future<void> updateData() async {
    database!.update(
        "Test",
        {
          "name": "Darshil",
        },
        where: "id=?",
        whereArgs: [0]);
  }

  Future<void> deleteData() async {
    database!.delete("Test", where: "name=?", whereArgs: ["Darshil"]);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    createDb();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                insertData();
              },
              child: Text('Add'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                getData();
              },
              child: Text('Get'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                updateData();
              },
              child: const Text('Update'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                deleteData();
              },
              child: const Text('delete'),
            ),
          ],
        ),
      ),
    );
  }
}
