import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Here"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 450,
              width: 450,
              color: Colors.greenAccent,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(),
                ],
              ),
            ),
            Container(
              height: 450,
              width: 450,
              color: Colors.blue,
              child: Image.network(
                "https://img.freepik.com/premium-photo/job-interview-concept-composition-notebooks-pens-pencil-stickers-colored-background-interview-preparation-concept_517510-1161.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
