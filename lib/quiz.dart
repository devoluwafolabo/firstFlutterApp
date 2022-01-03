import 'package:flutter/material.dart';
import './question.dart';
import "./answer.dart";



class Quiz extends StatelessWidget {

  final List<Map<String, Object>> question;
  final Function questionButton;
  final int _questionIndex;

  Quiz(this.question, this.questionButton, this._questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[_questionIndex]['questionText'].toString(),
        ),
        ...(question[_questionIndex]["answer"] as List<Map<String, Object>>)
            .map((answer){
          return Answer(()=>questionButton(answer['score']),
              answer['text'].toString());
        }).toList()

      ],

    );
  }
}
