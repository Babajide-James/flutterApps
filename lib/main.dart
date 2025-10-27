import 'package:app1/end_of_game.dart';
import 'package:app1/questions.dart';
import 'package:flutter/material.dart';
import 'answers.dart';

void main(){
  runApp(Home());
}
class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<StatefulWidget> createState(){
    return HomeState();
  }
}

class HomeState extends State<Home>{
  var listNumber = 0;
  
     final quizQA = [{
'question': "Let's meet you!", 
'Answer': ['Your name', 'Your school', 'Your shop', 'Your Gender']
}, {
  'question': 'What is your full name', 
  'Answer': ['My name is Jack', 'My name is James', 'Jude' ]
}, {
  'question': 'What is your favourite food?', 
  'Answer': ['Rice', 'Bread', 'Pasta']
  }];

   void listDigit(){
    setState(() {
    listNumber++;
        });
       }
 
  @override
  Widget build (BuildContext context) {
        return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(  
        appBar: AppBar(
          title: Text("A New App"),
          centerTitle: true,
          foregroundColor: Color.fromARGB(255, 255, 239, 239),
          backgroundColor: Color.fromARGB(255, 16, 56, 39),
        ),
        body: SizedBox(
          width: double.infinity,
          child: listNumber <= listNumber.bitLength ? Column(
              children:<Widget>[
          Questions(
            quizQA[listNumber]
            ['question'] as String),
          ...(quizQA[listNumber]['Answer'] as List<String>).map((justQuestions){
            return QuizAnswers(listDigit, justQuestions);
          }),
              ]
         ) : EndOfGame(),
        ), 
      
      ));
  }}