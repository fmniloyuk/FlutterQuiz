import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './result.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  //Setting up the constructor
  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion
});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((answer) {
          return Answer(answerQuestion, answer);
        }).toList()
      ],
    );
  }
}
