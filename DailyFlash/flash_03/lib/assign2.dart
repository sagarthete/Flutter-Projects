import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
                padding: const EdgeInsets.all(10),
                height: 200,
                width: 320,
                decoration: BoxDecoration(
                    border: Border.all(width: 3),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/474x/42/2b/b2/422bb20ca8140882840656315ad2e1de.jpg"),
                        fit: BoxFit.fill)),
                child: const Center(
                  child: Text(
                    "Core2Web",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ))));
  }
}
