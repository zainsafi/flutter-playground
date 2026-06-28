// In dart there are four types of constructors i-e
// 1. Default Constructor -> Have no parameters and automatically created
// by dart if not define explicitly
// 2. Parameterized Constructor
// 3. Named Constructor -> allows multiple constructors
// 4. Constant Constructor -> creates immutable objects.
// All instance variables must be final.
//Constructor must use the const keyword.

// 1. Default constructor
void main() {
  Student();
}

class Student {
  String? name;

  //Default constructor
  Student() {
    this.name = "Ahmad";
    print("The name of the student is $name");
  }
}
