import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoList(),
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => ToDoListState();
}

class ToDoListState extends State<ToDoList> {
  TextEditingController titleString = TextEditingController();
  TextEditingController subString = TextEditingController();
  List headingTextList = List.empty(growable: true);
  List subTextList = List.empty(growable: true);
  List colorList = List.empty(growable: true);
  int colorCount = 0;
  bool addflag = false;

  Scaffold alterScreen() {
    for (int i = 0; i < headingTextList.length; i++) {
      print(headingTextList[i]);
    }
    colorList.add(const Color.fromRGBO(250, 232, 232, 1));
    colorList.add(const Color.fromRGBO(232, 237, 250, 1));
    colorList.add(const Color.fromRGBO(250, 249, 232, 1));
    colorList.add(const Color.fromARGB(248, 222, 166, 203));
    colorList.add(const Color.fromARGB(188, 164, 225, 196));
    if (addflag == false) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
          title: const Text("To Do List"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: headingTextList.length,
          itemBuilder: ((context, index) {
            return Container(
              margin: const EdgeInsets.only(left: 12, right: 12, top: 25),
              height: 130,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colorList[index],
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 167, 162, 162),
                        offset: Offset(1, 8),
                        spreadRadius: 1.5,
                        blurRadius: 15)
                  ]),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 12, top: 15),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color.fromARGB(255, 221, 219, 215)),
                      ),
                      const SizedBox(
                        width: 18,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 240,
                            child: Text("${headingTextList[index].text}",
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 240,
                            child: Text(
                              "${subTextList[index].text}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "10 july 2023",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Icon(Icons.edit),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.delete,
                        size: 20,
                      )
                    ],
                  )
                ],
              ),
            );
          }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            addflag = true;
            headingTextList.add(titleString);
            subTextList.add(subString);
            setState(() {
              colorList.add(colorList[colorCount]);
              if (colorCount < colorList.length) {
                colorCount++;
              } else {
                colorCount = 1;
              }
            });
          },
          backgroundColor: const Color.fromARGB(255, 10, 90, 160),
          child: const Icon(Icons.add),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text("To Do List"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                controller: titleString,
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(1.0)),
                      borderSide: BorderSide(
                          style: BorderStyle.solid, color: Colors.black),
                    ),
                    hintText: "Enter Title Text",
                    hintStyle: TextStyle(
                      fontSize: 12,
                    )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: TextField(
                controller: subString,
                decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(1.0)),
                      borderSide: BorderSide(
                          style: BorderStyle.solid, color: Colors.black),
                    ),
                    hintText: "Enter extra's",
                    hintStyle: TextStyle(
                      fontSize: 12,
                    )),
                onSubmitted: (value) {
                  addflag = false;
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return alterScreen();
  }
}
