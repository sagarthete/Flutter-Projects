import 'dart:ffi';

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
          title: const Text("Tiranga"),
        ),
        backgroundColor: Colors.black87,
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.green, Colors.white, Colors.deepOrange],
                stops: [0.0, 0.5, 0.9], // Optional: Add stops for more control
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Container(
                  height: 500,
                  width: 10,
                  color: Colors.black,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Container(
                      height: 70,
                      width: 300,
                      color: Colors.deepOrange,
                    ),
                    Container(
                      child: Image.network(
                          "https://photomedia.in/wp-content/uploads/2023/07/ashok-chakra-vector-1024x1024.png"),
                      height: 70,
                      width: 300,
                      color: Colors.white,
                    ),
                    Container(
                      height: 70,
                      width: 300,
                      color: Colors.green,
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
