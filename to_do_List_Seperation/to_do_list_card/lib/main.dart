import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: ToDoCard(),
    );
  }
}

class ToDoCard extends StatefulWidget {
  const ToDoCard({super.key});

  @override
  State createState() => ToDoCardState();
}

class ToDoModal {
  String? titleController;
  String? descController;
  String? dateController;

  ToDoModal({this.titleController, this.descController, this.dateController});
}

List<ToDoModal> cardList = [];

class ToDoCardState extends State<ToDoCard> {
  bool isEdit = false;
  TextEditingController titleTextController = TextEditingController();
  TextEditingController descTextController = TextEditingController();
  TextEditingController dateTextController = TextEditingController();
  String sheetTopHeading = "Create Task";
  List colorList = const [
    Color.fromRGBO(250, 232, 232, 1),
    Color.fromRGBO(232, 237, 250, 1),
    Color.fromRGBO(250, 249, 232, 1),
    Color.fromRGBO(250, 232, 250, 1),
    Color.fromRGBO(205, 240, 238, 1),
    Color.fromRGBO(233, 199, 224, 1),
  ];

  void showDate() async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2025),
    );
    String dateEntered = DateFormat.yMMMd().format(selectedDate!);
    setState(() {
      dateTextController.text = dateEntered;
    });
  }

  void showSheet(int index) {
    showModalBottomSheet(
        shape: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(28))),
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(sheetTopHeading,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                )),
                          ]),
                      Text(
                        "Title",
                        style: GoogleFonts.quicksand(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 60,
                        width: 400,
                        child: TextField(
                            controller: titleTextController,
                            decoration: const InputDecoration(
                                hintText: "Enter Title",
                                focusColor: Color.fromRGBO(2, 167, 177, 1),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      width: 3,
                                      color: Color.fromRGBO(2, 167, 177, 1)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3.5,
                                        color:
                                            Color.fromARGB(255, 83, 132, 147)),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10))))),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Description",
                        style: GoogleFonts.quicksand(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 60,
                        width: 400,
                        child: TextField(
                            controller: descTextController,
                            decoration: const InputDecoration(
                                hintText: "Enter Description",
                                focusColor: Color.fromRGBO(2, 167, 177, 1),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  borderSide: BorderSide(
                                      width: 3,
                                      color: Color.fromRGBO(2, 167, 177, 1)),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 3.5,
                                        color:
                                            Color.fromARGB(255, 83, 132, 147)),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10))))),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        "Date",
                        style: GoogleFonts.quicksand(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                          height: 60,
                          width: 400,
                          child: TextField(
                              controller: dateTextController,
                              readOnly: true,
                              decoration: InputDecoration(
                                  hintText: "Enter Date",
                                  focusColor:
                                      const Color.fromRGBO(2, 167, 177, 1),
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    borderSide: BorderSide(
                                        width: 3,
                                        color: Color.fromRGBO(2, 167, 177, 1)),
                                  ),
                                  focusedBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 3.5,
                                          color: Color.fromARGB(
                                              255, 83, 132, 147)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  suffixIcon: GestureDetector(
                                      onTap: () {
                                        showDate();
                                      },
                                      child: const Icon(
                                        Icons.calendar_month_outlined,
                                        color: Color.fromRGBO(2, 167, 177, 1),
                                      ))))),
                      const SizedBox(
                        height: 7,
                      ),
                      Center(
                          child: SizedBox(
                              height: 45,
                              width: 100,
                              child: ElevatedButton(
                                  style: const ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll(
                                          Color.fromRGBO(2, 167, 177, 1)),
                                      foregroundColor: MaterialStatePropertyAll(
                                          Colors.white)),
                                  onPressed: () {
                                    if (titleTextController.text != "" &&
                                        descTextController.text != "" &&
                                        dateTextController.text != "") {
                                      if (isEdit == false) {
                                        cardList.add(ToDoModal(
                                            titleController:
                                                titleTextController.text,
                                            descController:
                                                descTextController.text,
                                            dateController:
                                                dateTextController.text));
                                      } else {
                                        cardList[index].titleController =
                                            titleTextController.text;
                                        cardList[index].descController =
                                            descTextController.text;
                                        cardList[index].dateController =
                                            dateTextController.text;
                                      }
                                    }

                                    setState(() {
                                      Navigator.pop(context);
                                    });
                                  },
                                  child: const Text(
                                    "Submit",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.w700),
                                  ))))
                    ],
                  )));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do List"),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
      ),
      body: Padding(
          padding: const EdgeInsets.all(0),
          child: ListView.builder(
              itemCount: cardList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(
                      top: 18, left: 10, right: 10, bottom: 3),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 104, 100, 100),
                            offset: Offset(0, 9),
                            blurRadius: 11)
                      ],
                      color: colorList[index]),
                  width: 400,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 12, top: 10),
                              height: 52,
                              width: 52,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/book_note.png"),
                              )),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 8,
                              ),
                              SizedBox(
                                width: 200,
                                child: Text(
                                  "${cardList[index].titleController}",
                                  style: GoogleFonts.quicksand(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              SizedBox(
                                width: 225,
                                child: Text(
                                  "${cardList[index].descController}",
                                  style: GoogleFonts.quicksand(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(children: [
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          child: Text(
                            "${cardList[index].dateController}",
                            style: GoogleFonts.quicksand(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            isEdit = true;
                            sheetTopHeading = "Edit Task";
                            titleTextController.text =
                                cardList[index].titleController!;
                            descTextController.text =
                                cardList[index].descController!;
                            dateTextController.text =
                                cardList[index].dateController!;
                            setState(() {
                              showSheet(index);
                            });
                          },
                          child: const Icon(
                            Icons.edit_outlined,
                            color: Color.fromRGBO(2, 167, 177, 1),
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        GestureDetector(
                            onTap: () {
                              cardList.remove(cardList[index]);
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.delete_outline,
                              color: Color.fromRGBO(2, 167, 177, 1),
                            ))
                      ]),
                    ],
                  ),
                );
              })),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        onPressed: () {
          titleTextController.clear();
          descTextController.clear();
          dateTextController.clear();

          isEdit = false;
          sheetTopHeading = "Create task";
          showSheet(-1);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
