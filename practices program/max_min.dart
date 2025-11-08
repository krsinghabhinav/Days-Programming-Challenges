void main() {
  List<int> numbers = [5, 8, 2, 10, 3, 7];
  int max = numbers[0];
  int min = numbers[0];

  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }

    if (numbers[i] < min) {
      min = numbers[i];
    }
  }
  print("Max number ==> $max");
  print("MIn number ==> $min");
}
