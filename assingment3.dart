
class Car {
  String brand;
  String model;
  int year;
  double milesDriven;

  Car(this.brand, this.model, this.year, this.milesDriven);

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    return  DateTime.now().year - year;
}

  static int numberOfCars =0;
}

void main() {
  Car.numberOfCars = 3;

  Car car1 = Car("Toyota", "Camry", 2020, 8000);
  car1.drive(2000);

  Car car2 = Car("Honda", "Civic", 2018, 6000);
  car2.drive(2000);

  Car car3 = Car("Ford","F-150", 2015, 14500);
  car3.drive(500);

  print("Car 1: ${car1.getBrand()} ${car1.getModel()} ${car1.getYear()} Miles: ${car1.getMilesDriven().toInt()} Age: ${car1.getAge()}");
  print("Car 2: ${car2.getBrand()} ${car2.getModel()} ${car2.getYear()} Miles: ${car2.getMilesDriven().toInt()} Age: ${car2.getAge()}");
  print("Car 3: ${car3.getBrand()} ${car3.getModel()} ${car3.getYear()} Miles: ${car3.getMilesDriven().toInt()} Age: ${car3.getAge()}");

  print("Total number of cars created: ${Car.numberOfCars}");
}

