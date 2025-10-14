import 'dart:io';

void main() {
  List<String> allowedDomains = ["gmail.com", "yahoo.com", "outlook.com"];
  print("Enter your email");
  String? email = stdin.readLineSync();
  RegExp emailRegex = RegExp(r'^[\w\.-]+@([\w-]+\.)+[\w-]{2,4}$');

  if (email == null || email.isEmpty) {
    print("Email can't be empty.");
  } else if (!emailRegex.hasMatch(email)) {
    print("Invalid email formate.");
  } else {
    String domain = email.split('@').last;
    if (allowedDomains.contains(domain)) {
      print("Valid email");
    } else {
      print("Domain not allowed (Allowed: ${allowedDomains.join(', ')})");
    }
  }
}
