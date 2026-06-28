// static variable => Static variables belong to the class itself, not to individual objects.

class Employee {
  static int totalEmployees = 0;
  String? name;

  Employee(this.name) {
    totalEmployees++;
  }
}

void main() {
  Employee("Ahmad");
  Employee("Bilal");
  Employee("Sufyan");

  print("Total Employees: ${Employee.totalEmployees}");
}
