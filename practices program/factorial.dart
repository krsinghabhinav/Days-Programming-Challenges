import 'dart:io';

void main() {
  // User se number input lena
  stdout.write('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);

  int factorial = 1;

  // Factorial find karna using for loop
  for (int i = 1; i <= number; i++) {
    factorial *= i; // factorial = factorial * i
  }

  // Result print karna
  print('Factorial of $number is $factorial');
}


//Ek number input lo aur uska factorial find karo.