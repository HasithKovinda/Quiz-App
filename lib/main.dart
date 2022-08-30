// ignore_for_file: deprecated_member_use
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main(List<String> args) {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// create a widget class
class _MyAppState extends State<MyApp> {
  var _indexNumber = 0;
  var _totalMarks = 0;
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite Game?',
      'answers': [
        {'text': 'Cricket', 'score': 1},
        {'text': 'Football', 'score': 1},
        {'text': 'Rolleyball', 'score': 1},
        {'text': 'Rugby', 'score': 1},
      ],
    },
  ];
  void _answerQuestion(int score) {
    _totalMarks += score;
    setState(() {
      _indexNumber = _indexNumber + 1;
    });
    if (_indexNumber < questions.length) {
      print("Something");
    }
  }

  void _reset() {
    setState(() {
      _indexNumber = 0;
      _totalMarks = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('This My First Flutter App'),
        ),
        body: _indexNumber < questions.length
            ? Quiz(
                questions: questions,
                indexNumber: _indexNumber,
                answerQuestion: _answerQuestion)
            : Result(_totalMarks, _reset),
      ),
    );
  }
}
