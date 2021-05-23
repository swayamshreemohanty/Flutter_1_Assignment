// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import './App.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _questions = const [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red'],
      },
      {
        'questionText': 'What\'s your favorite Animal?',
        'answers': ['Dog', 'Cat'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("1st Assignment App"),
        ),
        body: _questionIndex < _questions.length
            ? App(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Center(
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      child: Text('Reset Quiz'),
                      onPressed: _resetQuiz,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
