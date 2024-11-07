import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            const baseColor = Color.fromARGB(244, 244, 244, 133);
            var answerCorrect =
                data['user_answer'] == data['answer'] ? true : false;
            var answerColor = answerCorrect
                ? const Color.fromARGB(255, 107, 226, 111)
                : const Color.fromARGB(255, 185, 37, 57);

            return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration:
                    BoxDecoration(color: answerColor, shape: BoxShape.circle),
                child: Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: GoogleFonts.roboto(
                      color: const Color.fromARGB(255, 60, 20, 131),
                      fontSize: 14,
                      fontWeight: FontWeight.w800),
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data['question'] as String,
                      style: GoogleFonts.roboto(
                          color: baseColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(data['user_answer'] as String,
                        style: GoogleFonts.roboto(
                            color: answerColor.withOpacity(0.8),
                            fontWeight: FontWeight.bold)),
                    Text(
                      data['answer'] as String,
                      style: GoogleFonts.roboto(
                          color: const Color.fromARGB(255, 55, 170, 59),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20)
                  ],
                ),
              )
            ]);
          }).toList(),
        ),
      ),
    );
  }
}
