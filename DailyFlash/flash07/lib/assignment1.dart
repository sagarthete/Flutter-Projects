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
          title:  const Text(
            "Assignment1",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        body:  Center(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 153, 255, 0),
              ),
              Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 0, 98, 255),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
