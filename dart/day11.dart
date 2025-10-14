import 'dart:io';

void main() {
  print(
    "Enter your theme preference (0 = light, 1 = dark, -1 = follow system):",
  );
  dynamic userInput = stdin.readLineSync();
  int userTheme = int.tryParse(userInput ?? '') ?? -1; 

  int systemTheme = 0;

  if (userTheme == -1) {
    print(
      "System theme detected! Please enter system theme (0 = light, 1 = dark):",
    );
    dynamic systemInput = stdin.readLineSync();
    systemTheme = int.tryParse(systemInput ?? '') ?? 0;
  }

  List<int> themes = [0, 1];

  for (int i = 0; i < themes.length; i++) {
    if (userTheme == 0) {
      print("Theme is Light (User Override)");
      break;
    } else if (userTheme == 1) {
      print("Theme is Dark (User Override)");
      break;
    } else if (userTheme == -1) {
      if (systemTheme == 0) {
        print("Theme is Light (System Default)");
      } else if (systemTheme == 1) {
        print("Theme is Dark (System Default)");
      } else {
        print("Invalid system theme! Defaulting to Light.");
        print("Theme is Light (System Default)");
      }
      break;
    } else {
      print("Invalid input! Using System Default.");
      if (systemTheme == 0) {
        print("Theme is Light (System Default)");
      } else {
        print("Theme is Dark (System Default)");
      }
      break;
    }
  }
}
