import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final void Function()? resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get getResult {
    String result;
    if (resultScore <= 8) {
      result = "very well";
    } else if (resultScore <= 12) {
      result = "good";
    } else if (resultScore <= 16) {
      result = "not bad";
    } else {
      result = "your the wrost";
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            getResult,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("restart quiz"),
            textColor : Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
