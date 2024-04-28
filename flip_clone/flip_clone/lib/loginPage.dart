import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'verify.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 244, 240, 221),
        body: Padding(
          padding: const EdgeInsets.all(0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                ),
                const Text(
                  "Log in",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 55,
                  width: 300,
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 177, 174, 174),
                        offset: Offset(0, 10),
                        spreadRadius: 3,
                        blurRadius: 30)
                  ]),
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      color: Color.fromARGB(255, 244, 242, 227),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                          labelText: "Mobile number",
                          prefixIcon: Icon(Icons.call),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Container(
                      height: 50,
                      width: 350,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Verification()),
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
                                BorderRadius.circular(12), // Border radius
                          ),
                          child: Container(
                            constraints: const BoxConstraints(
                                minWidth: 99.0, minHeight: 36.0), // Button size
                            alignment: Alignment.center,
                            child: const Text(
                              'Log in',
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
                  height: 15,
                ),
                SizedBox(
                  height: 350,
                  width: 350,
                  child: Image.asset("assets/pot2.png"),
                ),
                const SizedBox(
                  height: 33,
                ),
                Container(
                  height: 50,
                  width: 390,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ));
  }
}
