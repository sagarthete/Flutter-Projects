import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  var parrot = Color.fromARGB(255, 159, 157, 157);
  var peacock = Color.fromARGB(255, 159, 157, 157);
  var eagle = Color.fromARGB(255, 159, 157, 157);
  var ostrich = Color.fromARGB(255, 159, 157, 157);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("QuizApp"),
        backgroundColor: Color.fromARGB(255, 36, 211, 206),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Total Questions : 10",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                "Solved : 1/10",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "1. National bird of india ?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 35,
                        width: 290,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              parrot = Colors.red;
                              peacock = Colors.green;
                            });
                          },
                          child: const Text("Parrot"),
                          style:
                              ElevatedButton.styleFrom(backgroundColor: parrot),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 35,
                        width: 290,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              peacock = Colors.green;
                            });
                          },
                          child: const Text("Peacock"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: peacock,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 35,
                        width: 290,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              eagle = Colors.red;
                              peacock = Colors.green;
                            });
                          },
                          child: const Text("Eagle"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: eagle,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 35,
                        width: 290,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              ostrich = Colors.red;
                              peacock = Colors.green;
                            });
                          },
                          child: const Text("Ostrich"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ostrich,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 35),
              Container(
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "2. National Game of india ?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 35,
                        width: 290,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Hocky"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 159, 157, 157)),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 35,
                        width: 290,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Cricket"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 159, 157, 157)),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 35,
                        width: 290,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("FootBall"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 159, 157, 157)),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 35,
                        width: 290,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Kabaddi"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 159, 157, 157)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "3. National animal of india ?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 35,
                        width: 290,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Lion"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 159, 157, 157)),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 35,
                        width: 290,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Rihno"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 159, 157, 157)),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 35,
                        width: 290,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Tiger"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 159, 157, 157)),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 35,
                        width: 290,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text("Elephant"),
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 159, 157, 157)),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
