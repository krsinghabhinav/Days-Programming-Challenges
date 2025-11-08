void main() {
  List<int> exampleHours = [5, 10, 15, 19, 22];

  for (int i = 0; i < exampleHours.length; i++) {
    int hour = exampleHours[i];

    if (hour >= 5 && hour < 12) {
      print("Hour $hour → Good Morning");
    } else if (hour >= 12 && hour < 17) {
      print("Hour $hour → Good Afternoon");
    } else if (hour >= 17 && hour < 21) {
      print("Hour $hour → Good Evening");
    } else {
      print("Hour $hour → Good Night");
    }
  }
}
