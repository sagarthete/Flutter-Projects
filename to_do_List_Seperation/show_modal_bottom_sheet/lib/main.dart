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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bottom Sheet"),
        ),
        body: const Column(),
        floatingActionButton: FloatingActionButton(onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                    height: 100, width: 100, child: Text("Create task"));
              });
        }),
      ),
    );
  }
}
