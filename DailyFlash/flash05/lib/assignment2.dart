import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Assignment2",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        body: Container(
          margin: const EdgeInsets.only(
            top: 100
          ),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset("assets/vaibhav.jpg"),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(
                  "assets/vaibhya.jpg",
                  fit: BoxFit.fill,),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 100,
                width: 100,
                child: Image.asset("assets/vaibhav.jpg"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
