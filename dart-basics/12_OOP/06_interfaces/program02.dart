//Interface example

void main() {
  Car car = Car();
  car.changeGear(2);
  print("Car Gear: ${car.gear}");

  //Before Speeding Up
  print("Car Speed (Before Speeding Up): ${car.speed}");

  // Speeding Up
  car.speedUp(20);
  print("Car Speed (After Speeding Up): ${car.speed}");

  //Speeding down by applying breaks
  car.applyBreak(5);
  print("Car Speed (After breaking): ${car.speed}");
}

class Vehicle {
  void changeGear(int a) {}
  void speedUp(int a) {}
  void applyBreak(int a) {}
}

class Car implements Vehicle {
  int gear = 0;
  int speed = 0;

  @override
  void changeGear(int newGear) => gear = newGear;

  @override
  void speedUp(int increasedSpeed) {
    speed += increasedSpeed;
  }

  @override
  void applyBreak(int decreasedSpeed) {
    speed -= decreasedSpeed;
  }
}
