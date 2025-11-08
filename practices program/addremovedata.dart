void main() {
  // List banana
  List<String> fruits = ['Apple', 'Banana', 'Mango'];

  print('Original List: $fruits');

  // Naya element add karna
  fruits.add('Orange');
  print('After adding element: $fruits');

  // Element remove karna
  fruits.remove('Orange');
  print('After removing element: $fruits');
}
