import 'dart:io';

void main() {
  List<Map<String, String>> resources = [
    {'name': 'File1', 'owner': 'user1'},
    {'name': 'File2', 'owner': 'user2'},
    {'name': 'File3', 'owner': 'user3'},
  ];

  print("Enter your role (admin/editor/viewer): ");
  String? role = stdin.readLineSync();

  print("Enter your username: ");
  String? user = stdin.readLineSync();

  for (int i = 0; i < resources.length; i++) {
    var resource = resources[i];
    print("\nChecking access for: ${resource['name']}");

    if (role == "admin") {
      print("✅ Access granted (because user is admin).");
    } else if (role == "editor" && resource['owner'] == user) {
      print("✅ Access granted (editor is owner of this resource).");
    } else {
      print("❌ Access denied.");
    }
  }
}
