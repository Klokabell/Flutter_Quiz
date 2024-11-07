import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results_screen.dart';

class QuizContainer extends StatefulWidget {
  const QuizContainer({super.key});

  @override
  State<QuizContainer> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<QuizContainer> {
  var displayedScreen = 'start-screen';
  List<String> userAnswers = [];

  void switchScreen() {
    setState(() {
      displayedScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    userAnswers.add(answer);

    if (userAnswers.length == questions.length) {
      setState(() {
        displayedScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartscreenContainer(switchScreen);

    if (displayedScreen == 'question-screen') {
      screenWidget = QuestionScreen(setAnswer: chooseAnswer);
    }

    if (displayedScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: userAnswers,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 100, 41, 202),
              Color.fromARGB(255, 74, 32, 146),
              Color.fromARGB(255, 40, 14, 85)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
