import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  int counter = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("indian flag"),
      ),
      backgroundColor: Colors.grey,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter = counter + 1;
          });
        },
        child: const Icon(Icons.plus_one_rounded),
      ),
      body: Container(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            (counter >= 0)
                ? Container(
                    height: 400,
                    width: 20,
                    color: Colors.black,
                  )
                : Container(),
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              const SizedBox(
                height: 130,
              ),
              (counter >= 1)
                  ? Container(
                      height: 50,
                      width: 250,
                      color: Colors.deepOrange,
                    )
                  : Container(),
              (counter >= 2)
                  ? Container(
                      height: 50,
                      width: 250,
                      color: Colors.white,
                      child: (counter >= 4)
                          ? Image.network(
                              "https://i.pinimg.com/736x/1a/5e/f9/1a5ef90d510e1e484246dbb6161abd26.jpg")
                          : Container(),
                    )
                  : Container(),
              (counter >= 3)
                  ? Container(
                      height: 50,
                      width: 250,
                      color: Colors.green,
                    )
                  : Container(),
            ]),
          ],
        ),
      ),
    );
  }
}
