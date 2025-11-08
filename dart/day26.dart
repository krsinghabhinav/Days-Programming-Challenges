void main() {
  List<String> existingUsers = ["rohit_123", "neha2024", "admin", "test_user"];
  List<String> newUsernames = [
    "ro",
    "very_long_username_123",
    "rahul@123",
    "neha2024",
    "new_user",
  ];

  for (int i = 0; i < newUsernames.length; i++) {
    String username = newUsernames[i];
    print("\n Checking username: '$username'");
    if (username.length < 3) {
      print("Invalid: Username too short (minimum 3 characters required)");
    } else if (username.length > 15) {
      print("Invalid: Username too long (maximum 15 characters allowed)");
    } else {
      bool hasInvalidChar = false;
      for (int j = 0; j < username.length; j++) {
        String ch = username[j];
        if (!((ch.codeUnitAt(0) >= 65 && ch.codeUnitAt(0) <= 90) ||
            (ch.codeUnitAt(0) >= 97 && ch.codeUnitAt(0) <= 122) ||
            (ch.codeUnitAt(0) >= 48 && ch.codeUnitAt(0) <= 57) ||
            (ch == "_"))) {
          hasInvalidChar = true;
        }
      }
      if (hasInvalidChar == true) {
        print(
          "Invalid: Username can only contain letters, numbers, and underscores (_)",
        );
      } else {
        bool alreadyExist = false;
        for (int k = 0; k < existingUsers.length; k++) {
          if (existingUsers[k] == username) {
            alreadyExist = true;
          }
        }
        if (alreadyExist == true) {
          print("Invalid: Username already taken, please choose another one.");
        } else if (alreadyExist == false) {
          print("Valid Username! You can register successfully.");
        }
      }
    }
  }
}
