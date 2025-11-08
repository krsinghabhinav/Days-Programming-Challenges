// A variable me string "123" hai, use integer me convert karke 2 se multiply karo.
void main() {
  String numberString = "123";
  int number = int.parse(numberString);
  int result = number * 2;
  print('Result: $result');
}
