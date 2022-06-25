import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText':
          'ফৌজদারী কার্যবিধিতে ম্যাজিস্ট্রেটগণকে প্রধানত কত প্রকারে ভাগ করা হয়েছে?',
      'answers': [
        {'text': '(ক) ৪ প্রকার', 'score': 10},
        {'text': '(খ) ২ প্রকার', 'score': 5},
        {'text': '(গ) ৬ প্রকার', 'score': 3},
        {'text': '(ঘ) ৩ প্রকার', 'score': 1},
      ],
    },
    {
      'questionText':
          'দায়রা জজ এবং অতিরিক্ত দায়রা জজ কি ধরণের দণ্ড দিতে পারে?',
      'answers': [
        {'text': '(ক) শুধু মৃত্যুদণ্ড', 'score': 3},
        {'text': '(খ) ১০ বছরের জেল', 'score': 3},
        {'text': '(গ) মৃত্যুদণ্ড এবং ১০ বছরের জেল', 'score': 5},
        {'text': ' (ঘ) আইনের অনুমোদিত যে কোন দন্ড', 'score': 9},
      ],
    },
    {
      'questionText': 'Complaint দায়ের করতে হয়।',
      'answers': [
        {'text': '(ক) পুলিশের নিকট', 'score': 5},
        {'text': '(খ) দায়রা জজের নিকট', 'score': 1},
        {'text': '(গ) নির্বাহী ম্যাজিস্ট্রেটের নিকট', 'score': 1},
        {'text': '(ঘ) বিচারিক ম্যাজিস্ট্রেটের নিকট', 'score': 1},
      ],
    },
    {
      'questionText':
          '৪। ম্যাজিস্ট্রেট আটককৃত ব্যক্তিকে সর্বোচ্চ কত দিনের জন্য পুলিশ হেফাজতে রাখার আদেশ দিতে পারবে?',
      'answers': [
        {'text': '(ক) ১৫ দিন', 'score': 3},
        {'text': '(খ) ৩০ দিন', 'score': 1},
        {'text': '(গ) ১০ দিন', 'score': 1},
        {'text': '(ঘ) ১২০ দিন', 'score': 1},
      ],
    },
    {
      'questionText':
          '৫। যার বরাবর সমন জারি করা হয়, তার নিকট ব্যক্তিগত ভাবে সমনের কয়টি কপি দিয়ে “আসতে হবে?',
      'answers': [
        {'text': '(ক) ৪ টি', 'score': 2},
        {'text': '(খ) ৩ টি', 'score': 1},
        {'text': '(গ) ২ টি', 'score': 1},
        {'text': '(ঘ) ১ টি', 'score': 1},
      ],
    },
    {
      'questionText':
          '৬। মেট্রোপলিটন এলাকায় সামরিক শক্তি প্রয়োগ দ্বারা বেআইনী সমাবেশ ছত্রভঙ্গ করার আদেশ দিতে পারে?',
      'answers': [
        {'text': '(ক) নির্বাহী ম্যাজিস্ট্রেট', 'score': 1},
        {'text': '(খ) থানার ভারপ্রাপ্ত পুলিশ অফিসার', 'score': 1},
        {'text': '(গ) বিচারিক ম্যাজিস্ট্রেট', 'score': 1},
        {'text': '(ঘ) পুলিশ কমিশনার', 'score': 1},
      ],
    },
    {
      'questionText': '৭। ১৪৪ ধারা আদেশ কত দিন পর্যন্ত বলবৎ থাকতে পারে',
      'answers': [
        {'text': '(ক) ৩০ দিন', 'score': 1},
        {'text': '(খ) ১১০ দিন', 'score': 1},
        {'text': '(গ) ৯০ দিন', 'score': 1},
        {'text': '(ঘ) ৬০ দিন', 'score': 1},
      ],
    },
    {
      'questionText':
          '৮। পুলিশকে আমল অযোগ্য অপরাধের তদন্তের নির্দেশ দিতে পারে ?',
      'answers': [
        {'text': '(ক) হাইকোর্ট', 'score': 1},
        {'text': '(খ) মেট্রোপলিটন ম্যাজিস্ট্রেট', 'score': 1},
        {'text': '(গ) ক্ষমতা প্রাপ্ত প্রথম শ্রেণীর ম্যাজিস্ট্রেট', 'score': 1},
        {'text': '(ঘ) খ+গ', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
