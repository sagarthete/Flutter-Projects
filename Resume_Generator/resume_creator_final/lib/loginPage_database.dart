import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

dynamic databaseLogin;

class LoginPageDatabase {
  int? userId;
  String name;
  String email;
  String password;

  LoginPageDatabase({
    this.userId,
    required this.name,
    required this.email,
    required this.password,
  });

  Map<String, dynamic> mapFormat() {
    return {
      'name': name,
      'email': email,
      'password': password,
    };
  }

  @override
  String toString() {
    return "{name:$name,email:$email,password:$password}";
  }
}

List loginEntry = [];

Future<void> createLoginDatabase() async {
  databaseLogin = openDatabase(
    join(await getDatabasesPath(), "LoginDB.db"),
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
          CREATE TABLE LoginData(
            userId INT PRIMARY KEY,
            name TEXT,
            email TEXT,
            password TEXT
          )
        ''');
    },
  );
}

Future<void> insertLoginData(LoginPageDatabase obj) async {
  print("INSERT INTO DATABASE");
  final localDB = await databaseLogin;
  await localDB.insert("LoginData", obj.mapFormat(),
      conflictAlgorithm: ConflictAlgorithm.replace);
  await retriveLoginData();
}

Future<List<Map<String, dynamic>>> queryLoginData() async {
  final db = await databaseLogin;
  if (db == null) {
    print('Error: Database is null.');
    return [];
  }
  return await db.query("LoginData");
}

Future retriveLoginData() async {
  List<Map<String, dynamic>> list = await queryLoginData();
  print("RETRIVE DATA : $list ");
  loginEntry = List.generate(list.length, (index) {
    return LoginPageDatabase(
      userId: list[index]['userId'],
      name: list[index]['name'],
      email: list[index]['email'],
      password: list[index]['password'],
    );
  });
  print(loginEntry);
}
