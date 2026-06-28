//explaining foreach,map and toList function
//foreach doesn't return a new array
//map return a new array
//toList() is used for converting an Iterable into a List
import 'dart:io';

void main() {
  List<int> nums = [2, 4, 5, 6, 7, 9];
  print("printing the original array: ");
  print(nums);
  print("forEach(action) → Executes action for each element.");
  print("modification 1");
  nums.forEach(print);
  print("modification 2");
  nums.forEach((n) => stdout.write("${n + 10} "));
  print("");
  print("modification 3");
  nums.forEach((n) => stdout.write("${n * 2} "));
  print(
    "\nprinting the original array again which show no change mean foreach doesn't modify the original array: ",
  );
  print("$nums");

  //map method
  print(
    "map method->lazy evaluation.so therefore we have used .toList with it",
  );
  print("printing update0");
  var update0 = nums.map(
    (n) => n * 0,
  ); //Here update0 is an iterable<int> not a list
  //here print function forces the update0 and will print the updated result.
  //And therefore the result will look like (0,0,0,0,0,0)
  print(update0);
  print("printing update1");
  var update1 = nums.map((n) => n + 100).toList();
  print(update1);
  //orrrrrrrrrrrrrrrrrrrrrrrrr
  print("printing update2");
  List<int> update2 = nums.map((n) => n + 200).toList();
  print(update2);
  //orrrrrrrrrrrrrrrrrrrrrrrrr
  print("printing update3");
  Iterable<int> update = nums.map((n) => n * 5);
  var saveUpdate = update.toList();
  print(saveUpdate);
}
