import 'dart:math';

class Calculator {
  Calculator({required this.height, required this.weight});
  late final int height;
  late final int weight;
  late double _bmi;
  String calculatorBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
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
      return 'You have higher than normal body weight.Try to exercise most.';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight.Good job';
    } else {
      return 'You have lower than normal body weight.Keep eat much more food.';
    }
  }
}
