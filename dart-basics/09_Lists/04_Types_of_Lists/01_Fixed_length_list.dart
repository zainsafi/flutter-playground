// There are two main types of Lists
// 1. Fixed Length List    2. Growable List

// 1.Fixed Length List -> In a fixed length list
// => The size is declared at creation.
// => The list cannot grow or shrink later.
// => Elements can be updated, but you cannot add or remove elements.
//Syntax: List<Type> listName = List.filled(length, value, growable: false);
void main(){
  List<int> nums1 = List.filled(5, 0,growable: false);//List length = 5,filled with 0s
  List<int> nums2 = List.filled(5, 0);//Still by default growable is false
  print("List num1: ");
  print(nums1);// Output: [0, 0, 0, 0, 0]
  nums1[2] = 99;//You can change an existing value
  print(nums1);// Output: [0, 0, 99, 0, 0]
  // nums.add(100); Error: Cannot add to a fixed-length list
  print("List num2: ");
  print(nums2);
}
