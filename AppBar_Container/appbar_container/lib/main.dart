import 'package:appbar_container/Assignment2.dart';
import 'package:appbar_container/Assignment3.dart';
import 'package:appbar_container/Assignment4.dart';
import 'package:flutter/material.dart';
import 'Assignment1.dart';
import 'Assignment5.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment5(),
    );
  }
}
