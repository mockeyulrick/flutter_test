import 'package:flutter/material.dart';
class Reponse extends StatelessWidget {
  final  selectHandler;
  final String answerText;

  Reponse(this.selectHandler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.lightBlue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed:selectHandler,
      ),
    );
  }
}
