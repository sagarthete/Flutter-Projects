import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'resumeHome.dart';

dynamic database;

class InfoModal {
  int? userId;
  String name;
  String email;
  String contactNo;
  String tenth;
  String twelveth;
  String pSkills;
  String sSkills;
  String projects;
  String pDescription;
  String internShip;
  String iDescription;

  InfoModal(
      {this.userId,
      required this.name,
      required this.email,
      required this.contactNo,
      required this.tenth,
      required this.twelveth,
      required this.pSkills,
      required this.sSkills,
      required this.projects,
      required this.pDescription,
      required this.internShip,
      required this.iDescription});

  Map<String, dynamic> mapFormat() {
    return {
      'name': name,
      'email': email,
      'contactNo': contactNo,
      'tenth': tenth,
      'twelveth': twelveth,
      'pSkills': pSkills,
      'sSkills': sSkills,
      'projects': projects,
      'pDescription': pDescription,
      'internship': internShip,
      'iDescription': iDescription
    };
  }
}

Future createDatabase() async {
  print("in create database methosd");
  database = await openDatabase(
    join(await getDatabasesPath(), 'ResumeDatabase.db'),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
        CREATE TABLE Users(
          userId INTEGER PRIMARY KEY,
          name TEXT,
          email TEXT,
          contactNo TEXT,
          tenth TEXT,
          twelveth TEXT,
          pSkills TEXT,
          sSkills TEXT,
          projects TEXT,
          pDescription TEXT,
          internship TEXT,
          iDescription TEXT
        )
      ''');
    },
  );
  await retriveData();
}

Future<void> insertData(InfoModal obj) async {
  print("INSERT INTO DATABASE");
  final localDB = await database;
  await localDB.insert("Users", obj.mapFormat(),
      conflictAlgorithm: ConflictAlgorithm.replace);
  await retriveData();
}

Future<List<Map<String, dynamic>>> queryData() async {
  final db = await database;
  if (db == null) {
    print('Error: Database is null.');
    return [];
  }
  return await db.query("Users");
}

List mapEntry = [];
Future retriveData() async {
  List<Map<String, dynamic>> list = await queryData();
  print("RETRIVE DATA : $list ");
  mapEntry = List.generate(list.length, (index) {
    return InfoModal(
        userId: list[index]['userId'],
        name: list[index]['name'],
        email: list[index]['email'],
        contactNo: list[index]['contactNo'],
        tenth: list[index]['tenth'],
        twelveth: list[index]['twelveth'],
        pSkills: list[index]['pSkills'],
        sSkills: list[index]['sSkills'],
        projects: list[index]['projects'],
        pDescription: list[index]['pDescription'],
        internShip: list[index]['internship'],
        iDescription: list[index]['iDescription']);
  });
  print(mapEntry);
}

Future<void> deleteCard(InfoModal userGuy) async {
  print(mapEntry);
  final localDB = await database;
  await localDB.delete(
    "Users",
    where: 'userId = ?',
    whereArgs: [userGuy.userId],
  );

  await retriveData();
}

Future<void> updateCard(InfoModal obj) async {
  final localDB = await database;
  await localDB.update("Users", obj.mapFormat(),
      where: 'userId= ?', whereArgs: [obj.userId]);
}
