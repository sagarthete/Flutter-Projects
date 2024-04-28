import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoList(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State createState() => ToDoListState();
}

class ToDoListState extends State<ToDoList> {
  TextEditingController titleText = TextEditingController();
  TextEditingController descString = TextEditingController();
  TextEditingController dateString = TextEditingController();
  void showSheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: const OutlineInputBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        builder: (BuildContext context) {
          return Expanded(
              child: Container(
            margin: MediaQuery.of(context).viewInsets,
            padding: const EdgeInsets.all(10),
            width: 200,
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
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Title",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
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
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.blue),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.blue),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                    ),
                    SizedBox(
                      height: 15,
                    )
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Date",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color: Color.fromARGB(255, 59, 150, 150)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
                ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 47, 38, 224))),
                    onPressed: () {},
                    child: const Text(
                      "Submit",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ))
              ],
            ),
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
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
                "Good Morning\nSagar",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
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
                    Expanded(
                      child: Container(
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
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return Slidable(
                                    closeOnScroll: true,
                                    endActionPane: ActionPane(
                                      extentRatio: 0.15,
                                      motion: const ScrollMotion(),
                                      children: [
                                        Expanded(
                                            child: Column(
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
                                        ))
                                      ],
                                    ),
                                    child: Container(
                                      margin: const EdgeInsets.only(
                                          top: 18,
                                          left: 10,
                                          right: 10,
                                          bottom: 3),
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
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
                                                  decoration:
                                                      const BoxDecoration(
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
                    )
                  ])),
            )
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
