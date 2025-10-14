import 'dart:io';

void main() {
  stdout.write("Enter a number ");
  int num = int.parse(stdin.readLineSync()!);

  int reverse = 0;

  while (num > 0) {
    int rem = num % 10;
    reverse = reverse * 10 + rem;
    num = num ~/ 10;
  }

  print("Reverse is $reverse");
}
