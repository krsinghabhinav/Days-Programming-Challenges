void main() {
  String sentece = "I am a good boy";
  List<String> word = sentece.split(" ");
  int count = 0;
  for (int i = 0; i < word.length; i++) {
    if (word[i] != "") {
      count++;
    }
  }
  print("count word = ${count}");
}
 



//  import 'dart:io';

// void main() {
//   // User se sentence input lena
//   print('Enter a sentence:');
//   String sentence = stdin.readLineSync()!;

//   // Sentence ko words me todna (split by space)
//   List<String> words = sentence.split(' ');

//   // Extra spaces hata dena (agar user ne double space diya ho)
//   words.removeWhere((word) => word.isEmpty);

//   // Words count nikalna
//   int wordCount = words.length;

//   print('You entered: $sentence');
//   print('Total number of words: $wordCount');
// }
