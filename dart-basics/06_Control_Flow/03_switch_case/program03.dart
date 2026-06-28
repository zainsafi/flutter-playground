// Displays the number of days in a month (A little bit change in previous program)
import 'dart:io';
void main() {
  print('Enter the name of the month:');
  String? rawInput = stdin.readLineSync();
  if (rawInput == null || rawInput.trim().isEmpty) {
    print('Invalid input');
    return;
  }
  String month = toSentenceCase(rawInput.trim());  // Call function here
  switch (month) {
    case 'January':
    case 'March':
    case 'May':
    case 'July':
    case 'August':
    case 'October':
    case 'December':
      print('$month has 31 days.');
      break;
    case 'April':
    case 'June':
    case 'September':
    case 'November':
      print('$month has 30 days.');
      break;
    case 'February':
      print('February has 28 or 29 days.');
      break;
    default:
      print('Invalid month name.');
  }
}

// Function: Converts any string to Sentence case (e.g., "mARCH" → "March")
String toSentenceCase(String input) {
  if (input.isEmpty) return '';
  return input[0].toUpperCase() + input.substring(1).toLowerCase();
}