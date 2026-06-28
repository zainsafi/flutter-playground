//some of the basic elements of the sets are:
//Adding elements to the set
void main() {
  Set<int> nums = {2, 3, 4, 5, 8};

  print("Adding elements to the set at last index: ");
  nums.add(10);
  print(nums);

  print("\nAdding multiple elements into the set");
  // nums.addAll([100,200,300]);
  nums.addAll({200, 300, 400});
  //both these methods works fine.
  print(nums);
}
