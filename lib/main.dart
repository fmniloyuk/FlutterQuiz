// ignore_for_file: prefer_const_constructors
// import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
  }

  var questions = [
    'What is your favourite color?',
    'What is your favourite novel?'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        // body
        body: Column(children: [
          Text(questions[questionIndex]),
          RaisedButton(
              child: Text('Answer 1'),
              onPressed: () => print('Answer chosen 1')),
          RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer chosen 2')),
          RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => {print('Answer chosen 3')})
        ]),
      ),
    );
  }
}
