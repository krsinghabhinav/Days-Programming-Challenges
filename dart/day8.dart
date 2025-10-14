import 'dart:io';

void main() {
  stdout.write("Enter phone number (with country code): ");
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print("Please enter a vaild phone number");
    return;
  }

  String phone = input.replaceAll(RegExp(r'[\s-]'), '');

  String country = "";
  String normalized = "";
  String finalOutput = "";

  //IN India
  if (phone.startsWith('+91') || phone.startsWith("91")) {
    normalized = phone.replaceAll(RegExp(r'^\+?91'), '');
    country = "🇮🇳 India";
    if (RegExp(r'^[6-9]\d{9}$').hasMatch(normalized)) {
      finalOutput = "valid India number: +91$normalized";
    } else {
      finalOutput =
          "Invailid India number(must be 10 digits starting form 6-9)";
    }

    //us USA
  } else if (phone.startsWith('+1') || phone.startsWith("1")) {
    normalized = phone.replaceAll(RegExp(r'^\+?1'), '');
    country = '🇺🇸 USA';
    if (RegExp(r'^[2-9]\d{9}$').hasMatch(normalized)) {
      finalOutput = "valid USA number: +1$normalized";
    } else {
      finalOutput = "Invaild USA number (must be 10 digits starting fomr 2-9)";
    }
    // 🇬🇧 UK
  } else if (phone.startsWith("+44") || phone.startsWith("44")) {
    normalized = phone.replaceAll(RegExp(r'^\+?44'), "");
    country = "🇬🇧 United kingdom";
    if (RegExp(r'^\d{10$}').hasMatch(normalized)) {
      finalOutput = "Valid UK number: +44$normalized";
    } else {
      finalOutput = 'Invaild UK number(must be exactly 10 digits)';
    }
  } else {
    print('\n Unkown or unsupported country code!');
    return;
  }

  print("Counrty Detected: $country");
  print("Normalized number: $normalized");
  print("Validation Result $finalOutput");
}
