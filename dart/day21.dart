void main() {
  Map<String, dynamic> payload = {
    "name": "Abhinav",
    "email": "abhinavsingh@gmail.com",
    "age": "",
  };

  List<String> requiredFields = ["name", "email", "age"];

  String? error = validatePayload(payload, requiredFields);
  if (error != null) {
    print("❌ Error: $error");
  } else {
    print("✅ All required fields are present!");
  }
}

String? validatePayload(
  Map<String, dynamic> payload,
  List<String> requiredFields,
) {
  for (int i = 0; i < requiredFields.length; i++) {
    String field = requiredFields[i];

    if (!payload.containsKey(field) ||
        payload[field] == null ||
        payload[field].toString().trim().isEmpty) {
      return "Missing or empty field: '$field'";
    }
  }

  return null;
}
