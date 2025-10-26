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
  // var questionList = <String>[
  //   'This is the game buddy',
  //    'This is the next page button', 
  //    'This is the third one'];

     final quizQA = [{
'question': 'What do you know?', 
'Answer': ['my name', 'my school', 'my shop']
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
    if (listNumber >= quizQA.length){
      listNumber = 0;
    }
    });
  }
  // void pressButton() => print('Answer selected!');
  
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
          child: Column(
              children:<Widget>[
          Questions(
            quizQA[listNumber]
            ['question'] as String),
          ...(quizQA[listNumber]['Answer'] as List<String>).map((justQuestions){
            return QuizAnswers(listDigit, justQuestions);
          })              
          ],
         ),
        ), 
      
    ));
  }
}