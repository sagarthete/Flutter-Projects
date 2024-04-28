import 'package:flutter/material.dart';
import 'package:inherited_widget/empInfo.dart';

void main() {
  runApp(const MyApp());
}

// ignore: must_be_immutable
class SharedData extends InheritedWidget {
 String empId;
  String empName;
  String userName;
  List skills;
  SharedData(
      {super.key,
      required this.empId,
      required this.empName,
      required this.userName,
      required this.skills,
      required super.child});

  @override
  bool updateShouldNotify(SharedData oldWidget) {
    return (empId != oldWidget.empId &&
        empName != oldWidget.empName &&
        userName != oldWidget.userName);
  }

  @protected
  static SharedData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SharedData>()!;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedData(
      empId: "",
      empName: "",
      userName: "",
      skills: [],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainApp(),
      ),
    );
  }
}

Container decoratedField(TextEditingController ctrl, String hText) {
  return Container(
    height: 60,
    width: 370,
    child: TextField(
      controller: ctrl,
      decoration: InputDecoration(
          hintText: hText,
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(width: 2, color: Colors.black)),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
              borderSide: BorderSide(width: 2, color: Colors.black))),
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  TextEditingController id = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController uName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "InheritedWidget Demo",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 20, 126, 23),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            decoratedField(id, "enter Id"),
            const SizedBox(
              height: 30,
            ),
            decoratedField(name, "enter name"),
            const SizedBox(
              height: 30,
            ),
            decoratedField(uName, "enter UserName"),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                SharedData obj = SharedData.of(context);
                obj.empId = id.text;
                obj.empName = name.text;
                obj.userName = uName.text;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EmpInfo()));
              },
              child: Container(
                height: 49,
                alignment: Alignment.center,
                width: 100,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Color.fromARGB(255, 25, 128, 35)),
                child: const Text(
                  "Submit",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
