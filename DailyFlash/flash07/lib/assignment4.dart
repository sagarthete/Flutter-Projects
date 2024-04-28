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
          backgroundColor: Colors.purpleAccent,
          centerTitle: true,
          title: const Text(
            "Assignment4",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
       body: Center(
         child: Container(
          height: 100.0,
          child: Row(
         
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  color: Colors.red,
                  
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.purpleAccent,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.green,
                ),
              ),
            ],
          ),
         ),
       ),
      ),
    );
  }
}
