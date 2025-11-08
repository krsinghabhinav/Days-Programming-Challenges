void main() {
  int num = 12345;
  int reverse = 0;
  while (num > 0) {
    int rem = num % 10;
    reverse = reverse * 10 + rem;
    num = num ~/ 10;
  }

  print("reverse: $reverse");
}
//Ek number input lo aur uska reverse number print karo (e.g., 123 → 321).