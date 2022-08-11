import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  void Function()? something ;
  String answer = "";

  Answer(void Function()? something , String answer){
    this.something = something;
    this.answer = answer ;
  }

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