import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Şişko';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Zaif';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Oha! Dana gibisiniz. Az yiyin az. Sağlığınız için hareket etmelisiniz.';
    } else if (_bmi > 18.5) {
      return 'Daş gibisiniz.';
    } else {
      return 'Aç köpek gibi bu ne arkadaş. Biraz daha yiyebilirsiniz.';
    }
  }
}
