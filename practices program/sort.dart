void main() {
  List<String> fruits = ['Mango', 'Apple', 'Banana', 'Orange', 'Grapes'];
  List<int> num = [1, 2, 3, 4, 6,5, 7, 8, 9];
  fruits.sort();
  print("$fruits");

  // for (int i = 0; i < num.length; i++) {
  //   if (num.contains(5)) {
  //     print("container number 5");
  //   } else {
  //     print("not contain ");
  //   }
  // }

  bool exites = false;

  for (int i = 0; i < num.length; i++) {
    if (num[i] == 5) {
      exites = true;
      break;
    }
  }
  if (exites) {
    print('Number 5 exists in the list.');
  } else {
    print('Number 5 does not exist in the list.');
  }
}
