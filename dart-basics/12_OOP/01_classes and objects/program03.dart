void main(){
  Student student = Student();
  student._name = 'zain';
  student._age = 3;
  print(student.name);
}

class Student{

  late String _name;
  late int _age;
  late int rollno;

  set name(String name){
    this._name = name;
  }

  String? get name{
    return _name;
  }

  void set age(int age) => this._age = age;
  int get age => _age;

}