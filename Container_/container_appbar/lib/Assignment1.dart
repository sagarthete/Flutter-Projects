import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Assignment1"),
        backgroundColor: Colors.amber,
        actions: [
          Icon(
            Icons.menu,
          ),
          const SizedBox(
            width: 20,
          ),
          Icon(Icons.favorite_border_outlined),
        ],
      ),
    );
  }
}
