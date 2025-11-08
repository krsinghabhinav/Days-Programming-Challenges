import 'dart:io';

void main() {
  stdout.write("Enter subscription start date (yyyy-mm-dd): ");
  String? inputDate = stdin.readLineSync();
  DateTime? startDate;

  try {
    startDate = DateTime.parse(inputDate!);
  } catch (e) {
    print("Invalid date format. Please use yyyy-mm-dd format.");
    return;
  }
  stdout.write("Enter billing cycle in months: ");
  int? months = int.tryParse(stdin.readLineSync() ?? "");

  if (months == null || months < 0) {
    print("Please enter a valid positive number for months.");
    return;
  }

  DateTime nextBillingDate = _getNextBillingDate(startDate, months);

  print(
    "Next billing date: ${nextBillingDate.toIso8601String().split('T').first}",
  );
}

DateTime _getNextBillingDate(DateTime start, int monthsToAdd) {
  int newYear = start.year;
  int newMOnth = start.month + monthsToAdd;
  while (newMOnth > 12) {
    newMOnth -= 12;
    newYear++;
  }
  int newDay = start.day;
  int daysInTargetMonth = DateTime(newYear, newMOnth + 1, 0).day;

  if (newDay > daysInTargetMonth) {
    newDay = daysInTargetMonth;
  }

  return DateTime(newYear, newMOnth, newDay);
}
