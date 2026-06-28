// input size and elements of the list from the user and then print list.
// second approach
import 'dart:io';

void main() {
  print("enter the size of the list: ");
  int n = int.parse(stdin.readLineSync()!);
  List<int> list = List.filled(n, 0);
  print("enter the number of element in the list: ");
  for (int i = 0; i < n; i++) {
    list[i] = int.parse(stdin.readLineSync()!);
  }
  print(list);
}
