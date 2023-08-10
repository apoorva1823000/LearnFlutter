import 'constants.dart';

class Calculator {
  final int height = finalHeight;
  final int weight = finalWeight;
  double _bmi = 0;
  String calculateBMI() {
    _bmi = weight / (height * height) * 10000;
    return _bmi.toStringAsFixed(1);
  }

  String getResult(double bmi) {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation(double bmi) {
    if (bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
