import 'dart:io';

void main() {
  stdout.write("Enter any number between 1 and 100: ");
  int? userValue = int.tryParse(stdin.readLineSync() ?? "");
  if (userValue == null || userValue < 1 || userValue > 100) {
    print("Please enter a valid number between 1 and 100.");
    return;
  }

  if (userValue < 30) {
    print("User assigned to Variant B (30%)");
  } else if (userValue >= 30 && userValue <= 100) {
    print("User assigned to Variant A (70%)");
  }
}
