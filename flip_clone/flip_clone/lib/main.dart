import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'loginPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                SizedBox(
                  height: 400,
                  width: 500,
                  child: Image.asset("assets/pot1.png"),
                ),
                const SizedBox(
                  height: 0,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: Text("Enjoy your",
                      style:
                          TextStyle(fontSize: 33, fontWeight: FontWeight.w400)),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: Row(
                    children: [
                      Text("Life With ",
                          style: TextStyle(
                              fontSize: 33, fontWeight: FontWeight.w400)),
                      Text(
                        "Plants",
                        style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                      height: 50,
                      width: 330,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors
                              .transparent, // Set transparent color so gradient is visible
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(20), // Border radius
                          ),
                          elevation: 0, // Elevation
                        ),
                        child: Ink(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(62, 102, 24, 1),
                                Color.fromRGBO(124, 180, 70, 1)
                              ], // Gradient colors
                              begin: Alignment.bottomCenter, // Gradient start
                              end: Alignment.topCenter, // Gradient end
                            ),
                            borderRadius:
                                BorderRadius.circular(20), // Border radius
                          ),
                          child: Container(
                            constraints: const BoxConstraints(
                                minWidth: 99.0, minHeight: 36.0), // Button size
                            alignment: Alignment.center,
                            child: const Text(
                              'Get started',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 19,
                                  color: Colors.white), // Text color
                            ),
                          ),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 82,
                ),
                Container(
                  height: 50,
                  width: 390,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
