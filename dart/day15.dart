import 'dart:io';
void main() {
  List<DateTime> exceptionDates = [
    DateTime(2025, 10, 15), // Example holiday
    DateTime(2025, 12, 25), // Christmas
  ];

  print("👉 Enter a date (YYYY-MM-DD): ");
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("Please enter a vaild date!!!!");
    return;
  }

  List<String> parts = input.split("-");
  if (parts.length != 3) {
    print("Invalid formate! Use YYYY-MM-DD");
    return;
  }

  int year = int.parse(parts[0]);
  int month = int.parse(parts[1]);
  int day = int.parse(parts[2]);

  DateTime enterDate = DateTime(year, month, day);

  bool isWeakend =
      enterDate.weekday == DateTime.saturday ||
      enterDate.weekday == DateTime.sunday;

  bool isException = false;
  for (int i = 0; i < exceptionDates.length; i++) {
    DateTime exception = exceptionDates[i];
    if (exception.year == enterDate.year &&
        exception.month == enterDate.month &&
        exception.day == enterDate.day) {
      isException = true;
      break;
    }
  }

  print("\n Checking date: $enterDate");
  if (!isWeakend && !isException) {
    print("Task will RUN on this date (Weekday)");
  } else if (isWeakend) {
    print("It's a weekend (No task)");
  } else if (isException) {
    print("It's an exception/holiday date (No task)");
  }
  print("\n Exception Dates: ");
  for (int j = 0; j < exceptionDates.length; j++) {
    print("Index $j → ${exceptionDates[j].toLocal()}");
  }
}
