//Getter and Setter
// 1. Default getter and setter
// 2. custom getter and setter

// We can also able to access private variables in this because 
//in dart privacy is library(file) based, not class-based.

void main() {
  Student student = Student();
  student.name = "Zain"; // Calling Custom Setter to set value
  student.age = 21; // Calling Custom Setter to set value
  student.rollNo = 4; // Calling default Setter to set value

  print("Name: ${student.name}"); // Calling Custom Getter to get value
  print("Age: ${student.age}"); // Calling Custom Getter to get value
  print("RollNo: ${student.rollNo}"); // Calling default Getter to get value
}

class Student {
  // private instance variable for its own library
  String? _name;
  int? _age;
  int? rollNo; // Instance Variable with default Getter and Setter

  //custom setter and getter for name
  set name(String nm) {
    _name = nm;
  }

  String? get name {
    return _name;
  }

  //custom setter and getter for age using arrow or lambda function
  void set age(int age) => this._age = age;
  int? get age => _age; // or simply get age => _age;

  // void setRollNo(int rollNo){
  //   this.rollNo = rollNo;
  // }

  // int getRollNo(){
  //   return rollNo!;
  // }
}
