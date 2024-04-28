import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'databaseConnection.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDoListState extends State {
  TextEditingController titleText = TextEditingController();
  TextEditingController descText = TextEditingController();
  TextEditingController dateText = TextEditingController();
  bool editFlag = false;
  Future<void> accessList() async {
    await createDatabase();
    await retriveData();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    accessList();
  }

  void showCalender() async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2025),
    );
    String dateEntered = DateFormat.yMMMd().format(selectedDate!);
    setState(() {
      dateText.text = dateEntered;
    });
  }

  Future updateList() async {
    await retriveData();
    setState(() {});
  }

  void showBottomPopupMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: const Color.fromARGB(255, 33, 47, 243),
        dismissDirection: DismissDirection.down,
        content: Text(
          message,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2), // Adjust duration as needed
      ),
    );
  }

  Future<void> checkBoxUpdate(int index) async {
    await updateCard(TaskModal(
        titleString: mapEntry[index].taskId,
        descString: titleText.text.trim(),
        dateString: dateText.text.trim(),
        checkTask: 1));
    await updateList();
  }

  bool checkBox = false;
  Future<void> submitValidation(int index) async {
    if (editFlag) {
      if (titleText.text.trim() != "" &&
          descText.text.trim() != "" &&
          dateText.text.trim() != "") {
        await updateCard(TaskModal(
            checkTask: 0,
            taskId: mapEntry[index].taskId,
            titleString: titleText.text.trim(),
            descString: descText.text.trim(),
            dateString: dateText.text.trim()));
      } else {
        if (titleText.text.trim() == "") {
          showBottomPopupMessage(context, "Enter title");
        } else if (descText.text.trim() == "") {
          showBottomPopupMessage(context, "Enter description");
        } else if (dateText.text.trim() == "") {
          showBottomPopupMessage(context, "Select date");
        }
      }
    } else {
      if (titleText.text.trim() != "" &&
          descText.text.trim() != "" &&
          dateText.text.trim() != "") {
        await insertData(TaskModal(
            checkTask: 0,
            titleString: titleText.text.trim(),
            descString: descText.text.trim(),
            dateString: dateText.text.trim()));
      } else {
        if (titleText.text.trim() == "") {
          showBottomPopupMessage(context, "Enter title");
        } else if (descText.text.trim() == "") {
          showBottomPopupMessage(context, "Enter description");
        } else if (dateText.text.trim() == "") {
          showBottomPopupMessage(context, "Select date");
        }
      }
    }
  }

  void showSheet(int index) {
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
              width: 410,
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
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
                                    color: Color.fromARGB(255, 2, 8, 13)),
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
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextField(
                        controller: dateText,
                        onTap: () {
                          showCalender();
                        },
                        readOnly: true,
                        decoration: InputDecoration(
                            label: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.calendar_month)),
                            enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(width: 2, color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2,
                                    color: Color.fromARGB(255, 99, 133, 243)),
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
                      onPressed: () async {
                        print("submit press");
                        await submitValidation(index);
                        await updateList();
                        setState(() {});
                        // ignore: use_build_context_synchronously
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
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color.fromARGB(255, 33, 47, 243),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 120,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 60, bottom: 0),
                child: Text(
                  "Good Morning",
                  style: GoogleFonts.quicksand(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
            Padding(
                padding: const EdgeInsets.only(left: 60, bottom: 20),
                child: Text(
                  "Sakshi",
                  style: GoogleFonts.quicksand(
                      fontSize: 33,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                height: 646,
                width: 500,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Color.fromARGB(255, 220, 224, 224),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "CREATE TO DO LIST",
                      style: GoogleFonts.quicksand(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromARGB(255, 35, 33, 33)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 500,
                      width: 450,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: ListView.builder(
                            itemCount: mapEntry.length,
                            itemBuilder: ((context, index) {
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
                                            height: 25,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              titleText.text =
                                                  mapEntry[index].titleString;
                                              descText.text =
                                                  mapEntry[index].descString;
                                              dateText.text =
                                                  mapEntry[index].dateString;
                                              editFlag = true;
                                              showSheet(index);
                                              setState(() {});
                                            },
                                            child: Container(
                                              height: 42.5,
                                              width: 42.5,
                                              decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color.fromARGB(
                                                      255, 33, 47, 243)),
                                              child: const Icon(
                                                Icons.edit,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          GestureDetector(
                                            onTap: () async {
                                              setState(() {
                                                deleteCard(mapEntry[index]);
                                              });
                                              await updateList();
                                              setState(() {});
                                            },
                                            // child: Container(
                                            //   height: 42.5,
                                            //   width: 42.5,
                                            //   decoration: const BoxDecoration(
                                            //       shape: BoxShape.circle,
                                            //       color: Color.fromARGB(
                                            //           255, 33, 47, 243)),
                                            //   child: const Icon(
                                            //     Icons.delete,
                                            //     color: Colors.white,
                                            //   ),
                                            // ),
                                          ),
                                        ],
                                      )
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
                                                    left: 12, top: 16),
                                                height: 62,
                                                width: 62,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white,
                                                ),
                                                child: const CircleAvatar(
                                                  backgroundImage: AssetImage(
                                                      "assets/book.webp"),
                                                )),
                                            const SizedBox(
                                              width: 25,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  height: 8,
                                                ),
                                                SizedBox(
                                                  width: 200,
                                                  child: Text(
                                                    "${mapEntry[index].titleString}",
                                                    style:
                                                        GoogleFonts.quicksand(
                                                            fontSize: 20,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 0,
                                                ),
                                                SizedBox(
                                                  width: 210,
                                                  child: Text(
                                                    "${mapEntry[index].descString}",
                                                    style:
                                                        GoogleFonts.quicksand(
                                                            fontSize: 17,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            GestureDetector(
                                                onTap: () async {
                                                  await checkBoxUpdate(
                                                      mapEntry[index].taskId);
                                                  updateList();
                                                  setState(() {});
                                                  print(
                                                      "i am here in gestrureTedector");
                                                  print(
                                                      "in gestureDetector :$MapEntry");
                                                },
                                                child: Container(
                                                  height: 20,
                                                  width: 20,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  100)),
                                                      border:
                                                          Border.all(width: 2)),
                                                  child: (mapEntry[index]
                                                              .checkTask ==
                                                          1)
                                                      ? const CircleAvatar(
                                                          child: Icon(
                                                            Icons.check,
                                                            size: 18,
                                                          ),
                                                        )
                                                      : Container(),
                                                )),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Row(children: [
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          SizedBox(
                                            child: Text(
                                                "${mapEntry[index].dateString}"),
                                          ),
                                          const Spacer(),
                                        ]),
                                      ],
                                    ),
                                  ));
                            })),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          editFlag = false;
          showSheet(0);
          updateList();
          titleText.clear();
          descText.clear();

          dateText.clear();

          setState(() {});
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
