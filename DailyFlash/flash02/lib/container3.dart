import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("AppBar border"),
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
            width: 200,
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.only(topRight: Radius.circular(20)),
              border: Border.all(
                  width: 5, color: const Color.fromARGB(255, 144, 56, 143)),
              color: const Color.fromARGB(255, 236, 217, 240),
            ),
          ))),
    );
  }
}
