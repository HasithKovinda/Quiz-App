import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resetHandler;

  const Result(this.score, this.resetHandler);

  String get resultPhrase {
    String text;
    if (score <= 8) {
      text = 'You are awesome and inncent!';
    } else if (score <= 12) {
      text = 'Pretty likeable!';
    } else if (score <= 16) {
      text = 'You are strange!';
    } else {
      text = 'You are bad!';
    }

    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: resetHandler,
          style: TextButton.styleFrom(primary: Colors.blue),
          child: const Text('Rest Quiz'),
        )
      ],
    ));
  }
}
