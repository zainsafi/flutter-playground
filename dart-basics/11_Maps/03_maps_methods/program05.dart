// map conversions

void main() {
  Map<String, int> ages = {
    'Alice': 25,
    'Bob': 30,
    'Charlie': 22,
  };

  print('Original map: $ages');

  // 1. Map to another Map

  // Map.from() creates a new shallow copy of the map.
  // Map<String, int> agesCopy = Map<String, int>.from(ages);
  Map<String, int> agesCopy = Map.from(ages);
  print('\nMap copy: $agesCopy');

  agesCopy['David'] = 28;

  print('\nMap copy updated: $agesCopy');
  print('Original map: $ages');

  // Adding something to agesCopy does not add it to ages
  // because agesCopy is a separate Map object.



  // toString() returns a string representation of the map.
  String agesString = ages.toString();

  print('\nMap converted to String:');
  print(agesString);

  print('Runtime type: ${agesString.runtimeType}');

}

