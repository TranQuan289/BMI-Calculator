import 'dart:math';

class ResultBrain {
  ResultBrain(this.height, this.weight);
  final int height;
  final int weight;
  late double _bmi;
  String BMI_Calculator() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Thừa Cân';
    } else if (_bmi > 18.5) {
      return 'Bình Thường';
    } else {
      return 'Thiếu Cân';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Bạn nên ăn ít hơn';
    } else if (_bmi >= 18.5) {
      return 'Bạn nên giữ chế độ ăn uống hiện tại nhé';
    } else {
      return 'Bạn nên ăn nhiều hơn nhé  ';
    }
  }
}
