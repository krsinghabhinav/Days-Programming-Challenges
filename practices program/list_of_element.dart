void main() {
  // List banana
  List<int> numbers = [1, 2, 3, 4, 5];

  int sum = 0;

  for (int i = 0; i < numbers.length; i++) {
    sum = sum + numbers[i];
  }

  print('List elements: $numbers');
  print('Sum of all elements: $sum');
}
