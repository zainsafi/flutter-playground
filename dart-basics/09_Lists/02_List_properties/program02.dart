// iterator property => Returns an iterator for the list.
void main() {
  List<String> languages = ['Dart', 'Python', 'JavaScript', 'Swift'];

  // Get the iterator from the list
  Iterator<String> iterator = languages.iterator;

  // Manually loop through elements using the iterator
  while (iterator.moveNext()) {
    String currentLanguage = iterator.current;
    print("1.Current location of the iterator");
    print(currentLanguage);
  }
  
    print("\n2.Hashcode of the iterator: ");
    print(iterator.hashCode);

    print("\n3.Hashcode of the list");
    print(languages.hashCode);
  
}

