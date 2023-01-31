import 'package:complete_flutter_bootcamp/Projects/Quezzler/models/quizBrain.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuezzlerPage extends StatefulWidget {
  const QuezzlerPage({super.key});
  @override
  State<QuezzlerPage> createState() => _QuezzlerPageState();
}

class _QuezzlerPageState extends State<QuezzlerPage> {
  void CheckAnswer(bool userAnswer) {
    bool correctAnswer = quizBrain.GetCorrectAnswer();
    if (quizBrain.isFinished()) {
      scoreKeeper.clear();
      quizBrain.reset();
      quizBrain.ShuffleQuestions();
      Alert(
        context: context,
        type: AlertType.warning,
        title: 'Finished!',
        desc: 'You\'ve reached the end of the quiz.',
        buttons: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            width: 120,
            child: const Text(
              'Ok',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ).show();
    } else if (correctAnswer == userAnswer) {
      scoreKeeper.add(
        const Icon(
          Icons.check,
          color: Colors.green,
        ),
      );
      quizBrain.GetNextQuestion();
    } else {
      scoreKeeper.add(
        const Icon(
          Icons.close,
          color: Colors.red,
        ),
      );
      quizBrain.GetNextQuestion();
    }
  }

  List<Widget> scoreKeeper = [];
  QuizBrain quizBrain = QuizBrain();

  @override
  void initState() {
    super.initState();
    quizBrain.ShuffleQuestions();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        quizBrain.GetQuestion().questionText,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      child: Container(
                        width: double.infinity,
                        color: Colors.green,
                        child: const Center(
                          child: Text(
                            'True',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        setState(
                          () {
                            CheckAnswer(true);
                          },
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: InkWell(
                      child: Container(
                        width: double.infinity,
                        color: Colors.red,
                        child: const Center(
                          child: Text(
                            'False',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        setState(
                          () {
                            CheckAnswer(false);
                          },
                        );
                      },
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: scoreKeeper,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
