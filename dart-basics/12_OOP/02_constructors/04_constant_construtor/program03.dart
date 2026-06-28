// 4. constant constructor -> creates immutable objects.
// All instance variables must be final.
// Constructor must use the const keyword.
// An immutable object is an object whose data cannot be changed after it is created.

void main() {
  const Person p1 = Person("Zain", 20);

  print(p1.name);
  print(p1.age);
}

class Person {
  final String name;
  final int age;

  const Person(this.name, this.age);
}
