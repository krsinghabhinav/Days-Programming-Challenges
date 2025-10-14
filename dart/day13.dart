import 'dart:io';

void main() {
  stdout.write("Enter your marks (0 - 100): ");
  int marks = int.parse(stdin.readLineSync()!);

  String grade = "";

  if (marks >= 97 && marks <= 100) {
    grade = "A+";
  } else if (marks >= 93 && marks <= 96) {
    grade = "A";
  } else if (marks >= 90 && marks <= 92) {
    grade = "A-";
  } else if (marks >= 87 && marks <= 89) {
    grade = "B+";
  } else if (marks >= 83 && marks <= 86) {
    grade = "B";
  } else if (marks >= 80 && marks <= 82) {
    grade = "B-";
  } else if (marks >= 77 && marks <= 79) {
    grade = "C+";
  } else if (marks >= 73 && marks <= 76) {
    grade = "C";
  } else if (marks >= 70 && marks <= 72) {
    grade = "C-";
  } else if (marks >= 67 && marks <= 69) {
    grade = "D+";
  } else if (marks >= 63 && marks <= 66) {
    grade = "D";
  } else if (marks >= 60 && marks <= 62) {
    grade = "D-";
  } else if (marks >= 0 && marks < 60) {
    grade = "F";
  } else {
    print("Please enter marks between 0 and 100 only!");
    return;
  }

  print("Your Grade is: $grade");
}
