import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            "Assignment4",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(width: 2)
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                        height: 100,
                        width: 130,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                            )
                          ),
                        child: Container(
                          // height: 100,
                          // width: 100,
                          color: const Color.fromARGB(255, 255, 17, 0),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 130,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                            )
                          ),
                        child: Container(
                          // height: 100,
                          // width: 100,
                          color: const Color.fromARGB(255, 170, 0, 255),
                        ),
                      ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
