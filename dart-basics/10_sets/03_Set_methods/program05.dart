// Conversion & Utility
//toList,toSet,join,asMap and followedBy functions
void main() {
  Set<int> nums = {1, 2, 3, 4, 5, 6};
  List<String> names = ['Ali', 'Hasnain', 'Amir'];
  print("Original num Set: ");
  print(nums);
  print('');

  //toSet()
  var copyNums = nums.toSet();
  print(copyNums);
  print('');

  //toList()
  var copyNum = nums.toList();
  print(copyNum);
  print('');

  //join()
  print(nums.join());
  print("print the nums List with no spaces");
  print(nums.join(''));
  print("printing the nums with spaces ");
  print(nums.join(" "));
  print("printing the nums with comma separator");
  print(nums.join(','));
  print("printing the nums with arrow separator");
  print(nums.join("->"));
  print("printing the string of names with comma separator");
  String stNames = names.join(",");
  print(stNames);
  print('');

  //asMap()
  // print(nums.asMap());No meaning of creating this
  print(names.asMap());
  names.add("Hamza");
  print("printing the updated names List");
  print(names);
  print("converting list into map");
  Map<int, String> mapNames = names.asMap();
  print(mapNames);
  print("printing the keys of the map");
  print(mapNames.keys.toList());
  print("Printing the elements or values of the Map");
  print(mapNames.values.toList());

  print("\nfollowedBy(iterable) → Concatenates another iterable.");
  //lazy evaluation
  Set<int> num1 = {0, 1};
  Set<int> num2 = {2, 3, 4};
  print(num1.followedBy(num2));
  print("Concatinating another list");
  print(num2.followedBy([100, 200, 300]));
}
