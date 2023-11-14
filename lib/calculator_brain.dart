import 'dart:math';

class CalculatorBrain {
  int height;
  int weight;
  double _bmi = 0.0;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI(){
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >= 25){
      return 'Overweight';
    } else if(_bmi > 18.5){
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >= 25){
      return 'Warning! Your BMI indicates that you\'re overweight. Consider making positive changes to your diet and lifestyle for a healthier life.';
    } else if(_bmi > 18.5){
      return 'Great job! Your BMI falls within the normal range. Keep up the good work with a healthy lifestyle to maintain your well-being.';
    } else {
      return 'Oops! you\'re underweight. Consider incorporating a balanced diet with nutritious foods to achieve a healthier weight.';
    }
  }
}