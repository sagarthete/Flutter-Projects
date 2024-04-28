import 'package:flutter/material.dart';
import 'package:inherited_widget/main.dart';
import 'package:inherited_widget/skill.dart';

class EmpInfo extends StatefulWidget {
  const EmpInfo({super.key});
  @override
  State createState() => EmpInfoState();
}

Container headText(String str) {
  return Container(
    height: 40,
    width: 200,
    alignment: Alignment.center,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Color.fromARGB(255, 158, 213, 63)),
    child: Text(
      str,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
    ),
  );
}

class EmpInfoState extends State<EmpInfo> {
  @override
  Widget build(BuildContext context) {
    // ignore: invalid_use_of_protected_member
    SharedData obj = SharedData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("InheritedWidget Demo"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 24, 126, 27),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            headText("Employee Id"),
            const SizedBox(
              height: 15,
            ),
            Text(obj.empId,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            const SizedBox(
              height: 20,
            ),
            headText("Employee Name"),
            const SizedBox(
              height: 15,
            ),
            Text(obj.empName,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            const SizedBox(
              height: 20,
            ),
            headText("Employee UserName"),
            const SizedBox(
              height: 15,
            ),
            Text(obj.userName,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Skills()));
              },
              child: Container(
                height: 50,
                width: 100,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Color.fromARGB(255, 41, 131, 44)),
                child: const Text(
                  "Add Skills",
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
