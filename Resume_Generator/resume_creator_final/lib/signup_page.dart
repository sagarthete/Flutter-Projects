import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:resume_creator/login_page.dart';
import 'loginPage_database.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<SignUpPage> {
  bool forgotClick = false;
  bool registerClick = false;
  final GlobalKey<FormState> loginKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  bool isValidPassword(String value) {
    // Password should have at least 4 characters
    if (value.length < 4) return false;

    // Password should contain at least one alphabet and one digit
    if (!RegExp(r'^(?=.?[a-zA-Z])(?=.?[0-9])').hasMatch(value)) return false;

    // Password should contain at least one special character
    if (!RegExp(r'^(?=.?[!@#$%^&()_+}{:;"?><,./\[\]\\\\-])').hasMatch(value))
      return false;

    return true;
  }

  //SNACKBAR CODE
  final GlobalKey<ScaffoldMessengerState> _scaffoldKey =
      GlobalKey<ScaffoldMessengerState>();

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: GoogleFonts.quicksand(
            color: const Color.fromRGBO(137, 0, 255, 1),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: //const Color.fromRGBO(137, 0, 255, 1),
            Colors.white,
        duration: const Duration(seconds: 5),
        behavior: SnackBarBehavior.floating,
        elevation: 200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Colors.white, width: 2),
        ),
      ),
    );
  }

  Future<void> insertUserData(LoginPageDatabase obj) async {
    await insertLoginData(obj);
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              //height: double.infinity,
              height: screenSize.height,
              width: screenSize.width,
              color: const Color.fromARGB(255, 253, 224, 215),
              // child: Image.asset(
              //   'lib/image/loginbg.jpg',
              //   fit: BoxFit.fill,
              // ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(
                //   height: screenSize.height / 8,
                // ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(
                    top: 70,
                    left: 30,
                    bottom: 40,
                  ),
                  // decoration: const BoxDecoration(
                  //   color: Color.fromRGBO(137, 0, 255, 1),
                  //   boxShadow: [
                  //     BoxShadow(
                  //         spreadRadius: 250,
                  //         blurRadius: 1000,
                  //         color: Color.fromRGBO(137, 0, 255, 1),
                  //         offset: Offset(0, 0)),
                  //   ],
                  // ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome",
                        style: GoogleFonts.quicksand(
                            //color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "Sign Up into your account",
                        style: GoogleFonts.quicksand(
                            color: const Color.fromARGB(255, 111, 115, 165),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 560,
                  //width: double.maxFinite,
                  margin: const EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 111, 115, 165),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        //topRight: Radius.circular(60),
                        bottomRight: Radius.circular(60)),
                    boxShadow: [
                      BoxShadow(
                          spreadRadius: 5,
                          blurRadius: 10,
                          color: Color.fromARGB(255, 44, 42, 42),
                          offset: Offset(0, 10)),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 40,
                    ),
                    child: Form(
                      key: loginKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                child: Text(
                                  "Sign Up",
                                  style: GoogleFonts.quicksand(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 30,

                                    // color:
                                    //     const Color.fromRGBO(137, 0, 255, 1)
                                  ),
                                ),
                              ),
                            ],
                          ),

                          // Text(
                          //   "User Id",
                          //   style: GoogleFonts.quicksand(
                          //     fontSize: 15,
                          //     color: Color.fromARGB(255, 255, 255, 255),
                          //     fontWeight: FontWeight.w600,
                          //   ),
                          // ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: TextFormField(
                              cursorColor: Colors.white,
                              statesController: MaterialStatesController(),
                              maxLines: null,
                              controller: nameController,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                prefixIcon: const Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                labelText: "Full Name",

                                labelStyle:
                                    GoogleFonts.quicksand(color: Colors.white),
                                //hintText: "Enter Title",
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  // borderRadius:
                                  //     BorderRadius.all(Radius.circular(15)),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  //borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  //borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              // validator: (value) {
                              //   if (value!.trim().isEmpty) {
                              //     return "Please Enter Title";
                              //   }
                              //   RegExp specialChars =
                              //       RegExp(r'[!@#\$%^&*(),.?":{}|<>]');
                              //   if (specialChars.hasMatch(value)) {
                              //     return 'Special characters are not allowed';
                              //   }
                              //   return null;
                              // },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter an full name';
                                }
                                return null;
                              },
                            ),
                          ),
                          // const SizedBox(
                          //   height: 10,
                          // ),
                          // Text(
                          //   "Password",
                          //   style: GoogleFonts.quicksand(
                          //     fontSize: 15,
                          //     color: const Color.fromRGBO(137, 0, 255, 1),
                          //     fontWeight: FontWeight.w600,
                          //   ),
                          // ),
                          Container(
                            margin: const EdgeInsets.only(top: 40),
                            child: TextFormField(
                              statesController: MaterialStatesController(),
                              maxLines: null,
                              controller: emailController,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,

                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                                labelText: "E-mail",
                                labelStyle:
                                    GoogleFonts.quicksand(color: Colors.white),
                                //hintText: "Enter Title",
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  // borderRadius:
                                  //     BorderRadius.all(Radius.circular(15)),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  // borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  //borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              // validator: (value) {
                              //   if (value!.trim().isEmpty) {
                              //     return "Please Enter Title";
                              //   }
                              //   RegExp specialChars =
                              //       RegExp(r'[!@#\$%^&*(),.?":{}|<>]');
                              //   if (specialChars.hasMatch(value)) {
                              //     return 'Special characters are not allowed';
                              //   }
                              //   return null;
                              // },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a E-mail';
                                }
                                if (!isValidEmail(value)) {
                                  return 'enter valid email';
                                }
                                return null;
                              },
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 40, bottom: 30),
                            child: TextFormField(
                              statesController: MaterialStatesController(),
                              maxLines: null,
                              controller: pwdController,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,

                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                                labelText: "Password",
                                labelStyle:
                                    GoogleFonts.quicksand(color: Colors.white),
                                //hintText: "Enter Title",
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  // borderRadius:
                                  //     BorderRadius.all(Radius.circular(15)),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  // borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                  //borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              // validator: (value) {
                              //   if (value!.trim().isEmpty) {
                              //     return "Please Enter Title";
                              //   }
                              //   RegExp specialChars =
                              //       RegExp(r'[!@#\$%^&*(),.?":{}|<>]');
                              //   if (specialChars.hasMatch(value)) {
                              //     return 'Special characters are not allowed';
                              //   }
                              //   return null;
                              // },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a Password';
                                }

                                return null;
                              },
                            ),
                          ),
                          GestureDetector(
                            onTap: () async {
                              //CHECK AUTHENTICATION OF USER
                              // if (await loginAuthentication(
                              //     emailController.text.trim(),
                              //     pwdController.text.trim())) {
                              //   //USER IS AUTHENTICATED AND TRUSTED
                              //   emailController.clear();
                              //   pwdController.clear();

                              //THIS CODE PUSH MAIN HOME PAGE OF TODOLIST APP
                              insertUserData(LoginPageDatabase(
                                  name: nameController.text,
                                  email: emailController.text,
                                  password: pwdController.text));
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const LoginPage();
                              }));

                              setState(() {});
                            },

                            //},

                            child: Container(
                              height: 45,
                              //width: 380,
                              margin: const EdgeInsets.only(
                                bottom: 5,
                              ),
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  "Sign Up",
                                  style: GoogleFonts.quicksand(
                                    color: const Color.fromARGB(
                                        255, 111, 115, 165),
                                    fontSize: 25,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (registerClick == false) {
                                      registerClick = true;
                                    } else {
                                      registerClick = false;
                                    }

                                    emailController.clear();
                                    pwdController.clear();
                                    //THIS CODE USE TO PUSH THE CREATE ACCOUNT SCREEN
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (BuildContext context) {
                                      return const LoginPage();
                                    }));
                                  });
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      "Already have an account?",
                                      style: GoogleFonts.quicksand(
                                          fontWeight: FontWeight.w700,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    Text(
                                      "Log In",
                                      style: GoogleFonts.quicksand(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          //const Spacer(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
