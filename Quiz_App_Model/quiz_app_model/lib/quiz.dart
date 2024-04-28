import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  State<QuizApp> createState() => QuizAppState();
}

class Model {
  final String? question;
  final List? options;
  final int? answer;
  const Model({this.question, this.options, this.answer});
}

class QuizAppState extends State<QuizApp> {
  bool questionPage = true;
  int questionIndex = 0;
  int score = 0;
  int selectedIndex = -1;

  List questionsList = [
    const Model(
        question: "Which programming language is used for fluter development ?",
        options: ["1.Java", "2.Python", "3.Dart", "4.Swift"],
        answer: 2),
    const Model(
        question: "Which Widget is used to create a list in flutter ?",
        options: ["1.ListView", "2.ListWidget", "3.ListLayout", "4.ListBoxed"],
        answer: 0),
    const Model(
        question: "Which Widget is used to create a button in flutter ?",
        options: ["1.SizedBox", "2.TextStyle", "3.MediaQuery", "4.IconButton"],
        answer: 3),
    const Model(
        question: "Which Widget is used to take text as input ?",
        options: ["1.TextField", "2.TextInput", "3.InputText", "4.InputField"],
        answer: 0),
    const Model(
        question: "Which Widget is used to display an image in flutter ?",
        options: ["1.ImageField", "2.ImageWidget", "3.Image", "4.ImageView"],
        answer: 2),
  ];

  MaterialStateProperty<Color?> setColor(int buttonIndex) {
    if (selectedIndex != -1) {
      if (buttonIndex == questionsList[questionIndex].answer) {
        return const MaterialStatePropertyAll(Colors.green);
      } else {
        if (buttonIndex == selectedIndex) {
          return const MaterialStatePropertyAll(Colors.red);
        } else {
          return const MaterialStatePropertyAll(
              Color.fromARGB(167, 252, 254, 250));
        }
      }
    } else {
      return const MaterialStatePropertyAll(Color.fromARGB(167, 252, 254, 250));
    }
  }

  void nextQuestion() {
    if (selectedIndex == questionsList[questionIndex].answer) {
      score = score + 1;
    }
    if (selectedIndex != -1) {
      if (questionIndex < questionsList.length - 1) {
        selectedIndex = -1;
        questionIndex = questionIndex + 1;
      } else {
        questionPage = false;
      }
    }
  }

  Scaffold isQuestionPage() {
    if (questionPage) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("QuizApp",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800)),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Questions : ",
                    style:
                        TextStyle(fontSize: 23, fontWeight: FontWeight.w600)),
                Text("${questionIndex + 1}/${questionsList.length}",
                    style: const TextStyle(
                        fontSize: 23, fontWeight: FontWeight.w600)),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Score : ",
                    style:
                        TextStyle(fontSize: 23, fontWeight: FontWeight.w600)),
                Text("$score/${questionsList.length}",
                    style: const TextStyle(
                        fontSize: 23, fontWeight: FontWeight.w600)),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 10),
              child: Text("${questionsList[questionIndex].question}",
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w600)),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 320,
              child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(20),
                      backgroundColor: setColor(0),
                      foregroundColor:
                          const MaterialStatePropertyAll(Colors.black)),
                  onPressed: () {
                    setState(() {
                      if (selectedIndex == -1) {
                        selectedIndex = 0;
                      }
                    });
                  },
                  child: Text("${questionsList[questionIndex].options[0]}",
                      style: const TextStyle(
                          fontSize: 21, fontWeight: FontWeight.w500))),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 320,
              child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(20),
                      backgroundColor: setColor(1),
                      foregroundColor:
                          const MaterialStatePropertyAll(Colors.black)),
                  onPressed: () {
                    setState(() {
                      if (selectedIndex == -1) {
                        selectedIndex = 1;
                      }
                    });
                  },
                  child: Text("${questionsList[questionIndex].options[1]}",
                      style: const TextStyle(
                          fontSize: 21, fontWeight: FontWeight.w500))),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 320,
              child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(20),
                      backgroundColor: setColor(2),
                      foregroundColor:
                          const MaterialStatePropertyAll(Colors.black)),
                  onPressed: () {
                    setState(() {
                      if (selectedIndex == -1) {
                        selectedIndex = 2;
                      }
                    });
                  },
                  child: Text("${questionsList[questionIndex].options[2]}",
                      style: const TextStyle(
                          fontSize: 21, fontWeight: FontWeight.w500))),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              width: 320,
              child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(20),
                      backgroundColor: setColor(3),
                      foregroundColor:
                          const MaterialStatePropertyAll(Colors.black)),
                  onPressed: () {
                    setState(() {
                      if (selectedIndex == -1) {
                        selectedIndex = 3;
                      }
                    });
                  },
                  child: Text("${questionsList[questionIndex].options[3]}",
                      style: const TextStyle(
                          fontSize: 21, fontWeight: FontWeight.w500))),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              nextQuestion();
            });
          },
          backgroundColor: Colors.green,
          child: const Text("next"),
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("QuizApp",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800)),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text("Congratulations !!",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 35,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                height: 400,
                width: 350,
                child: Image.network(
                  "https://static.vecteezy.com/system/resources/previews/027/767/256/original/first-place-gold-trophy-cup-champion-trophy-sport-award-winner-prize-in-flat-style-vector.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("You have Scored",
                  style: TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(213, 163, 118, 14),
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 12,
              ),
              Text("$score/${questionsList.length}",
                  style: const TextStyle(
                      fontSize: 30,
                      color: Color.fromARGB(213, 169, 132, 11),
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: 130,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      questionPage = true;
                      selectedIndex = -1;
                      score = 0;
                      questionIndex = 0;
                    });
                  },
                  style: ButtonStyle(
                      elevation: MaterialStateProperty.all(20),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.green)),
                  child: const Text(
                    "Reset",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionPage();
  }
}
