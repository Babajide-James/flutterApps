import 'package:flutter/material.dart';

class EndOfGame extends StatefulWidget {
  const EndOfGame({super.key});

  @override
  State<EndOfGame> createState() => _EndOfGameState();
}

class _EndOfGameState extends State<EndOfGame> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Text('data',
            textAlign: TextAlign.center,
            style: TextStyle(wordSpacing: 12)));
      }
}