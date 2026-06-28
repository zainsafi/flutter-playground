// iterating elements in list using foreach
// forEach() is a built-in method of collections (such as List, Set, etc.) 
//that executes a function for every element in the collection.
import 'dart:io';

void main() {
  List<int> numbers = [5, 6, 8];
  //print the list
  numbers.forEach(print);
  // or
  // function literal = funciton having no name.
  numbers.forEach((number) => print(number));
  // or
  numbers.forEach((number) {
    print(number);
  });
  //to print the list in one line
  numbers.forEach((number) {
    stdout.write('$number ');
  });
  //to print the list in one line i-e it join the list elements
  // join converts all elements into a single string.
  print("");
  print(numbers.join(" "));
}
