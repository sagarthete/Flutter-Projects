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
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(0)),
              border: Border.all(color: Colors.red, width: 10),
              color: Colors.blue,
            ),
          ))),
    );
  }
}
