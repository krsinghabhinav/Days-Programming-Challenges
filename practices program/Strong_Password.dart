import 'dart:io';

void main() {
  stdout.write('Enter your password: ');
  String password = stdin.readLineSync()!;

  RegExp specialChar = RegExp(r'[!@#$%^&*(),.?":{}|<>]');

  if (password.length > 8 && specialChar.hasMatch(password)) {
    print('Strong Password 💪');
  } else {
    print('Weak Password ❌');
  }
}

// Ek password input lo aur check karo length > 8 ho aur special character ho to “Strong Password” print karo.