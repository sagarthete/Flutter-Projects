import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quiz(),
    );
  }
}

class Quiz extends StatefulWidget {
  Quiz({super.key});
  @override
  State createState() => _QuizState();
}

class singleQuestionModel {
  final String? question;
  final List<String>? options;
  final int? answerIndex;

  const singleQuestionModel({this.question, this.options, this.answerIndex});
}

class _QuizState extends State {
  List allQuestions = [
    (
      question:
          "Who developed the Flutter Framework and continues to maintain it today?",
      options: [" Facebook", " Microsoft", "Google", " Oracle"],
      answerIndex: 2,
    ),
    (
      question:
          "Which programming language is used to build Flutter applications?",
      options: ["Kotlin", "Java", "Dart", "Go"],
      answerIndex: 2,
    ),
    (
      question:
          "Access to a cloud database through Flutter is available through which service?",
      options: ["SQLite", "Firebase", "Database", "NOSQL", "MYSQL"],
      answerIndex: 1,
    ),
    (
      question:
          "Which function will return the widgets attached to the screen as a root of the widget tree to be rendered on screen?",
      options: ["main()", "runApp()", "container()", "root()"],
      answerIndex: 1,
    ),
    (
      question:
          "Which component allows us to specify the distance between widgets on the screen?",
      options: ["SafeArea", "table", "AppBar", "SizedBox"],
      answerIndex: 3,
    ),
  ];
  MaterialStateProperty<Color?> checkAnswer(int buttonIndex) {
    if (selectindex != -1) {
      if (buttonIndex == allQuestions[questionIndex].answerIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (buttonIndex == selectindex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  void validateCurrentPage() {
    if (selectindex == -1) {
      return;
    }
    if (selectindex == allQuestions[questionIndex].answerIndex) {
      correctAnswer++;
    }
    if (selectindex != -1) {
      questionIndex++;
      selectindex = -1;
    }
    if (questionIndex == allQuestions.length) {
      questionScreen = false;
    }
    setState(() {});
  }

  bool questionScreen = true;
  int questionIndex = 0;
  int selectindex = -1;
  int flag = 0;
  int correctAnswer = 0;

  Scaffold isQuestionScreen() {
    if (questionScreen == true) {
      return Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.orange,
          title: const Text(
            "QuizApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
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
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "${questionIndex + 1}/${allQuestions.length}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 800,
              height: 80,
              child: Text(
                allQuestions[questionIndex].question,
                style: const TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 30,
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(0),
                ),
                onPressed: () {
                  if (selectindex == -1) {
                    setState(() {
                      selectindex = 0;
                    });
                  }
                },
                child: Text(
                  "A.${allQuestions[questionIndex].options[0]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 30,
              width: 200,
              //decoration: BoxDecoration(border: Border.all()),
              child: ElevatedButton(
      
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                ),
                onPressed: () {
                  if (selectindex == -1) {
                    setState(() {
                      selectindex = 1;
                    });
                  }
                },
                child: Text(
                  "B.${allQuestions[questionIndex].options[1]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 30,
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                ),
                onPressed: () {
                  if (selectindex == -1) {
                    setState(() {
                      selectindex = 2;
                    });
                  }
                },
                child: Text(
                  "C.${allQuestions[questionIndex].options[2]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 30,
              width: 200,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                ),
                onPressed: () {
                  if (selectindex == -1) {
                    setState(() {
                      selectindex = 3;
                    });
                  }
                },
                child: Text(
                  "D.${allQuestions[questionIndex].options[3]}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            validateCurrentPage();
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.forward,
            color: Colors.black,
          ),
        ),
      );
    } else {
      return Scaffold(
          appBar: AppBar(
            title: const Text(
              "QuizApp",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
          ),
          body: Center(
              child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 300,
                width: 300,
                child: Image.network(
                  "https://tse3.mm.bing.net/th?id=OIP.wH5FwkpqfE2nInJkq2jK5AHaGP&pid=Api&P=0&h=220",
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Congratulation!!",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold
                    // color: Colors.white
                    ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Your Score: $correctAnswer/${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  questionIndex = 0;
                  selectindex = -1;
                  questionScreen = true;
                  correctAnswer = 0;
                  setState(() {});
                },
                child: const Text(
                  "RESET",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }
}