import 'dart:io';

void main() {
  stdout.write("Create a username");
  String? correctUserName = stdin.readLineSync();

  stdout.write("Create a password");
  String? correctPassword = stdin.readLineSync();

  if (correctUserName == null ||
      correctUserName.isEmpty ||
      correctPassword == null ||
      correctPassword.isEmpty) {
    print("\nUsername or password can't be empty");
    return;
  }

  print("\nAccount create successfully!\nYou can now log in below\n");
  List<DateTime> failedAttempts = [];
  DateTime? lockoutUntil;

  while (true) {
    if (lockoutUntil != null && DateTime.now().isBefore(lockoutUntil)) {
      Duration remaining = lockoutUntil.difference(DateTime.now());
      print("Account loacked! Try again in ${remaining.inMinutes} minutes. \n");
      sleep(Duration(seconds: 5));
      continue;
    }
    stdout.write("Enter username");
    String? username = stdin.readLineSync();

    stdout.write("Enter password");
    String? password = stdin.readLineSync();

    if (username == correctUserName && password == correctPassword) {
      print("\nLogin successful! Welcone, $username\n");
      failedAttempts.clear();
      break;
    } else {
      print("\n Invaild credentails entered");
      failedAttempts.add(DateTime.now());

      failedAttempts.removeWhere(
        (t) => DateTime.now().difference(t).inMinutes > 1,
      );

      if (failedAttempts.length >= 5) {
        lockoutUntil = DateTime.now().add(Duration(minutes: 3));
        print("Too many failed attempts! Account locked for 3 minutes.\n");
      } else {
        int remaining = 5 - failedAttempts.length;
        print("Remaining attempts:$remaining(within 5 minutes)\n");
      }
    }
  }
}
