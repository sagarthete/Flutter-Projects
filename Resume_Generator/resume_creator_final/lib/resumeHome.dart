import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:resume_creator/login_page.dart';

import 'package:resume_creator/resumePdf.dart';
import 'databaseConnection.dart';

int pdfIndex = -1;
bool isLoginUser = false;

class Resume extends StatefulWidget {
  const Resume({super.key});
  @override
  State createState() => ResumeGenerator();
}

class ResumeGenerator extends State {
  TextEditingController nameController = TextEditingController();
  TextEditingController gmailController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController tenthController = TextEditingController();
  TextEditingController twelvethController = TextEditingController();
  TextEditingController pSkillsController = TextEditingController();
  TextEditingController softSkillController = TextEditingController();
  TextEditingController projectController = TextEditingController();
  TextEditingController pDescController = TextEditingController();
  TextEditingController internController = TextEditingController();
  TextEditingController idescController = TextEditingController();

  bool editFlag = true;

  bool backgroundImageFlag = true;
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

  Future updateList() async {
    await retriveData();
    setState(() {});
  }

  void showBottomPopupMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Color.fromARGB(255, 127, 148, 206),
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
    await updateCard(InfoModal(
      name: nameController.text,
      email: gmailController.text,
      contactNo: contactController.text,
      tenth: tenthController.text,
      twelveth: twelvethController.text,
      pSkills: pSkillsController.text,
      sSkills: softSkillController.text,
      projects: projectController.text,
      pDescription: pDescController.text,
      internShip: internController.text,
      iDescription: idescController.text,
    ));
    await updateList();
  }

  bool checkBox = false;
  Future<void> submitValidation(int index) async {
    if (editFlag) {
      if (nameController.text.trim() != "" &&
          gmailController.text.trim() != "" &&
          contactController.text.trim() != "") {
        await updateCard(InfoModal(
          userId: mapEntry[index].userId,
          name: nameController.text,
          email: gmailController.text,
          contactNo: contactController.text,
          tenth: tenthController.text,
          twelveth: twelvethController.text,
          pSkills: pSkillsController.text,
          sSkills: softSkillController.text,
          projects: projectController.text,
          pDescription: pDescController.text,
          internShip: internController.text,
          iDescription: idescController.text,
        ));
      } else {
        if (nameController.text.trim() == "") {
          showBottomPopupMessage(context, "Enter title");
        } else if (gmailController.text.trim() == "") {
          showBottomPopupMessage(context, "Enter description");
        } else if (contactController.text.trim() == "") {
          showBottomPopupMessage(context, "Enter Contact Number");
        }
      }
    } else {
      if (nameController.text.trim() != "" &&
          gmailController.text.trim() != "" &&
          contactController.text.trim() != "") {
        await insertData(InfoModal(
          name: nameController.text,
          email: gmailController.text,
          contactNo: contactController.text,
          tenth: tenthController.text,
          twelveth: twelvethController.text,
          pSkills: pSkillsController.text,
          sSkills: softSkillController.text,
          projects: projectController.text,
          pDescription: pDescController.text,
          internShip: internController.text,
          iDescription: idescController.text,
        ));
      } else {
        if (nameController.text.trim() == "") {
          showBottomPopupMessage(context, "Enter Name");
        } else if (gmailController.text.trim() == "") {
          showBottomPopupMessage(context, "Enter EmailId");
        } else if (contactController.text.trim() == "") {
          showBottomPopupMessage(context, "Enter Contact number");
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
                  padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
                  width: 410,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 233, 238, 250),
                    image: DecorationImage(
                      image: AssetImage('assets/purple.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: ListView(scrollDirection: Axis.vertical, children: [
                    Column(children: [
                      const SizedBox(
                        height: 25,
                      ),
                      /*#######################################################################################################*/
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Enter Personal Details",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    Color.fromARGB(255, 14, 14, 14),
                                decorationThickness: 2,
                              )),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Name",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 55,
                            width: 350,
                            child: TextField(
                              controller: nameController,
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Color.fromARGB(
                                              255, 82, 30, 30)))),
                            ),
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
                            "Gmail Id",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 55,
                            width: 350,
                            child: TextField(
                              controller: gmailController,
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Color.fromARGB(255, 2, 8, 13)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color:
                                              Color.fromARGB(255, 82, 30, 30)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)))),
                            ),
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
                            "Contact No",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 55,
                            width: 350,
                            child: TextField(
                              controller: contactController,
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color:
                                              Color.fromARGB(255, 82, 30, 30)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)))),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      /*#####################################################################################################*/
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Enter Previous Education",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    Color.fromARGB(255, 14, 14, 14),
                                decorationThickness: 2,
                              )),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "10th details",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 55,
                            width: 350,
                            child: TextField(
                              controller: tenthController,
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Color.fromARGB(
                                              255, 82, 30, 30)))),
                            ),
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
                            "12th detail",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 55,
                            width: 350,
                            child: TextField(
                              controller: twelvethController,
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Color.fromARGB(255, 2, 8, 13)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color:
                                              Color.fromARGB(255, 82, 30, 30)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)))),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      /*###################################################################################################*/
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Enter Skill Details",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    Color.fromARGB(255, 14, 14, 14),
                                decorationThickness: 2,
                              )),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Programming skill",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 55,
                            width: 350,
                            child: TextField(
                              controller: pSkillsController,
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Color.fromARGB(
                                              255, 82, 30, 30)))),
                            ),
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
                            "Soft skill",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 55,
                            width: 350,
                            child: TextField(
                              controller: softSkillController,
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Color.fromARGB(255, 2, 8, 13)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color:
                                              Color.fromARGB(255, 82, 30, 30)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)))),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          )
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Internship Details",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    Color.fromARGB(255, 14, 14, 14),
                                decorationThickness: 2,
                              )),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Internship At",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 55,
                            width: 350,
                            child: TextField(
                              controller: internController,
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Color.fromARGB(
                                              255, 82, 30, 30)))),
                            ),
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
                            "Internship Domain",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 55,
                            width: 350,
                            child: TextField(
                              controller: idescController,
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Color.fromARGB(255, 2, 8, 13)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color:
                                              Color.fromARGB(255, 82, 30, 30)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)))),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Project Details",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    Color.fromARGB(255, 14, 14, 14),
                                decorationThickness: 2,
                              )),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "Project Name",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 55,
                            width: 350,
                            child: TextField(
                              controller: projectController,
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Color.fromARGB(
                                              255, 82, 30, 30)))),
                            ),
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
                            "Project Description",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            height: 55,
                            width: 350,
                            child: TextField(
                              controller: pDescController,
                              decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color: Color.fromARGB(255, 2, 8, 13)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20))),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2,
                                          color:
                                              Color.fromARGB(255, 82, 30, 30)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20)))),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 110),
                            child: ElevatedButton(
                                style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 109, 56, 56),
                                )),
                                onPressed: () async {
                                  print("submit press");
                                  await submitValidation(index);
                                  await updateList();
                                  print(mapEntry);
                                  backgroundImageFlag = false;
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
                                )),
                          ),
                        ],
                      ),
                    ]),
                  ])));
        });
  }

