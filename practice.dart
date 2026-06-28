import 'dart:io';

void main() {
  List<ArrayOfObj> arr = [];
  int count = 0;

  // List of objects are here
  for (int i = 0; i < 5; i++) {
    arr.add(ArrayOfObj());
  }

  for (int i = 0; i < 5; i++) {
    arr[i].setData();
  }

  for(int i = 0; i < 5; i++){
    arr[i].getData(count++);
  }

}

class ArrayOfObj {
  late int a;
  late int b;

  void setData() {
    print("Enter Two numbers: ");
    stdout.write("First Number: ");
    a = int.parse(stdin.readLineSync()!);

    stdout.write("Second Number: ");
    b = int.parse(stdin.readLineSync()!);
    print('');
  }

  void getData(int count) {
    print("The value at index $count are $a $b");
  }
}
