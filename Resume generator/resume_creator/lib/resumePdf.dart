import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'resumeHome.dart';
import 'databaseConnection.dart';

class ResumePDF extends StatefulWidget {
  const ResumePDF({super.key});

  @override
  State createState() => ResumeState();
}

class ResumeState extends State<ResumePDF> {
  List colorList = const [
    Color.fromARGB(255, 210, 236, 218),
    Color.fromARGB(255, 242, 238, 243),
    Color.fromARGB(255, 223, 233, 227),
    Color.fromARGB(255, 208, 206, 223),
    Color.fromARGB(255, 220, 226, 214)
  ];

  Future updateListPdf() async {
    await retriveData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    updateListPdf();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Your Resume",
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          height: 600,
          width: 350,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(2)),
              color: Color.fromARGB(255, 232, 234, 237),
              border: Border.all(width: 1),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 93, 91, 91),
                    offset: Offset(0, 10),
                    spreadRadius: 10,
                    blurRadius: 10)
              ]),
          child: Padding(
            padding: const EdgeInsets.only(right: 0, left: 0, top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: 400,
                  padding: const EdgeInsets.only(right: 8, left: 8, top: 0),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Color.fromARGB(255, 62, 62, 62)),
                    color: Color.fromARGB(255, 62, 62, 62),
                  ),
                  child: const Text("Personal Details :",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
                Container(
                  padding: const EdgeInsets.only(right: 8, left: 8, top: 0),
                  width: 400,
                  height: 100,
                  color: const Color.fromARGB(255, 62, 62, 62),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 22,
                        child: Text(
                          "Name : ${mapEntry[pdfIndex].name}",
                          style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        height: 22,
                        child: Text(
                          "Email Id : ${mapEntry[pdfIndex].email}",
                          style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        height: 22,
                        child: Text(
                          "Contact No : ${mapEntry[pdfIndex].contactNo}",
                          style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                /*####################################################################################################*/
                Container(
                  height: 30,
                  width: 340,
                  padding: const EdgeInsets.only(right: 8, left: 8, top: 0),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Color.fromARGB(255, 10, 10, 10)),
                    color: Color.fromARGB(255, 62, 62, 62),
                  ),
                  child: const Text("Educational Details :",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 255, 252, 252))),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 8, left: 8, top: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 22,
                        child: Text(
                          "Name : ${mapEntry[pdfIndex].tenth}",
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        height: 22,
                        child: Text(
                          "Email Id : ${mapEntry[pdfIndex].twelveth}",
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 8, left: 8, top: 0),
                  height: 30,
                  width: 340,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Color.fromARGB(255, 14, 14, 14)),
                    color: Color.fromARGB(255, 62, 62, 62),
                  ),
                  child: const Text("Skill & Experties :",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 8, left: 8, top: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 22,
                        child: Text(
                          "Programming skills : ${mapEntry[pdfIndex].pSkills}",
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        height: 22,
                        child: Text(
                          "Soft Skills : ${mapEntry[pdfIndex].sSkills}",
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 8, left: 8, top: 0),
                  height: 30,
                  width: 340,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Color.fromARGB(255, 22, 23, 23)),
                    color: Color.fromARGB(255, 62, 62, 62),
                  ),
                  child: const Text("Internship Details :",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 8, left: 8, top: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 22,
                        child: Text(
                          "Company : ${mapEntry[pdfIndex].internShip}",
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        height: 22,
                        child: Text(
                          "Domain : ${mapEntry[pdfIndex].iDescription}",
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 8, left: 8, top: 0),
                  height: 30,
                  width: 340,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Color.fromARGB(255, 18, 18, 18)),
                    color: Color.fromARGB(255, 62, 62, 62),
                  ),
                  child: const Text("Project Details :",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.only(right: 8, left: 8, top: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 22,
                        child: Text(
                          "Project Name : ${mapEntry[pdfIndex].projects}",
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                        height: 22,
                        child: Text(
                          "About Project : ${mapEntry[pdfIndex].pDescription}",
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
