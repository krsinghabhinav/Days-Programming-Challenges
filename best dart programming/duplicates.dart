void main() {
  List<int> numbers = [2, 4, 6, 2, 8, 6, 10, 6, 4];
  List<int> duplicates = [];

  for (int i = 0; i < numbers.length; i++) {
    int count = 0;

    for (int j = 0; j < numbers.length; j++) {
      if (numbers[i] == numbers[j]) {
        count++;
      }
    }

    if (count > 1 && !duplicates.contains(numbers[i])) {
      duplicates.add(numbers[i]);
    }
  }
  print("Number that appear more then once: $duplicates");
}
