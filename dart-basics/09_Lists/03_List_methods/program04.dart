//Searching and Filtering
void main(){
  List<int> nums = [10, 20, 30, 20];
  print("indexOf(element, [start]) → Returns the first index of element");
  print(nums.indexOf(20)); //By default start from index 0   // 1
  print(nums.indexOf(20,2));//start from index 2   // 3
    
  print("lastIndexOf(element, [start]) → Returns the last index of element");
  print(nums.lastIndexOf(20));    // 3

  print("indexWhere(test, [start]) → Returns the first index where test passes");
  print(nums.indexWhere((n) => n > 15)); // 1

  print("lastIndexWhere(test, [start]) → Returns the last index where test passes");
  print(nums.lastIndexWhere((n) => n > 15)); // 3

  print("contains(element) → true if element exists.");
  print(nums.contains(30));       // true

  print("any(test) → true if any element passes test");
  print(nums.any((n) => n > 25)); // true

  print("every(test) → true if all elements pass test");
  print(nums.every((n) => n > 5)); // true

  print("where(test) → Returns an iterable of elements passing test");
  print(nums.where((n) => n > 15)); // (20, 30, 20)

  print("firstWhere(test, [orElse]) → Returns the first element passing test");
  print(nums.firstWhere((n) => n > 15)); // 20

  print("lastWhere(test, [orElse]) → Returns the last element passing test.");
  print(nums.lastWhere((n) => n > 15));  // 20

  print("singleWhere(test, [orElse]) -> Returns the only element passing test (throws if multiple match).");
  print(nums.singleWhere((n) => n > 20)); //Only 30 matches
  print(nums.lastWhere((n) => n < 10,orElse: () => -1));
  // print(nums.singleWhere((n) => n > 10));//Multiple matches: causes error
  // print(nums.singleWhere((n) => n > 10,orElse: () => -1));//Return -1 if condition not match but still give error if multiple matches found
  print(nums.singleWhere((n) => n > 20 ));
}