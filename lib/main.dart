// ignore_for_file: prefer_const_constructors
// import 'dart:async';
import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    //Re-run the build method to change state
    setState(() {
      if (_questionIndex < questions.length - 1) {
        _questionIndex = _questionIndex + 1;
      }
    }); // setState
    print(_questionIndex);
  }

  var questions = [
    'What is your favourite color?',
    'What is the color of sky?',
    'What is the color of grass?'
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
          Question(questions[_questionIndex]),
          RaisedButton(child: Text('Red'), onPressed: _answerQuestion),
          RaisedButton(child: Text('Green'), onPressed: _answerQuestion),
          RaisedButton(child: Text('Blue'), onPressed: _answerQuestion)
        ]),
      ),
    );
  }
}
