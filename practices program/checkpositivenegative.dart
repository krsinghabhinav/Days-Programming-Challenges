//Ek number input lo — check karo ki wo positive, negative, ya zero hai.
import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  double number = double.parse(stdin.readLineSync()!);

  if (number > 0) {
    print('The number is positive.');
  } else if (number < 0) {
    print('The number is negative.');
  } else {
    print('The number is zero.');
  }
}
