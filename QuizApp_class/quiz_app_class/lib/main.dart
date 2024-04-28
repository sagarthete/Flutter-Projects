import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => QuizAppState();
}

class QuizAppState extends State<QuizApp> {
  // ignore: non_constant_identifier_names
  bool QuestionPage = true;

  List<Map> quesAns = [
    {
      "question": "Who is the founder of Amazon ?",
      "answers": ["Larry Page", "Jeff Bezoz", "Elon Musk", "Steve Jobs"],
      "answerIndex": 1
    },
    {
      "question": "Who is the founder of Google ?",
      "answers": ["Larry Page", "Jeff Bezoz", "Elon Musk", "Steve Jobs"],
      "answerIndex": 0
    },
    {
      "question": "Who is the founder of Apple ?",
      "answers": ["Larry Page", "Jeff Bezoz", "Elon Musk", "Steve Jobs"],
      "answerIndex": 3
    },
    {
      "question": "Who is the founder of Tesla ?",
      "answers": ["Larry Page", "Jeff Bezoz", "Elon Musk", "Steve Jobs"],
      "answerIndex": 2
    },
    {
      "question": "Who is the founder of MicroSoft ?",
      "answers": ["Larry Page", "Jeff Bezoz", "Bill gates", "Steve Jobs"],
      "answerIndex": 2
    }
  ];

  int questionIndex = 0;
  int correctAns = 0;
  bool clicked = true;

  var colors = [
    Color.fromARGB(115, 233, 239, 236),
    Color.fromARGB(115, 233, 239, 236),
    Color.fromARGB(115, 233, 239, 236),
    Color.fromARGB(115, 233, 239, 236)
  ];

  ElevatedButton button(int ind) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: colors[ind], foregroundColor: Colors.black),
        onPressed: () {
          (clicked)
              ? setState(() {
                  clicked = false;
                  if (ind == quesAns[questionIndex]["answerIndex"]) {
                    colors[ind] = Colors.green;
                    correctAns = correctAns + 1;
                  } else {
                    colors[ind] = Colors.red;
                    colors[quesAns[questionIndex]["answerIndex"]] =
                        Colors.green;
                  }
                })
              : () {};
        },
        child: Text(
          "${quesAns[questionIndex]["answers"][ind]}",
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ));
  }

  Scaffold isHomePage() {
    if (QuestionPage) {
      return Scaffold(
          appBar: AppBar(
            title: const Text(
              "QuizApp",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 30,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.green,
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Questions : ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text("${questionIndex + 1}/${quesAns.length}",
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w600))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Score : ",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text("${correctAns}/${quesAns.length}",
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w600))
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Text("${quesAns[questionIndex]["question"]}",
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 45,
                width: 300,
                child: button(0),
              ),
              const SizedBox(
                height: 23,
              ),
              SizedBox(
                height: 45,
                width: 300,
                child: button(1),
              ),
              const SizedBox(
                height: 23,
              ),
              SizedBox(
                height: 45,
                width: 300,
                child: button(2),
              ),
              const SizedBox(
                height: 23,
              ),
              SizedBox(
                height: 45,
                width: 300,
                child: button(3),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                questionIndex = questionIndex + 1;
                if (questionIndex == quesAns.length) {
                  QuestionPage = false;
                }
                colors = [
                  Color.fromARGB(115, 233, 239, 236),
                  Color.fromARGB(115, 233, 239, 236),
                  Color.fromARGB(115, 233, 239, 236),
                  Color.fromARGB(115, 233, 239, 236)
                ];
                clicked = true;
              });
            },
            backgroundColor: Colors.green,
            child: const Text("next"),
          ));
    } else {
      return Scaffold(
          appBar: AppBar(
            title: Text("Quiz Done"),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Congratulations!!!",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text("You have scored",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 10,
                ),
                Text("$correctAns/${quesAns.length}",
                    style: const TextStyle(
                        fontSize: 19, fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      colors = [
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.white
                      ];
                      QuestionPage = true;
                      clicked = true;
                    },
                    child: const Text("Reset"))
              ],
            ),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return isHomePage();
  }
}
