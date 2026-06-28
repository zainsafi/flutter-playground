//sublists and ranges
//sublist, getRange, setRange and replaceRange functions
void main() {
  List<int> num = [3, 5, 6, 7, 1, 9];
  print("printing the original list: ");
  print(num);

  print("sublist(start, [end]) → Returns a sublist from start to end-1");
  var updNum = num.sublist(
    4,
  ); //take sublist from list i-e from index 4 to the end(by default)

  print("printing sublist from index 4 to the end index: ");
  print(updNum);

  print("printing sublist from index 3 to the end index");
  print(num.sublist(3));

  print("printing sublist from index 0 to index 3");
  print(num.sublist(0, 4));

  print("\nprinting the original list again");
  print(num);

  print(
    "getRange(start, end) → Returns an iterable of elements from start to end-1",
  );
  print(num.getRange(1, 4)); //return iterable not a list
  print(num.getRange(3, num.length).toList()); //iterable to list

  print("\nprinting the original list again: ");
  print(num);

  print(
    "setRange(start, end, iterable) → Copies elements from iterable into start to end-1 (fixed length)",
  );
  //num.setRange(2, 4, [30,40,50,60]);//Range exceed so it will replace only the first two elements of the iterable i-e 50 and 60 will be skipped.
  num.setRange(3, num.length, [30, 40, 50]);
  print("updated list after setRange function");
  print(num);

  print(
    "\nreplaceRange(start, end, iterable ) -> Replaces a range with new elements (length can differ).",
  );
  num.replaceRange(3, num.length, [1, 1, 1, 1, 1, 1]);
  print("Update list after replaceRange function: ");
  print(num);
}
