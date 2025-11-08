class Car {
  String model;
  int year;
  Car(this.model, this.year);

  void drive() {
    print("Driving $model of year $year");
  }

  void stop() {
    print("Stopping $model of year $year");
  }
}

void main(List<String> args) {
  Car myCar = Car("Toyota", 2020);
  Car scar = Car("Thar", 2025);
  myCar.drive();
  scar.stop();
}
