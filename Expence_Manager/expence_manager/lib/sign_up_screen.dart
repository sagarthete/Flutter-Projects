import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_Screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State createState() => SignUpState();
}

class SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 160.0),
            child: Image.asset("assets/Group 77.png"),
          ),
          const SizedBox(
            height: 60,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 400,
                      child: Text("Create your Account",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 49,
                      width: 310,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 3),
                                blurRadius: 10,
                                spreadRadius: 0)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "name",
                            labelStyle: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400)),
                            enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 49,
                      width: 310,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 3),
                                blurRadius: 10,
                                spreadRadius: 0)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "username",
                            labelStyle: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400)),
                            enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 49,
                      width: 310,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 3),
                                blurRadius: 10,
                                spreadRadius: 0)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "password",
                            labelStyle: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400)),
                            enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 49,
                      width: 310,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 3),
                                blurRadius: 10,
                                spreadRadius: 0)
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Confirm password",
                            labelStyle: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400)),
                            enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 49,
                      width: 310,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Color.fromRGBO(14, 161, 125, 1),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
                        },
                        child: Center(
                          child: Text(
                            "Sign up",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 85.0, bottom: 40),
            child: Row(
              children: [
                Text(
                  "Already have an account?",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w500)),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    child: Text(
                      "Sign in",
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
