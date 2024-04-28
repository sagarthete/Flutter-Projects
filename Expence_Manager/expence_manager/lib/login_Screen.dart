import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sign_up_screen.dart';
import 'home_screen.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State createState() => LoginState();
}

class LoginState extends State<Login> {
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
                      child: Text("Log in to your Account",
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
                            labelText: "username",
                            labelStyle: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400)),
                            enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    width: 0,
                                    color: Color.fromRGBO(0, 0, 0, 0.15)))),
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
                            labelText: "password",
                            labelStyle: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400)),
                            enabledBorder: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                    width: 0,
                                    color: Color.fromRGBO(0, 0, 0, 0.15)))),
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
                        color: const Color.fromRGBO(14, 161, 125, 1),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: Center(
                          child: Text(
                            "Sign in",
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
                  "Don't have an account?",
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w500)),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      "Sign up",
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
