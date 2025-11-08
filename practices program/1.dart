// User se name aur age input lo aur print karo message: “Hello [name], you are [age] years old.”

import 'dart:io';

void main() {
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync();

  stdout.write('Enter your age: ');
  String? age = stdin.readLineSync();

  print('Hello $name, you are $age years old.');
}
