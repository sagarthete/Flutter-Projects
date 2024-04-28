import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Assignment1",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            
            decoration: BoxDecoration(
                color: Colors.amber,
                // borderRadius: BorderRadius.all(
                //   Radius.circular(20),
                // ),
                shape: BoxShape.circle,
                border: Border.all(
                  width: 4,
                  color: Colors.red
                ),
                
            ),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Click me",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
