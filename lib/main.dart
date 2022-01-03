


import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './question.dart';
import "./answer.dart";
import "./quiz.dart";

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
  }


class MyAppState extends State<MyApp>{
  var question = [
    {
      'questionText': "what is your name?",
    "answer":[
        {"text":'Oluwafolabo',"score":10},
        {"text":'Bolarinwa',"score":5},
        {"text":'Chibuzor',"score":3,}
          ],
    },

    {
      'questionText': "What are you into?",
      "answer":[
        {"text":'Tech',"score":10},
        {"text":'Sport',"score":5},
        {"text":'Travels',"score":3},],
    },
    {
      'questionText':  "How are you?",
      "answer":[
        {"text":'Great',"score":10},
        {"text":'Relaxed',"score":5},
        {"text":'Sick',"score":3},],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void questionButton(int score){
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  void Resethand(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });

  }

  @override
   Widget build(BuildContext context){
     return MaterialApp(home: Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.amber,
         title: Text("My First App"),
       ),

       body: _questionIndex < question.length ?
       Quiz(question, questionButton, _questionIndex): Result(_totalScore,Resethand)
       
     ));
   }

}