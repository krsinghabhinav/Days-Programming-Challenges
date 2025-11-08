bool expensiveCheck() {
  print('expensiveCheck called');
  return true;
}

void main() {
  bool a = false;
  if (a && expensiveCheck()) {
    print('both true');
  } else {
    print('not both true');
  }
}
