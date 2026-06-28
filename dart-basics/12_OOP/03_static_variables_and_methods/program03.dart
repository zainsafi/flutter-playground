//static variable and static function/methods

void main() {
  Demo d1 = Demo();
  Demo d2 = Demo();

  Demo.sety();
  d1.seta(10);
  Demo.sety();

  print('');
  
  d2.seta(15);
  d1.showdata();
  d2.showdata();
  Demo.sety();
}

class Demo {
  //Declaring variables
  late int a;
  static int y = 0;

  //Function to initialize a
  void seta(int a) {
    this.a = a;
    y++;
  }

  //static Function to initialize y
  static void sety() {
    print("The value of y is: $y");
  }

  void showdata() {
    print("The value of a is $a");
    print("The value of y is $y");
  }
}
