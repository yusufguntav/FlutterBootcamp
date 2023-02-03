import 'dart:math';

import 'package:complete_flutter_bootcamp/Projects/Quezzler/models/question.dart';
import 'package:flutter/cupertino.dart';

class QuizBrain {
  int _questionIndexNumber = 0;

  List<Question> _questions = [
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true)
  ];

  void GetNextQuestion() {
    if (_questionIndexNumber < _questions.length - 1) {
      _questionIndexNumber++;
    }
  }

  Question GetQuestion() {
    debugPrint(
      _questionIndexNumber.toString(),
    );

    return _questions[_questionIndexNumber];
  }

  bool GetCorrectAnswer() {
    debugPrint(
      _questionIndexNumber.toString(),
    );
    return _questions[_questionIndexNumber].questionAnswer;
  }

  void ShuffleQuestions() {
    // Create shuffled ındex
    List<int> shuffledIndexNumber = [];
    for (var i = 0; i < _questions.length;) {
      int rndNumber = Random().nextInt(_questions.length);
      if (!shuffledIndexNumber.contains(rndNumber)) {
        shuffledIndexNumber.add(rndNumber);
        i++;
      }
    }

    // Shuffle questions with shuffled index list
    List<Question> shuffledQuestions = [];
    for (var i = 0; i < _questions.length; i++) {
      shuffledQuestions.add(_questions[shuffledIndexNumber[i]]);
    }

    _questions = shuffledQuestions;
  }

  bool isFinished() {
    if (_questionIndexNumber == _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionIndexNumber = 0;
  }
}
