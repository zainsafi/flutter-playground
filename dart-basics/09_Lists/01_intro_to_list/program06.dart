// input size and elements of the list from the user and then print list
// First Approach
import 'dart:io';

void main() {
  List<int> list = [];
  print("enter the size of the list");
  int n = int.parse(stdin.readLineSync()!);
  print("enter the values in the list: ");
  for (int i = 0; i < n; i++) {
    int value = int.parse(stdin.readLineSync()!);
    list.add(value);
  }
  print(list);
}
