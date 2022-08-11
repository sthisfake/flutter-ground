// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var qusetionsAndAnswers = [

    {
      'question': 'what is your name?' ,
     'answer'   : ['pouya' , 'reza' , 'ali' , 'karim']
     } ,

    {
      'question': 'what is your name?' ,
     'answer'   : ['pouya' , 'reza' , 'ali' , 'karim']
     } ,

    {
      'question': 'what is your name?' ,
     'answer'   : ['pouya' , 'reza' , 'ali' , 'karim']
     } ,
     
  ];

  int _questionIndex = 0;

  void _changeQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  void show() {
    print("hey im here");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('first app'),
        ),
        body: Column(
          children: [
            Questions(qusetionsAndAnswers[_questionIndex]['question'].toString()),
            ...(qusetionsAndAnswers[0]['answer'] as List<String>).map((answer){
              return Answer(_changeQuestions , answer );
            }).toList()
          ],
        ),
      ),
    );
  }
}
