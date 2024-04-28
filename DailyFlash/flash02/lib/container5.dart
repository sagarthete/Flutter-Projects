import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment(),
    );
  }
}

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State createState() => MyAppState();
}

class MyAppState extends State<Assignment> {
  bool isClicked = false;
  String str = "Click Me";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Changing container color"),
          centerTitle: true,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
        ),
        body: Center(
          child: Container(
            color: isClicked ? Colors.blue : Colors.red,
            padding: const EdgeInsets.all(10),
            height: 150,
            width: 300,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: isClicked
                        ? const MaterialStatePropertyAll(Colors.blue)
                        : const MaterialStatePropertyAll(Colors.red)),
                onPressed: () {
                  isClicked = true;
                  str = "Clicked";
                  setState(() {});
                },
                child: Text(
                  str,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                )),
          ),
        ));
  }
}
