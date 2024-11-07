import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.answerText, this.onPush, {super.key});

  final String answerText;
  final void Function() onPush;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onPush,
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 7, 6, 87),
          foregroundColor: const Color.fromARGB(255, 231, 231, 231),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
