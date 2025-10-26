import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
   const Questions(this.questionList, {super.key});
  final String questionList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        questionList,
        style: TextStyle(fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}