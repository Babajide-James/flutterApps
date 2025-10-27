import 'package:flutter/material.dart';
import 'quiz_answers.dart';
import 'questions.dart';

class QuizOptions extends StatelessWidget {
  final void Function(int) listDigit;
  final int listNumber;
  final List<Map<String, Object>> quizQA;
  const QuizOptions({
    super.key,
    required this.listDigit,
    required this.quizQA,
    required this.listNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Questions(quizQA[listNumber]['question'] as String),
        ...(quizQA[listNumber]['Answer'] as List<Map<String, Object>>).map((
          justQuestions,
        ) {
          final answerText = justQuestions['text'] as String;
          final answerScore = justQuestions['scale'] as int;
          return QuizAnswers(() => listDigit(answerScore), answerText);
        }),
      ],
    );
  }
}
