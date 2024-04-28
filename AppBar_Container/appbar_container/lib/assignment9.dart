
import 'package:flutter/material.dart';

class Assignment9 extends StatelessWidget {
  const Assignment9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Border with curve",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.normal,fontSize: 30,color: Colors.black),textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
     
      ),
      body: Center(
        child: Container(
      width: 300,
      height: 300,
      decoration: BoxDecoration(border: Border.all(color: Colors.red,width: 6.0),borderRadius: const BorderRadius.all(Radius.elliptical(20,20))))
        ),
    );
  }
}
