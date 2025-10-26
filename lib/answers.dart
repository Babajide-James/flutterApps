import 'package:flutter/material.dart';


class QuizAnswers extends StatelessWidget {

   final VoidCallback? streetWork;
   final String textAnswer;

   const QuizAnswers(this.streetWork, this.textAnswer, {super.key});

// final String quizQuestion;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: 
      ElevatedButton(
          style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 48, 193, 159)),
                onPressed: streetWork, 
                child: Text(textAnswer),
                ),
      );
  }
} 