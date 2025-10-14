import 'dart:io';

void main() {
  stdout.write("Enter your password: ");
  String? password = stdin.readLineSync();
  print(checkPasswordStrength(password ?? ""));
}

String checkPasswordStrength(String password) {
  bool hasUpper = password.contains(RegExp(r'[A-Z]'));
  bool hasLower = password.contains(RegExp(r'[a-z]'));
  bool hasDigit = password.contains(RegExp(r'[0-9]'));
  bool hasSpecial = password.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'));

  int score = 0;

  if (password.length >= 8) score++;
  if (hasUpper) score++;
  if (hasLower) score++;
  if (hasDigit) score++;
  if (hasSpecial) score++;

  if (score <= 2) {
    return "🔴 Weak Password – Try adding more length, numbers, or symbols.";
  } else if (score == 3 || score == 4) {
    return "🟠 Medium Password – Pretty good, but you can make it stronger.";
  } else {
    return "🟢 Strong Password – Great job! Your password is secure.";
  }
}
