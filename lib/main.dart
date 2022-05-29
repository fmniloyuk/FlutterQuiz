// ignore_for_file: prefer_const_constructors
// import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    //Change the state
    setState(() {
      if (questionIndex < questions.length-1) {
        questionIndex = questionIndex + 1;
      }
    }); // setState
    print(questionIndex);
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
          Text(questions[questionIndex]),
          RaisedButton(child: Text('Red'), onPressed: answerQuestion),
          RaisedButton(child: Text('Green'), onPressed: answerQuestion),
          RaisedButton(child: Text('Blue'), onPressed: answerQuestion)
        ]),
      ),
    );
  }
}
