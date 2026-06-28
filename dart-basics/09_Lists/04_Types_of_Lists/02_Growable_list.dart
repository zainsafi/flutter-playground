// 2. Growable List
// The list can increase or decrease in size during runtime.
// You can add, remove, and insert elements freely.
void main() {
  List<int> nums1 = []; //or
  List<Type> nums2 = List.empty(growable: true); //or
  List<int> nums3 = List.filled(5, 0, growable: true); //or
  List<int> nums4 = [4, 5, 6, 7];
  print(nums1);
  print(nums2);
  print(nums3);
  print(nums4);
}
