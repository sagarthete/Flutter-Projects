import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:inherited_widget/main.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});
  @override
  State createState() => SkillsState();
}

class SkillsState extends State<Skills> {
  TextEditingController skillController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SharedData obj = SharedData.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Employee Skills",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
        ),
        backgroundColor: const Color.fromARGB(255, 30, 129, 33),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 60,
              width: 370,
              child: TextField(
                controller: skillController,
                decoration: const InputDecoration(
                    hintText: "enter your skill",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(width: 2, color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        borderSide: BorderSide(width: 2, color: Colors.black))),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  SharedData obj = SharedData.of(context);
                  obj.skills.add(skillController.text);
                });
              },
              child: Container(
                height: 49,
                alignment: Alignment.center,
                width: 100,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Color.fromARGB(255, 25, 128, 35)),
                child: const Text(
                  "Submit",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                height: 500,
                width: 380,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(
                      10,
                    )),
                    border: Border.all(width: 2, color: Colors.black)),
                child: ListView.builder(
                    itemCount: obj.skills.length,
                    itemBuilder: ((context, index) {
                      return Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 380,
                            color: const Color.fromARGB(255, 151, 208, 153),
                            child: Text(
                              "${obj.skills[index]}",
                              style: const TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          )
                        ],
                      );
                    })),
              ),
            )
          ],
        ),
      ),
    );
  }
}
