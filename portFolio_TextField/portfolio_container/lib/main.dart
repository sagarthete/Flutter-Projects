import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Portfolio(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State createState() => _PortfolioState();
}

class _PortfolioState extends State {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _collegController = TextEditingController();
  final TextEditingController _compController = TextEditingController();
  bool flag = false;

  List objectList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Portfolio",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 255, 255),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20.0), // Adjust the border radius as needed
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: _nameController,

              //focusNode: _nameFocusNode,
              decoration: InputDecoration(
                hintText: "Enter Your name",
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 1.5,
                    color: Colors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 1.5,
                    color: Color.fromARGB(255, 255, 0, 85),
                  ),
                ),
              ),
              cursorColor: Colors.amber,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.name,
              onChanged: (value) {
                print("Value = $value");
              },
              onSubmitted: (value) {
                print("DATA SUBMITTED = $value");
              },
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: _collegController,
              //focusNode: _nameFocusNode,
              decoration: InputDecoration(
                hintText: "Enter College name",
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 1.5,
                    color: Colors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 1.5,
                    color: Color.fromARGB(255, 255, 0, 85),
                  ),
                ),
              ),
              cursorColor: Colors.amber,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.name,
              onChanged: (value) {
                print("Value = $value");
              },
              onSubmitted: (value) {
                print("DATA SUBMITTED = $value");
              },
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              controller: _compController,
              //focusNode: _nameFocusNode,
              decoration: InputDecoration(
                hintText: "Enter Company name",
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 1.5,
                    color: Colors.black,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 1.5,
                    color: Color.fromARGB(255, 255, 0, 85),
                  ),
                ),
              ),
              cursorColor: Colors.amber,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.name,
              onChanged: (value) {
                print("Value = $value");
              },
              onSubmitted: (value) {
                print("DATA SUBMITTED = $value");
              },
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.cyanAccent,
                minimumSize: const Size(200, 40),
                shadowColor: Colors.black,
                elevation: 30,
              ),
              onPressed: () {
                setState(() {
                  objectList.add(
                    DisplayPortfolio(
                        name: _nameController.text,
                        collegeName: _collegController.text,
                        compName: _compController.text),
                  );
                  _collegController.clear();
                  _compController.clear();
                  _nameController.clear();
                });
              },
              child: const Text(
                "SUBMIT",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: objectList.length,
                itemBuilder: (context, index) {
                  return viewPortfolio(index);
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 217, 248, 248),
    );
  }

  Container viewPortfolio(int index) {
    if (flag == true) {
      return Container(
        margin: const EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 10,
              offset: Offset(0, 10),
              spreadRadius: 3,
            )
          ],
          borderRadius: BorderRadius.circular(20),
          color: Colors.cyanAccent,
        ),
        height: 180,
        width: 350,
        child: Text(
          "Your Name : ${objectList[index].name} \n\nCollege Name : ${objectList[index].collegeName} \n\nDream Company : ${objectList[index].compName}",
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      );
    } else {
      return Container();
    }
  }
}

class DisplayPortfolio {
  String name = "";
  String collegeName = "";
  String compName = "";

  DisplayPortfolio(
      {required this.name, required this.collegeName, required this.compName});
}
