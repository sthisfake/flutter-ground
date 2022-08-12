// ignore_for_file: prefer_const_constructors
import 'dart:async';

import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

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
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _resetQuiz(){
      setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _changeQuestions(int? score) {

    if(score != null){
      
    _totalScore = _totalScore + score ;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    } else{
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('first app'),
        ),
        body: _questionIndex < qusetionsAndAnswers.length
            ? Quiz(qusetionsAndAnswers: qusetionsAndAnswers,something:_changeQuestions  , questionIndex: _questionIndex, )
            : Result(_totalScore , _resetQuiz)
      ),
    );
  }
}
