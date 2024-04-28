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
          title: const Text("AppBar Assignment"),
          centerTitle: true,
          primary: true,
          leading: Builder(builder: (BuildContext context) {
            return const Icon(Icons.home_max_outlined);
          }),
          actions: const [
            Icon(
              Icons.note,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.message_outlined),
          ],
        ),
      ),
    );
  }
}
