void main() {
  bool globalFeatureEnable = false;
  List<Map<String, dynamic>> userFeatureSettings = [
    {"userId": 1, "featureEnabled": true},
    {"userId": 2, "featureEnabled": false},
    {"userId": 3, "featureEnabled": true},
    {"userId": 4, "featureEnabled": false},
  ];

  List<int> user = [1, 2, 3, 4];
  for (int i = 0; i < user.length; i++) {
    int userId = user[i];
    if (globalFeatureEnable == true) {
      print("User $userId → Feature ENABLED ");
    } else if (globalFeatureEnable == false) {
      bool? isUserEnable;
      for (int j = 0; j < userFeatureSettings.length; j++) {
        if (userFeatureSettings[j]["userId"] == userId) {
          isUserEnable = userFeatureSettings[j]["featureEnabled"];
        }
      }
      if (isUserEnable == true) {
        print("User $userId → Feature ENABLED ");
      } else {
        print("User $userId → Feature DISABLED ");
      }
    }
  }
}
