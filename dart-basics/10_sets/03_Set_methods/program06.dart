// Set Operations
void main() {
  Set<int> a = {2, 4, 6, 8, 10};
  Set<int> b = {1, 3, 5, 7, 9};
  Set<int> c = {1, 2, 3, 4, 5};

  //union
  print(
    "union(Set<E> other) → Returns a new set with all elements from both sets.",
  );
  var s = a.union(b).toList();
  print(s.toSet());
  s.sort();
  print(s.toSet());
  print('');

  //or you can also do it by using cascade operataion
  print(a.union(b).toList()..sort()); // return the modified set not void

  //intersection
  print("\nSet<E> other) → Returns a new set with common elements.");
  print(a.intersection(c));
  print(a.intersection(b));

  //difference
  print(
    "\ndifference(Set<E> other) → Returns a new set with elements not in other.",
  );
  print(a.difference(c));

  //lookup
  print("\nlookup(element) → Returns element if present (or null).");
  print(a.lookup(8));
  print(a.lookup(3));
}
