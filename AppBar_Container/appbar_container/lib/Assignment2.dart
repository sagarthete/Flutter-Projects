import 'package:flutter/material.dart';

class Assignment2 extends StatelessWidget {
  const Assignment2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Assignment2"),
        centerTitle:true,
        actions: [
          Icon(Icons.media_bluetooth_off),
        ],
      ),
    );
  }
}
