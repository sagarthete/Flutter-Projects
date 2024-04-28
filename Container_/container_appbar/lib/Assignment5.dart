import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Core2Web"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "Images/angryBird.jpg",
              height: 200,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset("Images/common.jpg",height: 200,width: 200,),
          ],
        ),
      ),
    );
  }
}