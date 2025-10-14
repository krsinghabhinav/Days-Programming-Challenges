import 'dart:typed_data';

void main() {
  List<List<int>> files = [
    [0x47, 0x49, 0x46, 0x38, 0x39, 0x61],
    [0x89, 0x50, 0x4E, 0x47, 0x0D, 0x0A],
    [0xFF, 0xD8, 0xFF, 0xE0, 0x00, 0x10],
  ];

  for (int i = 0; i < files.length; i++) {
    Uint8List bytes = Uint8List.fromList(files[i]);
    String result = detectImageType(bytes);
    print("File ${i + 1}: $result");
  }
}

String detectImageType(Uint8List bytes) {
  if (bytes.length >= 3 &&
      bytes[0] == 0x47 &&
      bytes[1] == 0x49 &&
      bytes[2] == 0x46) {
    return "GIF Image (GIF Decoder select hua)";
  }

  if (bytes.length >= 4 &&
      bytes[0] == 0x89 &&
      bytes[1] == 0x50 &&
      bytes[2] == 0x4E &&
      bytes[3] == 0x47) {
    return "PNG Image (PNG Decoder select hua)";
  }

  if (bytes.length >= 2 && bytes[0] == 0xFF && bytes[1] == 0xD8) {
    return "JPEG Image (JPEG Decoder select hua)";
  }
  return "Unknown Format (Decoder nahi mila)";
}
