import 'dart:io';
import 'dart:math';

void main() {
  List<String> usernames = ["user1", "user2", "user3"];

  List<String> passwords = ["pass1", "pass2", "pass3"];
  List<bool> is2FAEnabled = [true, false, true];

  stdout.write("Enter username: ");
  String? inputUsername = stdin.readLineSync();

  stdout.write("Enter password: ");
  String? inputPassword = stdin.readLineSync();

  bool userFound = false;

  for (int i = 0; i < usernames.length; i++) {
    if (inputUsername == usernames[i] && inputPassword == passwords[i]) {
      userFound = true;
      if (is2FAEnabled[i] == true) {
        print("2FA is enabled for your account.");

        int otp = Random().nextInt(9000) + 1000;
        print("OTP sent: $otp");

        stdout.write("Enter OTP: ");
        String? inputOTP = stdin.readLineSync();

        if (inputOTP != null && inputOTP == otp.toString()) {
          print("Login successful with 2FA!");
        } else {
          print("Invalid OTP. Login failed.");
        }
      } else if (is2FAEnabled[i] == false) {
        print("Login successful (2FA not enabled)!");
      }
      break;
    }
  }
  if (!userFound) {
    print("Invalid username or password.");
  }
}
