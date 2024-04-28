import 'package:container_appbar/Assignment6.dart';

import 'Assignment2.dart';
import 'Assignment3.dart';
import 'Assignment4.dart';
import 'package:flutter/material.dart';
import 'Assignment1.dart';
import 'Assignment5.dart';
import 'Assignment7.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment7(),
    );
  }
}
