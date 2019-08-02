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
    String result =
        _bmi >= 25 ? 'Overweight' : _bmi > 18.5 ? 'Normal' : 'Underweight';
    return result;
  }

  String getInterpretation() {
    String result = _bmi >= 25
        ? 'Fat ass. Go on a diet!'
        : _bmi > 18.5
            ? 'You good bro'
            : 'Don\'t go out during a storm, you\'ll get blown away';
    return result;
  }
}
