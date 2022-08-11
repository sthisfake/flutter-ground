import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  void Function()? something ;

  Answer(void Function()? something){
    this.something = something;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text("answer 1"),
        onPressed: something ,
        ),  
    );
  }
}