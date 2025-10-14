import 'dart:io';

void main() {
  stdout.write("Enter your Weight in kg: ");
  double weight = double.parse(stdin.readLineSync()!);

  stdout.write("Enter your Height in meter: ");
  double height = double.parse(stdin.readLineSync()!);

  if (weight <= 0) {
    print('Invalid weight. Weight must be greater than 0.');
  } else if (height <= 0) {
    print('Invalid height. Height must be greater than 0.');
  } else {
    double bmi = weight / (height * height);
    print("BMI: ${bmi.toStringAsFixed(2)}");

    if (bmi < 18.5) {
      print('Category: Underweight');
    } else if (bmi >= 18.5 && bmi < 24.9) {
      print('Category: Normal weight');
    } else if (bmi >= 25 && bmi < 29.9) {
      print('Category: Overweight');
    } else if (bmi > 30) {
      print('Category: Obese');
    } else {
      print('Error: BMI value out of expected range.');
    }
  }
}
