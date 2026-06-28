//searching and filtering
void main() {
  Set<int> nums = {30, 20, 40, 50, 60};
  //contains()
  print(nums.contains(40)); //true
  print(nums.contains(99)); //false
  print('');

  //containsAll()
  print(nums.containsAll({20, 40})); //true
  print(nums.containsAll({20, 90})); //false
  print('');

  //any()
  print(nums.any((n) => n == 20)); //true
  print(nums.any((n) => n < 20)); //false
  print('');

  //every()
  print(nums.every((n) => n % 2 == 0)); //true
  print(nums.every((n) => n % 2 != 0)); //false
  print('');

  //where()
  print(nums.where((n) => n > 30)); //(40,50,60);
  print('');

  //firstWhere()
  print(nums.firstWhere((n) => n > 20)); //30
  print(nums.firstWhere((n) => n > 100, orElse: () => -1)); //-1
  print('');

  //lastWhere()
  print(nums.lastWhere((n) => n > 20)); //60
  print('');

  //singleWhere()
  print(nums.singleWhere((n) => n % 40 == 0)); //40
}
