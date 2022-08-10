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
      return 'Hơi Mũm Mĩm :>';
    } else if (_bmi > 18.5) {
      return 'Bình Thường :)';
    } else {
      return 'Hơi Ốm :(';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Mũm mĩm tí cũng không sao nhưng mà ốm tí chắc sẽ đẹp hơn á :3';
    } else if (_bmi >= 18.5) {
      return 'Đẹp rồi đó, out ra được rồi ';
    } else {
      return 'Ốm tí cũng xinh mà, xu thế đó';
    }
  }
}
