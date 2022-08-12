import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  final void Function()? something ;
  final String answer ;

  Answer(this.something , this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(answer),
        onPressed: something ,
        ),  
    );
  }
}