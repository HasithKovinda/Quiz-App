import 'package:flutter/src/foundation/key.dart';

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  late final List<Map<String, Object>> questions;
  late final int indexNumber;
  late final Function answerQuestion;

  Quiz(
      {required this.questions,
      required this.indexNumber,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions[indexNumber]['questionText'] as String),
      ...(questions[indexNumber]['answers'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(
            () => answerQuestion(answer['score']), answer['text'] as String);
      }).toList()
    ]);
  }
}
