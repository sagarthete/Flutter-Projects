
import 'package:flutter/material.dart';

class Assignment8 extends StatelessWidget {
  const Assignment8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Border To Container",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,fontSize: 30,color: Colors.black),textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
     
      ),
      body: Center(
        child: Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
          width: 4.0,
        ),
      ),
        ),
      ),
    );
  }
}
