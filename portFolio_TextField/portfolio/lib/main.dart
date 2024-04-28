import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PortFolio(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PortFolio extends StatefulWidget {
  const PortFolio({super.key});

  @override
  State<PortFolio> createState() => PortFolioState();
}

class PortFolioState extends State<PortFolio> {
  int count = 0;
  bool showInfo = false;
  TextEditingController nameInput = TextEditingController();
  TextEditingController compInput = TextEditingController();
  TextEditingController locInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PortFolio"),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: const EdgeInsets.all(15),
        child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const Text("Name  : ",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  )),
              const SizedBox(
                width: 46,
              ),
              SizedBox(
                  width: 205,
                  height: 50,
                  child: TextField(
                    onSubmitted: (value) {
                      count++;
                      showInfo = false;
                    },
                    controller: nameInput,
                    decoration: InputDecoration(
                        hintText: "enter name",
                        hintStyle: const TextStyle(fontSize: 20),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(23),
                            borderSide: const BorderSide(color: Colors.blue)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    style: const TextStyle(fontSize: 25),
                  )),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              const Text("Company  : ",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  )),
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                  width: 205,
                  height: 50,
                  child: TextField(
                    onSubmitted: (value) {
                      count++;
                      showInfo = false;
                    },
                    controller: compInput,
                    decoration: InputDecoration(
                        hintText: "enter company",
                        hintStyle: const TextStyle(fontSize: 20),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(23),
                            borderSide: const BorderSide(color: Colors.blue)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    style: const TextStyle(fontSize: 25),
                  )),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              const Text("Location  : ",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  )),
              const SizedBox(
                width: 23,
              ),
              SizedBox(
                  width: 205,
                  height: 50,
                  child: TextField(
                    onSubmitted: (value) {
                      count++;
                      showInfo = false;
                    },
                    controller: locInput,
                    decoration: InputDecoration(
                        hintText: "enter location",
                        hintStyle: const TextStyle(fontSize: 20),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(23),
                            borderSide: const BorderSide(color: Colors.blue)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                    style: const TextStyle(fontSize: 25),
                  )),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 40,
            width: 80,
            child: ElevatedButton(
              onPressed: () {
                if (count == 3) {
                  count = 0;
                  showInfo = true;
                }
                setState(() {});
              },
              child: const Text("Submit"),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          (showInfo)
              ? Container(
                  color: Colors.amber,
                  height: 300,
                  width: 400,
                  padding: const EdgeInsets.only(left: 45),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Name        : ",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "${nameInput.text}",
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Company  : ",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "${compInput.text}",
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          const Text(
                            "Location   : ",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "${locInput.text}",
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              : Container(),
        ]),
      ),
    );
  }
}
