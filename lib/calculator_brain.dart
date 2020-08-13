import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25.0) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25.0) {
      return 'You have a higher than Normal body weight. Try to exercise more! ';
    } else if (_bmi > 18.5) {
      return 'You have a Normal body weight. Good Job! ';
    } else {
      return 'You have a lower than Normal body weight. You can eat a bit more! ';
    }
  }
}
