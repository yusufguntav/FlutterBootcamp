import 'package:complete_flutter_bootcamp/Projects/BMI_Calculator/constants.dart';
import 'package:complete_flutter_bootcamp/Projects/BMI_Calculator/pages/resultPage.dart';
import 'package:complete_flutter_bootcamp/Projects/BMI_Calculator/utils/calculator.dart';
import 'package:complete_flutter_bootcamp/Projects/BMI_Calculator/widgets/reusableCard.dart';
import 'package:complete_flutter_bootcamp/Projects/BMI_Calculator/widgets/iconAndContent.dart';
import 'package:complete_flutter_bootcamp/Projects/BMI_Calculator/widgets/roundButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

double height = 180;
int age = 17;
int weight = 60;

Gender selectedGender = Gender.male;

class BMI_Calculator extends StatefulWidget {
  const BMI_Calculator({super.key});

  @override
  State<BMI_Calculator> createState() => _BMI_CalculatorState();
}

class _BMI_CalculatorState extends State<BMI_Calculator> {
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
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        onTapFunction: () {
                          setState(
                            () {
                              selectedGender = Gender.male;
                            },
                          );
                        },
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.mars, contentText: 'MALE'),
                        color: (selectedGender == Gender.male)
                            ? kActiveCardColor
                            : kInactiveCardColor,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        onTapFunction: () {
                          setState(
                            () {
                              selectedGender = Gender.female;
                            },
                          );
                        },
                        cardChild: IconContent(
                            icon: FontAwesomeIcons.venus,
                            contentText: 'FEMALE'),
                        color: (selectedGender == Gender.female)
                            ? kActiveCardColor
                            : kInactiveCardColor,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ReusableCard(
                  onTapFunction: () {},
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'HEIGHT',
                        style: kTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.round().toString(),
                            style: kBigTextStyle,
                          ),
                          Text(
                            'cm',
                            style: kTextStyle,
                          )
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 13),
                        ),
                        child: Slider(
                          min: 0,
                          max: 220,
                          activeColor: const Color(0xFFEB1555),
                          inactiveColor: const Color(0xFF8D8E98),
                          value: height,
                          onChanged: (double newHeight) {
                            setState(
                              () {
                                height = newHeight;
                              },
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  color: kActiveCardColor,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        onTapFunction: () {},
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style: kTextStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kBigTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundButton(
                                  onpress: () {
                                    setState(
                                      () {
                                        if (weight >= 1) {
                                          weight--;
                                        }
                                      },
                                    );
                                  },
                                  child: const Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                RoundButton(
                                  onpress: () {
                                    setState(
                                      () {
                                        weight++;
                                      },
                                    );
                                  },
                                  child: const Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        color: kActiveCardColor,
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                        onTapFunction: () {},
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style: kTextStyle,
                            ),
                            Text(
                              age.toString(),
                              style: kBigTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RoundButton(
                                  onpress: () {
                                    setState(
                                      () {
                                        if (age >= 1) {
                                          age--;
                                        }
                                      },
                                    );
                                  },
                                  child: const Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                RoundButton(
                                  onpress: () {
                                    setState(
                                      () {
                                        age++;
                                      },
                                    );
                                  },
                                  child: const Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        color: kActiveCardColor,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  CalculatorBrain _calculatorBrain =
                      CalculatorBrain(weight, height.toInt());

                  // _calculatorBrain.calculateBmi();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                              Bmi: _calculatorBrain.calculateBmi(),
                              interpretation:
                                  _calculatorBrain.getInterpretation(),
                              result: _calculatorBrain.getResult(),
                            )),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(7),
                  color: kBottomContainerColor,
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      'CALCULATE',
                      style:
                          kBigTextStyle.copyWith(fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
