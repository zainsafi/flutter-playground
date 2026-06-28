//  Iteration & Transformation in Dart Lists
// => is called fat arrow and it is often use to execute a single
// statement function called shorthand or arrow function which
// return the statements on it's right hand side.
void main() {
  List<int> nums = [1, 2, 8, 5, 6, 0];

  print("forEach(action) → Executes action for each element.");
  nums.forEach((n) => print(n)); // 1, 2, 8, 5, 6, 0

  print("map(transform) → Applies transform to each element.");
  var doubled = nums.map((n) => n * 2); // (2,4,6,16,10,12,0)
  print(doubled);

  print("expand(transform) → Expands each element into zero or more elements.");
  var expanded = nums.expand(
    (n) => [n, n],
  ); // (1, 1, 2, 2, 3, 3,8,8,5,5,6,6,0,0)
  print(expanded);

  print(
    "reduce(combine) → Combines elements to a single value (using combine).",
  );
  var sum = nums.reduce((a, b) => a + b); // 22
  print(sum);

  print("fold(initial, combine) → Like reduce, but with an initial value.");
  var sumWithInit = nums.fold(
    10,
    (a, b) => a + b,
  ); // 32 (10 + 1 + 2 + 8 + 5 + 6 + 0)
  print(sumWithInit);

  print("take(n) → Returns the first n elements.");
  print(nums.take(3));

  print("skip(n) → Skips the first n elements.");
  print(nums.skip(2));

  print("takeWhile(test) → Takes elements until test fails.");
  print(nums.takeWhile((n) => n < 3));

  print("skipWhile(test) → Skips elements until test fails.");
  print(nums.skipWhile((n) => n < 2));
}
