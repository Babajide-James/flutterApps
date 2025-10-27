import 'package:app1/end_of_game.dart';
import 'package:flutter/material.dart';
import './app_bar.dart';
import 'quiz_options.dart';

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  final _quizQA = [
    {
      'question': "Let's meet you!",
      'Answer': [
        {'text': 'Your name', 'scale': 10},
        {'text': 'Your school', 'scale': 16},
        {'text': 'Your shop', 'scale': 4},
        {'text': 'Your Gender', 'scale': 12},
      ],
    },
    {
      'question': 'What is your full name',
      'Answer': [
        {'text': 'My name is Jack', 'scale': 10},
        {'text': 'My name is James', 'scale': 8},
        {'text': 'Jude', 'scale': 16},
        {'text': 'Jude', 'scale': 4},
      ],
    },
    {
      'question': 'What is your favourite food?',
      'Answer': [
        {'text': 'Rice', 'scale': 10},
        {'text': 'Bread', 'scale': 6},
        {'text': 'Pasta', 'scale': 8},
        {'text': 'Beans', 'scale': 2},
      ],
    },
  ];

  var _listNumber = 0;
  var _resultScore = 0;

  void resetQuiz() {
    setState(() {
      _listNumber = 0;
      _resultScore = 0;
    });
  }

  void _listDigit(int scale) {
    _resultScore += scale;
    setState(() {
      _listNumber++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: Appbar(),
        body: SizedBox(
          width: double.infinity,
          child: _listNumber <= _listNumber.bitLength
              ? QuizOptions(
                  listDigit: _listDigit,
                  quizQA: _quizQA,
                  listNumber: _listNumber,
                )
              : EndOfGame(_resultScore, resetQuiz),
        ),
      ),
    );
  }
}
