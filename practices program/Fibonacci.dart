void main() {
  int n1 = 0;
  int n2 = 1;

  for (int i = 1; i < 10; i++) {
    print(n1);
    int next = n1 + n2;
    n1 = n2;
    n2 = next;
  }
}
//Fibonacci series print karo up to 10 numbers.