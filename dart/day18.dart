import 'dart:io';

void main() {
  stdout.write("Enter your age: ");
  int? age = int.tryParse(stdin.readLineSync() ?? "");

  if (age == null) {
    print("Invalid input! Please enter a valid number.");
    return;
  }

  if (age < 13) {
    print("Access Denied: You are too young for this content.");
  } else if (age >= 13 && age <= 17) {
    stdout.write("Do you have parental consent? (yes/no/y/n): ");
    String consent = (stdin.readLineSync() ?? "").toLowerCase();
    if (consent == "yes" || consent == "y") {
      print("Access Granted with Parental Consent.");
    } else if (consent == "no" || consent == "n") {
      print("Access Denied: Parental consent required.");
    }
  } else if (age >= 18) {
    print("Access Granted: You are an adult.");
  }
}
