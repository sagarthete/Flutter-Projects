import 'package:enter_page_todolist/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoTask extends StatefulWidget {
  const NoTask({super.key});

  @override
  State<NoTask> createState() => NoTaskState();
}

class NoTaskState extends State<NoTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("To Do List"),
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        ),
        body: Stack(fit: StackFit.expand, children: [
          Image.network(
              "https://media.istockphoto.com/id/539239670/photo/3d-farmer-pointing-to-empty-wall.jpg?s=612x612&w=0&k=20&c=UvfIptNPnYRpinLJZcrxny5GgYx7EuWZvWdncEv4CKA="),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
                child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 85,
                  width: 350,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                          width: 5,
                          color: const Color.fromARGB(255, 53, 76, 84)),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(255, 79, 78, 78),
                            offset: Offset(0, 10),
                            blurRadius: 10)
                      ],
                      color: const Color.fromARGB(255, 217, 239, 241)),
                  child: Text(
                    "You have completed all tasks..\nDo you want to add new?",
                    style: GoogleFonts.quicksand(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 470,
                ),
                Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                            width: 5,
                            color: const Color.fromARGB(255, 53, 76, 84)),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 79, 78, 78),
                              offset: Offset(0, 10),
                              blurRadius: 10)
                        ],
                        color: const Color.fromARGB(255, 183, 207, 213)),
                    child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 217, 239, 241))),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Image.network(
                          "https://cdn.pixabay.com/animation/2022/11/17/00/48/00-48-05-570__480.png",
                          fit: BoxFit.fill),
                    ))
              ],
            )),
          ),
        ]));
  }
}
