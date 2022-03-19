import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({required this.height, required this.weight});

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'Underweigt';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal weight. Try to excercise more';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight , good job';
    } else {
      return 'You have a lower than normal body weight , eat more.';
    }
  }
}
