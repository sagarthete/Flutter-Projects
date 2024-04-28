import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment5(),
    );
  }
}

class Assignment5 extends StatefulWidget {
  const Assignment5({super.key});

  @override
  State createState() => _Assignmnet5State();
}

class _Assignmnet5State extends State {
  bool flag1 = false;
  bool flag2 = false;
  bool flag3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Assignment5",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    border: Border.all(width: 1.5)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(1.0)
                    ),
                    backgroundColor: flag1
                        ? const Color.fromARGB(255, 255, 17, 0)
                        : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      flag1 = !flag1;
                    });
                  },
                  child: null,
                ),
              ),
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    
                    border: Border.all(width: 1.5)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(1.0)
                    ),
                    backgroundColor: flag2
                        ? const Color.fromARGB(255, 255, 17, 0)
                        : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      flag2 = !flag2;
                    });
                  },
                  child: null,
                ),
              ),
              Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                   
                    border: Border.all(width: 1.5)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(1.0)
                    ),
                    backgroundColor: flag3
                        ? const Color.fromARGB(255, 255, 17, 0)
                        : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      flag3 = !flag3;
                    });
                  },
                  child: null,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
