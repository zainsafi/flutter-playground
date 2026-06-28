//Classes and objects
import 'dart:io';
void main() {
  Calculation cal = Calculation();
  cal.setData();
  cal.getAdd();
  cal.getsub();
  cal.getmult();
  cal.getDiv();
  cal.getmod();
}

class Calculation {
  late int a, b;
  setData() {
    print("Enter the value of a");
    a = int.parse(stdin.readLineSync()!);
    print("Enter the value of b");
    b = int.parse(stdin.readLineSync()!);
  }

  getAdd() {
    print("The addition of the a and b is ${a + b}");
  }

  getsub() {
    print("The subtraction of the a and b is ${a - b}");
  }

  getmult() {

    print("The multiplication of the a and b is ${a * b}");
  }

  getDiv() {
    print("The division of the a and b is ${a / b}");
  }

  getmod() {
    print("The reamainder of the a and b is ${a % b}");
  }
}
