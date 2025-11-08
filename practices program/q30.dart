import 'dart:io';

void main() {
  // User se string input lena
  print('Enter a string:');
  String input = stdin.readLineSync()!;

  // Result print karna using if else if
  if (input.isNotEmpty) {
    print('Uppercase form: ${input.toUpperCase()}');
    print('Lowercase form: ${input.toLowerCase()}');
  } else if (input.isEmpty) {
    print('You entered an empty string.');
  }
}
