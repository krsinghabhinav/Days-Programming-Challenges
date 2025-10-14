// import 'dart:convert';
// import 'dart:io';
// import 'package:http/http.dart' as http;

// Future<void> fetchDataWithRetry() async {
//   String url = "https://example.com/api/data"; // ✅ API endpoint
//   int maxRetries = 2; // ✅ 1 normal + 1 retry on timeout

//   // 🔁 Loop for retry logic
//   for (int i = 0; i < maxRetries; i++) {
//     try {
//       print("🔹 Attempt ${i + 1} to call API...");

//       // ✅ API Call with timeout of 5 seconds
//       final response =
//           await http.get(Uri.parse(url)).timeout(const Duration(seconds: 5));

//       // ✅ Check response status code
//       if (response.statusCode >= 200 && response.statusCode < 300) {
//         print("✅ Success: ${response.body}");
//         break; // 🔚 Exit loop if success
//       } else if (response.statusCode >= 400 && response.statusCode < 500) {
//         print("❌ Client Error (${response.statusCode}) — no retry.");
//         break; // 🔚 Stop retrying for 4xx
//       } else {
//         print("⚠️ Server Error (${response.statusCode}), will retry if allowed...");
//       }
//     } on SocketException {
//       print("🚫 No Internet connection.");
//       break; // 🔚 No retry for no internet
//     } on TimeoutException {
//       // ⚠️ Retry only if timeout and not last attempt
//       if (i < maxRetries - 1) {
//         print("⏰ Timeout — retrying once more...");
//       } else {
//         print("❌ Timeout again — stopping retries.");
//       }
//     } catch (e) {
//       print("⚠️ Unexpected error: $e");
//       break; // 🔚 Stop retrying on unexpected error
//     }
//   }
// }

// void main() {
//   fetchDataWithRetry(); // ▶️ Call the function
// }
