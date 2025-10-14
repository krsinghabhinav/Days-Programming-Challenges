import 'dart:io';

void main() {
  print("Enter your age:");
  String? input = stdin.readLineSync();
  int? age = int.tryParse(input ?? '');

  if (age == null) {
    print("Please enter a valid number.");
  } else if (age < 0) {
    print(" Age cannot be negative.");
  } else if (age <= 18) {
    print("You are a minor.");
  } else if (age <= 65) {
    print(" You are an adult.");
  } else {
    print(" You are a senior citizen.");
  }
}