/*###############################################################################################################################*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Resume",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500)),
        backgroundColor: const Color.fromARGB(255, 111, 115, 165),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          (backgroundImageFlag)
              ? Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/stand_girl.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                )
              : Container(),
          ListView.builder(
              itemCount: mapEntry.length,
              itemBuilder: (context, index) {
                return Slidable(
                  closeOnScroll: true,
                  enabled: true,
                  endActionPane: ActionPane(
                      extentRatio: 0.15,
                      motion: const ScrollMotion(),
                      children: [
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(
                                height: 25,
                              ),
                              GestureDetector(
                                onTap: () {
                                  editFlag = true;
                                  showSheet(index);
                                  if (editFlag) {
                                    nameController.text = mapEntry[index].name;
                                    gmailController.text =
                                        mapEntry[index].email;
                                    contactController.text =
                                        mapEntry[index].contactNo;
                                    tenthController.text =
                                        mapEntry[index].tenth;
                                    twelvethController.text =
                                        mapEntry[index].twelveth;
                                    pSkillsController.text =
                                        mapEntry[index].pSkills;
                                    softSkillController.text =
                                        mapEntry[index].sSkills;
                                    projectController.text =
                                        mapEntry[index].projects;
                                    pDescController.text =
                                        mapEntry[index].pDescription;
                                    internController.text =
                                        mapEntry[index].internShip;
                                    idescController.text =
                                        mapEntry[index].iDescription;
                                  }
                                  setState(() {});
                                },
                                child: Container(
                                  height: 27,
                                  width: 27,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          Color.fromARGB(255, 112, 116, 173)),
                                  child: const Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  setState(() {
                                    deleteCard(mapEntry[index]);
                                  });
                                  await updateList();
                                  setState(() {});
                                },
                                child: Container(
                                  height: 27,
                                  width: 27,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          Color.fromARGB(255, 112, 116, 173)),
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                  child: Padding(
                      padding:
                          const EdgeInsets.only(top: 25, right: 15, left: 15),
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        width: 490,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 105, 104, 104),
                                offset: Offset(0, 10),
                                blurRadius: 10,
                                spreadRadius: 5)
                          ],
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(255, 240, 220, 207),
                            Color.fromARGB(255, 227, 224, 209),
                            Color.fromARGB(255, 235, 233, 224),
                            Color.fromARGB(255, 237, 234, 229),
                            Color.fromARGB(255, 235, 233, 230),
                            Color.fromARGB(255, 253, 253, 252)
                          ], stops: [
                            0.1,
                            0.13,
                            0.20,
                            0.28,
                            0.39,
                            0.75
                          ]),
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/men_caed.avif'), // Replace with your image
                            fit: BoxFit.fitHeight,
                            alignment: Alignment.centerRight,

                            // You can adjust the fit as per your requirement
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 1),
                                  child: ClipOval(
                                    child: Image.asset(
                                      "assets/profile.png",
                                      height: 40,
                                      width: 40,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 150,
                                  child: Text(
                                    "${mapEntry[index].name}",
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color:
                                            Color.fromARGB(255, 156, 109, 109)),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                IconButton(
                                    onPressed: () {
                                      print(isLoginUser);
                                      pdfIndex = index;
                                      (isLoginUser)
                                          ? Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                                print(isLoginUser);
                                                return const ResumePDF();
                                              }),
                                            )
                                          : Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                                print(isLoginUser);
                                                isLoginUser = true;
                                                print(isLoginUser);
                                                return const LoginPage();
                                              }),
                                            );
                                    },
                                    icon: const Icon(Icons.picture_as_pdf)),
                              ],
                            )
                          ],
                        ),
                      )),
                );
              })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          editFlag = false;
          showSheet(0);
          updateList();
          nameController.clear();
          gmailController.clear();

          contactController.clear();
          tenthController.clear();
          twelvethController.clear();
          internController.clear();
          idescController.clear();
          projectController.clear();
          pDescController.clear();
          pSkillsController.clear();
          softSkillController.clear();

          setState(() {});
        },
        backgroundColor: const Color.fromARGB(255, 111, 115, 165),
        foregroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
