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
  var _qusetions = ['q1 is', 'q2 is', 'q3 is', 'q4 is'];

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
            Questions(
              _qusetions[_questionIndex],
            ),
            Answer(_changeQuestions),
            Answer(_changeQuestions),
            Answer(_changeQuestions),
          ],
        ),
      ),
    );
  }
}
