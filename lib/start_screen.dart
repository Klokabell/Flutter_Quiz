import 'package:flutter/material.dart';

class StartscreenContainer extends StatelessWidget {
  const StartscreenContainer(this.startQuiz, {super.key});

  final fontColor = Colors.white10;
  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(146, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          const Text(
            "Flutter Quiz App Thing!",
            style: TextStyle(
                color: Color.fromARGB(255, 233, 231, 231), fontSize: 20),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  shape: const RoundedRectangleBorder()),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                "Start Quiz",
              ))
        ],
      ),
    );
  }
}
