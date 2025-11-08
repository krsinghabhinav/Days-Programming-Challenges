void sayHello() {
  print("Hello");
  print("Hi");
  print("Nice to meet you");
}

void greet(String name) {
  print("Hello $name, nice to meet you!");
}

void main() {
  sayHello();
  greet("nico");
  int result = addnumber(12, 23);
  print("add two number ${result}");
  fullName("Abhinav", " Singh");
  String yourName = yourFullName("Abhinav", "Singh");
  print("Your Full Name: ${yourName}");
}

int addnumber(a, b) {
  return a + b;
}

void fullName(String firstName, String lastName) {
  print("${firstName} ${lastName}");
}

String yourFullName(String firstName, String lastName) {
  return firstName + " " + lastName;
}
