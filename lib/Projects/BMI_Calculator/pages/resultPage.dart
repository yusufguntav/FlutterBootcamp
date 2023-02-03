import 'package:complete_flutter_bootcamp/Projects/BMI_Calculator/constants.dart';
import 'package:complete_flutter_bootcamp/Projects/BMI_Calculator/widgets/reusableCard.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {super.key,
      required this.result,
      required this.Bmi,
      required this.interpretation});
  String result;
  String Bmi;
  String interpretation;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kCustomThemeData,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Text(
              'Your Result',
              style: kBigTextStyle,
            ),
            Expanded(
              child: ReusableCard(
                color: const Color.fromARGB(35, 76, 79, 94),
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      result.toUpperCase(),
                      style: kTextStyle.copyWith(color: Colors.green),
                    ),
                    Text(
                      Bmi,
                      style: kBigTextStyle,
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kTextStyle,
                    )
                  ],
                ),
                onTapFunction: () {},
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: const EdgeInsets.all(7),
                color: kBottomContainerColor,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: kBigTextStyle.copyWith(fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
