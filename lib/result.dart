
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback ResultHandler;

  Result(this.resultScore, this.ResultHandler);

  String get resultPhrase{
    var resultText;
    if(resultScore<=8){
      resultText = "You did it";
    }
    else if(resultScore<=12){
      resultText = "very Good";
    }
    else if(resultScore<=16){
      resultText = "Bravo!";
    }
    else{
      resultText = "You are the baddest!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column (
          children: <Widget>[
        Text(resultPhrase, style: TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,),
            FlatButton(onPressed:ResultHandler , child: Text("Reset"))
          ]
    )
    );
  }
}
