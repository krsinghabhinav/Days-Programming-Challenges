// Do number input lo aur unka sum, difference, multiplication aur division print karo.

import 'dart:io';

void main() {
  stdout.write('Enter first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  double sum = num1 + num2;
  double difference = num1 - num2;
  double product = num1 * num2;
  double division = num1 / num2;

  print('\nResults:');
  print('Sum: $sum');
  print('Difference: $difference');
  print('Multiplication: $product');
  print('Division: $division');
}
