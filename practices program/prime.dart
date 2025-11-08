void main() {
  int number = 1;
  int count = 0;
  if (number <= 1) {
    print('$number is not a Prime Number.');
  } else {
    for (int i = 1; i <= number; i++) {
      if (number % i == 0) {
        count++;
      }
    }

    if (count == 2) {
      print('$number is a Prime Number.');
    } else {
      print('$number is not a Prime Number.');
    }
  }
}
