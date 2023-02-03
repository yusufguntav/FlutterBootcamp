import 'dart:math';

class CalculatorBrain {
  CalculatorBrain(this.weight, this.height);
  int height;
  int weight;
  late double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Try exercise!';
    } else if (_bmi > 18.5) {
      return 'Dont eat more or less';
    } else {
      return 'Eat more!';
    }
  }
}
