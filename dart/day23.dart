void main() {
  List<Map<String, dynamic>> userOtpRecords = [
    {
      "userId": 1,
      "lastSentTime": DateTime.now().subtract(Duration(seconds: 61)),
      "resendCount": 2,
    },
    {
      "userId": 2,
      "lastSentTime": DateTime.now().subtract(Duration(seconds: 40)),
      "resendCount": 1,
    },
    {
      "userId": 3,
      "lastSentTime": DateTime.now().subtract(Duration(minutes: 30)),
      "resendCount": 3,
    },
  ];

  for (int i = 0; i < userOtpRecords.length; i++) {
    int userId = userOtpRecords[i]["userId"];
    DateTime lastSentTime = userOtpRecords[i]["lastSentTime"];
    int resendCount = userOtpRecords[i]["resendCount"];

    DateTime currentTime = DateTime.now();

    if (resendCount >= 3) {
      print("User $userId → OTP resend blocked (Max 3 times per hour reached)");
    } else if (resendCount < 3) {
      Duration timePassed = currentTime.difference(lastSentTime);
      int secondPassed = timePassed.inSeconds;

      if (secondPassed < 60) {
        int waitTime = 60 - secondPassed;
        print("User $userId → Wait $waitTime seconds before resending OTP");
      } else if (secondPassed >= 60) {
        print("User $userId → OTP resend allowed");
        userOtpRecords[i]["lastSentTime"] = currentTime;
        userOtpRecords[i]["resendCount"] = resendCount + 1;
      }
    }
  }

  print("\nUpdated user records:");
  for (int i = 0; i < userOtpRecords.length; i++) {
    print(
      "User ${userOtpRecords[i]["userId"]}: resendCount = ${userOtpRecords[i]["resendCount"]}, lastSentTime = ${userOtpRecords[i]["lastSentTime"]}",
    );
  }
}
