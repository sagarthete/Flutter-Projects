import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => VerificationState();
}

class VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 40, top: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          const SizedBox(
            height: 30,
            width: 150,
            child: Text(
              "Verification",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            height: 60,
            width: 280,
            child: Text(
              "Enter the OTP code from the phone we just sent you.",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 60,
                width: 55,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 166, 171, 165),
                          offset: Offset(10, 20),
                          spreadRadius: 0,
                          blurRadius: 100)
                    ]),
                child: const TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 203, 223, 200)),
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 60,
                width: 55,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 166, 171, 165),
                          offset: Offset(10, 20),
                          spreadRadius: 0,
                          blurRadius: 100)
                    ]),
                child: const TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 203, 223, 200)),
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 60,
                width: 55,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 166, 171, 165),
                          offset: Offset(10, 20),
                          spreadRadius: 0,
                          blurRadius: 100)
                    ]),
                child: const TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 203, 223, 200)),
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                height: 60,
                width: 55,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 166, 171, 165),
                          offset: Offset(0, 30),
                          spreadRadius: 0,
                          blurRadius: 100)
                    ]),
                child: const TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 2,
                              color: Color.fromARGB(255, 203, 223, 200)),
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Text("Don't receive OTP code ! "),
              Text(
                "Resend",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              height: 50,
              width: 650,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Verification()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors
                      .transparent, // Set transparent color so gradient is visible
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Border radius
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
                    borderRadius: BorderRadius.circular(12), // Border radius
                  ),
                  child: Container(
                    constraints: const BoxConstraints(
                        minWidth: 120.0, minHeight: 36.0), // Button size
                    alignment: Alignment.center,
                    child: const Text(
                      'Log in',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 19, color: Colors.white), // Text color
                    ),
                  ),
                ),
              )),
        ],
      ),
    ));
  }
}
