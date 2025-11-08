import 'dart:io';

void main() {
  // User se number input lena
  stdout.write('Enter a number: ');
  int number = int.parse(stdin.readLineSync()!);

  // Check karna ki 3 aur 5 dono se divisible hai ya nahi
  if (number % 3 == 0 && number % 5 == 0) {
    print('$number is divisible by both 3 and 5.');
  } else {
    print('$number is not divisible by both 3 and 5.');
  }
}

// Ek number input lo aur check karo divisible hai 3 aur 5 dono se ya nahi.