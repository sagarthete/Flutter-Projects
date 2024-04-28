// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sqflite/sqflite.dart';
import 'mianfun.dart';

dynamic database;

class TaskData {
  final String title;
  final String description;
  final String date;

  TaskData(
      {required this.title, required this.description, required this.date});

  Map<String, dynamic> mapFormat() {
    return {'title': title, 'description': description, 'date': date};
  }
}

Future insertData(TaskData obj) async {
  final localdb = await database;
  await localdb.insert("Tasks", obj.mapFormat(),
      conflictAlgorithm: ConflictAlgorithm.replace);
}

class ToDoListState extends State<ToDoList> {
  TextEditingController titleText = TextEditingController();
  TextEditingController descText = TextEditingController();
  TextEditingController dateText = TextEditingController();
  void showSheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const OutlineInputBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        builder: (BuildContext context) {
          return Container(
            margin: MediaQuery.of(context).viewInsets,
            padding: const EdgeInsets.all(10),
            width: 420,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Create task",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Title",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextField(
                      controller: titleText,
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide:
                                  BorderSide(width: 2, color: Colors.blue))),
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Description",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextField(
                      controller: descText,
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 17, 18, 19)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.blue),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Date",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextField(
                      controller: dateText,
                      decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 78, 105, 221)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 47, 38, 224))),
                    onPressed: () {
                      insertData(TaskData(
                          title: titleText.text,
                          description: descText.text,
                          date: dateText.text));
                      setState(() {});
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ))
              ],
            ),
          );
        });
  }

  int lengthMap = 0;
  Future retriveData() async {
    final localDB = await database;
    lengthMap = await localDB.getRowCount();
  }

  @override
  Widget build(BuildContext context) {
    retriveData();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 41, 90, 238),
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Container(
              width: 600,
              height: 100,
              padding: const EdgeInsets.only(left: 50),
              child: const Text(
                "Good Morning\nSakshi",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                height: 300,
                width: 600,
                padding: const EdgeInsets.only(top: 15),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Color.fromARGB(255, 220, 223, 222)),
                child: Column(children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "CREATE TO DO LIST",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: double.infinity,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ListView.builder(
                          itemCount: lengthMap,
                          itemBuilder: (context, index) {
                            return Slidable(
                                closeOnScroll: true,
                                endActionPane: ActionPane(
                                  extentRatio: 0.15,
                                  motion: const ScrollMotion(),
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const SizedBox(
                                          height: 19,
                                        ),
                                        GestureDetector(
                                          child: Container(
                                            height: 32.5,
                                            width: 32.5,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.blue),
                                            child: const Icon(
                                              Icons.edit,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        GestureDetector(
                                          child: Container(
                                            height: 32.5,
                                            width: 32.5,
                                            decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.blue),
                                            child: const Icon(
                                              Icons.delete,
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      top: 18, left: 10, right: 10, bottom: 3),
                                  decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Color.fromARGB(
                                                255, 104, 100, 100),
                                            offset: Offset(0, 9),
                                            blurRadius: 11)
                                      ],
                                      color: Colors.white),
                                  width: 400,
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              margin: const EdgeInsets.only(
                                                  left: 12, top: 10),
                                              height: 52,
                                              width: 52,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                              ),
                                              child: const CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    "assets/book_note.png"),
                                              )),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 8,
                                              ),
                                              SizedBox(
                                                width: 200,
                                                child: Text(""),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              SizedBox(
                                                width: 225,
                                                child: Text(""),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      const Row(children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          child: Text(""),
                                        ),
                                        Spacer(),
                                      ]),
                                    ],
                                  ),
                                ));
                          }),
                    ),
                  ),
                ])),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSheet();
        },
        backgroundColor: const Color.fromARGB(255, 33, 47, 243),
        foregroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
