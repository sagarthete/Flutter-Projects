import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Assignment5",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 250,
                  width: 250,
                  child: Image.asset(
                    "assets/vaibhav.jpg",
                  ),
                ),
                const Spacer(),
                Container(
                  height: 100,
                  width: 100,
                  color: const Color.fromARGB(255, 255, 17, 0),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: const Color.fromARGB(255, 47, 0, 255),
                ),
              ],
            ),
          ],
        )
      ),
    );
  }
}
