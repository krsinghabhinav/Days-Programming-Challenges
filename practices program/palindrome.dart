// Ek string input lo aur check karo palindrome hai ya nahi (like “madam”).

import 'dart:io';

// void main() {
//   stdout.write('Enter a string: ');
//   String? input = stdin.readLineSync();

//   if (input != null) {
//     String reversed = input.split('').reversed.join('');
//     if (input == reversed) {
//       print('"$input" is a palindrome.');
//     } else {
//       print('"$input" is not a palindrome.');
//     }
//   } else {
//     print('No input provided.');
//   }
// }



//m2

void main() {
  stdout.write('Enter a string: ');
  String? input = stdin.readLineSync();

  if (input != null) {
    String reversed = '';
    for (int i = input.length - 1; i >= 0; i--) {
      reversed += input[i];
    }
    if (input == reversed) {
      print('"$input" is a palindrome.');
    } else {
      print('"$input" is not a palindrome.');
    }
  } else {
    print('No input provided.');
  }
}