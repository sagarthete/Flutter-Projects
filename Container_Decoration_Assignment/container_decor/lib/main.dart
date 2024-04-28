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
      home: ContainerStyle(),
    );
  }
}

class ContainerStyle extends StatefulWidget {
  const ContainerStyle({super.key});

  @override
  State<ContainerStyle> createState() => _ContainerStyleState();
}

class _ContainerStyleState extends State<ContainerStyle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ContainerStyle"),
        ),
        body: Container(
          //padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          margin: const EdgeInsets.only(top: 300, bottom: 50, left: 100),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              border: Border.all(
                color: Colors.black,
                width: 5,
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.orange,
                  offset: Offset(25, -25),
                  blurRadius: 8,
                ),
                BoxShadow(
                  color: Colors.red,
                  offset: Offset(-25, 25),
                  blurRadius: 8,
                ),
                BoxShadow(
                  color: Colors.green,
                  offset: Offset(-25, -25),
                  blurRadius: 8,
                ),
                BoxShadow(
                  color: Colors.cyan,
                  offset: Offset(25, 25),
                  blurRadius: 8,
                ),
              ],
              gradient: const RadialGradient(stops: [
                0.1,
                0.3,
                0.7,
                1.0,
                1.2,
                1.5
              ], colors: [
                Colors.yellowAccent,
                Colors.yellow,
                Colors.amber,
                Colors.orangeAccent,
                Colors.orange,
                Colors.deepOrange
              ]),
              color: Colors.amber),
          height: 200,
          width: 200,
        ));
  }
}
