// User se marks input lo aur grade decide karo (A, B, C, D, F).

import 'dart:io';

void main() {
  stdout.write('Enter your marks (0 - 100): ');
  int marks = int.parse(stdin.readLineSync()!);

  String grade;

  if (marks >= 90) {
    grade = 'A';
  } else if (marks >= 75) {
    grade = 'B';
  } else if (marks >= 60) {
    grade = 'C';
  } else if (marks >= 40) {
    grade = 'D';
  } else {
    grade = 'F';
  }

  print('Your grade is: $grade');
}
