import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume_creator/loginPage_database.dart';
import 'package:resume_creator/signup_page.dart';
import 'resumeHome.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  bool forgotClick = false;
  bool registerClick = false;
  final GlobalKey<FormState> _loginKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  Future<void> getLoginData() async {
    await retriveLoginData();
  }

  Future<void> accessLoginList() async {
    await createLoginDatabase();
    await retriveLoginData();
  }

  @override
  void initState() {
    super.initState();
    accessLoginList();
  }

  bool isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  bool isValidPassword(String value) {
    // Password should have at least 4 characters
    if (value.length < 4) return false;

    // Password should contain at least one alphabet and one digit

    // Password should contain at least one special character

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

  int loginIndex = -1;
  bool validityCheck = false;
  bool validPass = false;

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
              height: screenSize.height,
              width: screenSize.width,
              color: Color.fromARGB(255, 253, 224, 215),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(
                    top: 70,
                    left: 30,
                    bottom: 40,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back",
                        style: GoogleFonts.quicksand(
                            //color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "Login back into your account",
                        style: GoogleFonts.quicksand(
                            color: const Color.fromARGB(255, 111, 115, 165),
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 500,
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
                      key: _loginKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                child: Text(
                                  "Log In",
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

                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: TextFormField(
                              cursorColor: Colors.white,
                              statesController: MaterialStatesController(),
                              maxLines: null,
                              controller: emailController,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                prefixIcon: const Icon(
                                  Icons.email,
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
                              validator: (value) {
                                getLoginData();

                                bool validName = false;
                                print(loginEntry);
                                for (int i = 0; i < loginEntry.length; i++) {
                                  if (loginEntry[i].email == value) {
                                    validityCheck = true;
                                    loginIndex = i;
                                  }
                                  print(loginEntry[i].email);
                                }

                                if (value == null || value.isEmpty) {
                                  return 'Please enter an email id';
                                } else if (validityCheck == false) {
                                  return "login mail not found";
                                }
                                return null;
                              },
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.only(top: 40),
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
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a password';
                                }
                                if (loginIndex != -1 &&
                                    loginEntry[loginIndex].password != value) {
                                  return "Incorrect Password";
                                }
                                if (loginEntry[loginIndex].password == value) {
                                  validPass = true;
                                }

                                return null;
                              },
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    if (forgotClick == false) {
                                      forgotClick = true;
                                    } else {
                                      forgotClick = false;
                                    }
                                  });
                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w500,
                                      color: (forgotClick)
                                          ? Colors.green
                                          : const Color.fromARGB(255, 0, 0, 0)),
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () async {
                              if (validityCheck && validPass) {
                                validPass = false;
                                validityCheck = false;
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) {
                                  return const Resume();
                                }));
                              }
                            },
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
                                  "Login",
                                  style: GoogleFonts.quicksand(
                                    color: const Color.fromARGB(
                                        255, 111, 115, 165),
                                    fontSize: 30,
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
                                    // //THIS CODE USE TO PUSH THE CREATE ACCOUNT SCREEN
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (BuildContext context) {
                                      return const SignUpPage();
                                    }));
                                  });
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      "Don't have an account yet? ",
                                      style: GoogleFonts.quicksand(
                                          fontWeight: FontWeight.w700,
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                    Text(
                                      "Join Now ",
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
