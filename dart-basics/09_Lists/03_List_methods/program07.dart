//Explaining map,list function and lazy evaluation step by step
void main() {
  // Step 1: Create a list of numbers. This is a normal, eager list.
  List<int> originalNumbers = [1, 2, 3, 4, 5];

  print('--- Program Start ---');
  print('1. Original numbers created: $originalNumbers');

  // Step 2: Apply the .map() transformation.
  // This line defines 'how' each number should be processed,
  // but it does NOT process them yet. This is the LAZY part.
  Iterable<int> transformedIterable = originalNumbers.map((number) {
    // This print statement is inside the transformation function.
    // It will ONLY execute when the 'number' is actually being transformed.
    print('  DEBUG: Performing heavy calculation on: $number');
    // Simulate a slow operation by taking a moment
    // For a real program, this might be a complex math problem,
    // a database query, or network request.
    // Future.delayed(Duration(milliseconds: 100)).then((_) => print('Done calculating for $number'));
    return number * 2 + 100; // A simple transformation
  });

  print(
    '2. .map() called. A lazy Iterable was created. No calculations performed yet.',
  );
  print(
    '''   The content of transformedIterable is: $transformedIterable (This just shows 
  its type, not computed values)''',
  );

  // Step 3: We are now going to access the results by converting to a List.
  // This is the point where the LAZY evaluation stops being lazy
  // and the actual calculations defined in the .map() function run.
  print('\n3. Calling .toList() on the lazy Iterable...');
  List<int> finalResultList = transformedIterable.toList();

  print('4. .toList() finished. All calculations are now done.');
  print('   Final result list: $finalResultList');

  // Step 5: What if we iterate directly over the lazy Iterable again?
  // The calculations will happen 'again' for each element as we iterate.
  print(
    '\n5. Iterating over the transformedIterable again (lazy re-evaluation):',
  );
  for (var value in transformedIterable) {
    print('   Accessed value: $value');
  }

  print('--- Program End ---');
}
