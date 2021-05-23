import 'package:flutter/material.dart';
import './Text.dart';
import './Text_control.dart';

class App extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  App(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextControl(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Texts(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
