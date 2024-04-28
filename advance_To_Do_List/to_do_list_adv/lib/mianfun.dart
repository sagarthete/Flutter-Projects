import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'todoClass.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();

database= openDatabase(join(await getDatabasesPath(), "taskDB.db"),
      version: 1, onCreate: (db, version) async{
    await db.execute(
        'CREATE TABLE Tasks(titleString TEXT,description TEXT,date TEXT)');
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoList(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State createState() => ToDoListState();
}
