import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print("Please enter a valid number.");
    return;
  }

  int? number;
  try {
    number = int.parse(input);
  } catch (e) {
    print("Invalid input! Please enter a numeric value.");
    return;
  }

  if (number > 0) {
    print("The number is Positive: $number");
  } else if (number < 0) {
    print("The number is Negative: $number");
  } else {
    print("The number is Zero.");
  }
}
