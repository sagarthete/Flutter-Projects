import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuestionIndex = 0;
  int _score = 0;

  List<Question> _questions = [
    Question("Flutter is developed by Google?", true),
    Question("Dart is a compiled language?", true),
    Question("Widgets in Flutter are stateful or stateless?", true),
  ];

  void _checkAnswer(bool userAnswer) {
    bool correctAnswer = _questions[_currentQuestionIndex].answer;

    setState(() {
      if (userAnswer == correctAnswer) {
        _score++;
      }

      if (_currentQuestionIndex < _questions.length - 1) {
        _currentQuestionIndex++;
      } else {
        // Quiz completed, show the score
        _showScoreDialog();
      }
    });
  }

  void _resetQuiz() {
    setState(() {
      _currentQuestionIndex = 0;
      _score = 0;
    });
  }

  void _showScoreDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Quiz Completed'),
          content: Text('Your Score: $_score out of ${_questions.length}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _resetQuiz();
              },
              child: Text('Play Again'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              _questions[_currentQuestionIndex].questionText,
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => _checkAnswer(true),
              child: Text('True'),
            ),
            ElevatedButton(
              onPressed: () => _checkAnswer(false),
              child: Text('False'),
            ),
          ],
        ),
      ),
    );
  }
}

class Question {
  String questionText;
  bool answer;

  Question(this.questionText, this.answer);
}
