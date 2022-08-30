import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  final String questions;
  Question(this.questions);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Text(
        questions,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
