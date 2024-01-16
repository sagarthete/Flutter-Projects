import 'package:flutter/material.dart';

class Palindrome extends StatefulWidget {
  // ignore: non_constant_identifier_names
  const Palindrome({super.key});

  @override
  State<Palindrome> createState() => PalindromeState();
}

class PalindromeState extends State<Palindrome> {
  final List<int> numberList = [111, 124, 121, 153, 321, 145];
  int? count = 0;
  int count1 = 0;
  int count2 = 0;

  int checkPal() {
    int ctr = 0;
    for (int i = 0; i < numberList.length; i++) {
      int data = numberList[i];
      int ret = 0;
      while (data != 0) {
        int rem = data % 10;
        ret = ret * 10 + rem;
        data = (data ~/ 10);
      }
      if (ret == numberList[i]) {
        ctr = ctr + 1;
      }
    }
    return ctr;
  }

  int armStrong() {
    int ctr = 0;
    for (int i = 0; i < numberList.length; i++) {
      int data = numberList[i];
      int sum = 0;

      while (data != 0) {
        int rem = data % 10;
        int prod = 1;
        int data1 = numberList[i];
        while (data1 != 0) {
          prod = prod * rem;
          data1 = data1 ~/ 10;
        }
        data = data ~/ 10;
        sum = sum + prod;
      }
      if (sum == numberList[i]) {
        ctr = ctr + 1;
      }
    }
    return ctr;
  }

  int strongCheck() {
    int ctr = 0;
    for (int i = 0; i < numberList.length; i++) {
      int data = numberList[i];
      int sum = 0;
      while (data != 0) {
        int fact = 1;
        int rem = data % 10;
        while (rem != 1) {
          fact = fact * rem;
          rem--;
        }
        sum = sum + fact;
        data = data ~/ 10;
      }
      if (sum == numberList[i]) {
        ctr++;
      }
    }
    return ctr;
  }

  void increaseCounter() {
    setState(() {
      count = checkPal();
    });
  }

  void increamentArm() {
    setState(() {
      count1 = armStrong();
    });
  }

  void increaseStrong() {
    setState(() {
      count2 = strongCheck();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("number descripter"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("click button to check palindrome"),
            const SizedBox(
              height: 10,
            ),
            Text("$count"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: increaseCounter,
                child: const Text("checkPalindrome")),
            const SizedBox(
              height: 10,
            ),
            Text("click button to check armstrong"),
            const SizedBox(
              height: 10,
            ),
            Text("$count1"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: increamentArm, child: const Text("checkArmStrong")),
            const SizedBox(
              height: 10,
            ),
            Text("click here to check strong numbers"),
            const SizedBox(
              height: 10,
            ),
            Text("$count2"),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: increaseStrong, child: Text("Strong number"))
          ]),
        ));
  }
}
