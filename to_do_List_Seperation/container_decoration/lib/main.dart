import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container Decoration"),
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(70),
            decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Colors.black, width: 5),
                color: Colors.amber,
                shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 196, 63, 63),
                      offset: Offset(8, 8),
                      blurRadius: 10)
                ],
                gradient: const LinearGradient(colors: [
                  Color.fromARGB(255, 237, 233, 195),
                  Color.fromARGB(255, 241, 210, 118),
                  Color.fromARGB(255, 228, 174, 103),
                  Color.fromARGB(255, 236, 164, 70),
                  Colors.orange
                ], stops: [
                  0.1,
                  0.3,
                  0.5,
                  0.7,
                  0.10
                ])),
          ),
        ),
      ),
    );
  }
}
