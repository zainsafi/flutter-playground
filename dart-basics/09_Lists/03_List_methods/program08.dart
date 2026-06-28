//sorting and reordering
//sort and shuffle function
void main() {
  List<int> nums = [8, 5, 9, 15, 50, 25, 30];
  List<String> fruits = ['apple', 'kiwi', 'banana'];
  //sort([compare]) → Sorts the list (optionally with compare)
  print("Printing list in ascending order -> by default");
  nums.sort();
  print(nums);

  print("Sorting the strength in descending order");
  nums.sort((a, b) => b.compareTo(a));
  print(nums);

  print("Sorting string by their length");
  fruits.sort((a, b) => a.length.compareTo(b.length));
  print(fruits);

  print("shuffle([random]) → Randomly shuffles the list.");
  nums.shuffle(); //Every time new arrangement of the List will be printed.
  print(nums);

  //we can also print ascending or descending list by using reversed function
  List<int> num = [4, 2, 7, 8, 2, 9];
  print("\nprinting the new list: ");
  print(num);

  print("printing the new sorted list");
  num.sort();
  print(num);

  print("Reversing the List but in iterable form");
  print(num.reversed); //Iterable<int> Therefore

  print("In List Form");
  var reversedNum = num.reversed.toList();
  print(reversedNum); //Iterable to list

  print("printing the original list again");
  print(num); // [2, 2, 4, 7, 8, 9] 
  // this shows that sort() doesn't return a new list rather it sort the origal list
}
