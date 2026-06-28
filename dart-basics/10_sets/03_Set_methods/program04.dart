//iteration and transformation in sets
void main() {
  Set<int> nums = {4, 6, 8, 10, 0};
  int i = 0;
  print("forEach(action) → Executes action for each element.");
  nums.forEach(print); //or
  print('');
  nums.forEach((n) => print(n));
  nums.forEach((n) {
    print("The sqare of the element at index $i i-e $n is ${n * n}");
    i++;
  });

  print("\nmap(transform) → Applies transform to each element.");
  print(nums.map((n) => n * 2).toSet()); // you can do it directly
  // or you can store it as:
  var double = nums.map((n) => n + n);
  print(double);
  print(double.toSet());

  print(
    "\nexpand(transform) → Expands each element into zero or more elements.",
  );
  print(nums.expand((n) => [n, n - 1]));

  print(
    "\nreduce(combine) → Combines elements to a single value (using combine).",
  );
  print(nums.reduce((a, b) => a + b));

  print("\nfold(initial, combine) → Like reduce, but with an initial value.");
  // print(nums.fold(1000, (a,b) => a + b)); //give error -> null safety
  print(
    nums.fold<int>(1000, (a, b) => a + b),
  ); //<int> tell dart that both a and b are non nullable int //or
  var sumWithInit = nums.fold(99, (a, b) => a + b);
  print(sumWithInit);

  print("\ntake(n) → Returns the first n elements.");
  print(nums.take(3));

  print("\nskip(n) → Skips the first n elements.");
  print(nums.skip(2));

  print("\ntakeWhile(test) → Takes elements until test fails.");
  print(nums.takeWhile((n) => n < 3));
  print(nums.takeWhile((n) => n > 3));

  print("\nskipWhile(test) → Skips elements until test fails.");
  print(nums.skipWhile((n) => n < 2));
}
