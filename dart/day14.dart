
void main() {
  List<DateTime> weekDates = [
    DateTime(2025, 10, 12), // Monday
    DateTime(2025, 10, 13), // Tuesday
    DateTime(2025, 10, 14), // Wednesday
    DateTime(2025, 10, 15), // Thursday
    DateTime(2025, 10, 16), // Friday
    DateTime(2025, 10, 17), // Saturday
    DateTime(2025, 10, 18), // Sunday
  ];

  List<DateTime> exceptionDates = [DateTime(2025, 10, 15)]; // Holiday

  for (int i = 0; i < weekDates.length; i++) {
    DateTime currentDate = weekDates[i];

    bool isWeekend =
        currentDate.weekday == DateTime.saturday ||
        currentDate.weekday == DateTime.sunday;

    bool isException = false;
    for (int j = 0; j < exceptionDates.length; j++) {
      final excetion = exceptionDates[j];
      if (excetion.year == currentDate.year &&
          excetion.month == currentDate.month &&
          excetion.day == currentDate.day) {
        isException = true;
        break;
      }
    }
    if (!isWeekend && !isException) {
      print("Task running on ${currentDate.day} Date");
    } else {
      print("No task on  ${currentDate.day} Date");
    }
    print("index: $i\n");
  }
}
