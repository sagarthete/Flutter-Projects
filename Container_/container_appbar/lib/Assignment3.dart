import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Core2Web"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child:
          Container(
            color: Colors.blue,
            height: 200,
            width: 360,
          )

      ),
    );

  }
}
