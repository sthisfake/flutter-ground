import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> qusetionsAndAnswers ;
  final int questionIndex ;
  final Function something;

  Quiz({
    required this.qusetionsAndAnswers ,
    required this.something ,
    required this.questionIndex ,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(qusetionsAndAnswers[questionIndex]['questionText'].toString()),
        ...(qusetionsAndAnswers[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer( () => something(answer['score']), answer['text'].toString());
        }).toList()
      ],
    );
  }
}
