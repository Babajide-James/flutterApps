import 'package:flutter/material.dart';

class EndOfGame extends StatelessWidget {
  const EndOfGame(this.resultScore, this.resetQuiz, {super.key});

  final int resultScore;
  final VoidCallback resetQuiz;
  String get resultOutput {
    String resultText = 'End of Game!';
    if (resultScore <= 8) {
      resultText = 'This is amazing, You guessed right!';
    } else if (resultScore <= 12) {
      resultText = 'You Tried!';
    } else if (resultScore <= 16) {
      resultText = 'Your Failed, play again!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          resultOutput,
          textAlign: TextAlign.center,
          style: TextStyle(
            wordSpacing: 12,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        OutlinedButton(
          onPressed: resetQuiz,
          child: Text('Click to Start Again'),
        ),
      ],
    );
  }
}
