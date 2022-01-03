import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback wasuup;
  final String answerText;

  const Answer(this.wasuup, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.amber,

        child: Text(answerText,
          style: TextStyle(
              color: Colors.black),),
        onPressed: wasuup

      ),
    );
  }
}
