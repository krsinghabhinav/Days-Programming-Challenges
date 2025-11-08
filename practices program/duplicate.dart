// void main() {
//   List<int> numbers = [1, 2, 3, 2, 4, 5, 3, 1, 6];

//   List uniqueList = [];

//   uniqueList = numbers.toSet().toList();
//   print("Unique list ==> $uniqueList");
// }

void main() {
  List<int> numbers = [1, 2, 3, 2, 4, 5, 3, 1, 6];

  List uniqueList = [];

  for (int i = 0; i < numbers.length; i++) {
    if (!uniqueList.contains(numbers[i])) {
      uniqueList.add(numbers[i]);
    }
  }

  print("unique list ==> $uniqueList");
}
