import 'package:flutter/material.dart';

class Assignment6 extends StatefulWidget {
  const Assignment6({super.key});

  @override
  State<Assignment6> createState() => _Assignment6State();
}

class _Assignment6State extends State<Assignment6> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scroll Images",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                fontSize: 30,
                color: Colors.black),
            textAlign: TextAlign.center),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: ListView(
          
          children: [
            Column(
              mainAxisAlignment:  MainAxisAlignment.center,
              children: [
                  const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                ),
                  const SizedBox(
                  height: 30,
                ),
                  Container(
                  width: 200,
                  height: 200,
                  color: Colors.deepPurple,
                ),
                  const SizedBox(
                  height: 30,
                ),
                  Container(
                  width: 200,
                  height: 200,
                  color: Colors.grey,
                ),
                  const SizedBox(
                  height: 30,
                ),
                  Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                ),
                  const SizedBox(
                  height: 30,
                ),
                  Container(
                  width: 200,
                  height: 200,
                  color: Colors.cyan,
                ),
                  const SizedBox(
                  height: 30,
                ),
                  Container(
                  width: 200,
                  height: 200,
                  color: Colors.black,
                ),
                  const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
