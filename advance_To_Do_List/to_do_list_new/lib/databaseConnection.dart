import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic database;

class TaskModal {
  int? taskId;
  String titleString;
  String descString;
  String dateString;
  int checkTask ;

  TaskModal(
      {this.taskId,
      required this.titleString,
      required this.descString,
      required this.dateString,
      required this.checkTask});

  Map<String, dynamic> mapFormat() {
    return {
      'checkTask': checkTask,
      'title': titleString,
      'description': descString,
      'date': dateString,
    
    };
  }

  @override
  String toString() {
    return "{task:$taskId, title: $titleString ,description:$descString,date:$dateString}";
  }
}

Future createDatabase() async {
  print("in create database methosd");
  database = await openDatabase(
    join(await getDatabasesPath(), 'ToDoDB.db'),
    version: 1,
    onCreate: (db, version) async {
       await db.execute('''
        CREATE TABLE Tasks (
          taskId INTEGER PRIMARY KEY,
          checkTask INTEGER,
          title TEXT,
          description TEXT,
          date TEXT
        )
      ''');
    },
  );
  await retriveData();
}

Future<void> insertData(TaskModal obj) async {
  print("INSERT INTO DATABASE");
  final localDB = await database;
  await localDB.insert("Tasks", obj.mapFormat(),
      conflictAlgorithm: ConflictAlgorithm.replace);
  await retriveData();
}

Future<List<Map<String, dynamic>>> queryData() async {
  final db = await database;
  if (db == null) {
    print('Error: Database is null.');
    return [];
  }
  return await db.query("Tasks");
}

List mapEntry = [];
Future retriveData() async {
  List<Map<String, dynamic>> list = await queryData();
  print("RETRIVE DATA : $list ");
  mapEntry = List.generate(list.length, (index) {
    return TaskModal(
        taskId: list[index]['taskId'],
        titleString: list[index]['title'],
        descString: list[index]['description'],
        dateString: list[index]['date'],
        checkTask: list[index]['checkTask']);
  });
  print(mapEntry);
}

Future<void> deleteCard(TaskModal task) async {
  print(mapEntry);
  final localDB = await database;
  await localDB.delete(
    "Tasks",
    where: 'taskId = ?',
    whereArgs: [task.taskId],
  );

  await retriveData();
}

Future<void> updateCard(TaskModal obj) async {
  final localDB = await database;
  await localDB.update("Tasks", obj.mapFormat(),
      where: 'taskId = ?', whereArgs: [obj.taskId]);
}
