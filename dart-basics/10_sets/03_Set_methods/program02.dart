//Removing elements from the set
void main() {
  Set<int> nums = {1, 2, 3, 4, 5, 6, 7, 8, 9, 100, 200, 300, 1000, 2000, 3000};
  print("Removing an element from the set");
  nums.remove(6);
  print(nums);

  print("\nRemoving all elements in iterable: ");
  nums.removeAll({100, 200, 300});
  print(nums);

  print("/nRemoving element matching condition");
  print("Remove numbers greater than 1000: ");
  nums.removeWhere((n) => n >= 1000);
  print(nums);

  print("\nRetain elements presents in iterable while remove others: ");
  nums.retainAll({1, 2, 3, 4, 5});
  print(nums);

  print("\nRetain elements matching condition: ");
  nums.retainWhere((n) => n <= 3);
  print(nums);

  print("\nclearing or removing all the elements from the set: ");
  nums.clear();
  print(nums);
}
