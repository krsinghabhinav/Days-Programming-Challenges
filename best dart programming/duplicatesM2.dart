void main() {
  List<int> numbers = [2, 5, 3, 2, 8, 5, 9, 3, 3];
  List<int> duplicates = [];
  for (int i = 0; i < numbers.length; i++) {
    int count = 0;
    for (int j = 0; j < numbers.length; j++) {
      if (numbers[i] == numbers[j]) {
        count++;
      }
    }

    if (count > 1) {
      bool alreadyAdd = false;
      for (int k = 0; k < duplicates.length; k++) {
        if (numbers[k] == numbers[i]) {
          alreadyAdd = true;
          break;
        }
      }
      if (alreadyAdd == false) {
        duplicates.add(numbers[i]);
      }
    }
  }
  print("Duplicate numbers are: $duplicates");
}
