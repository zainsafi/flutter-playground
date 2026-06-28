//Show user whether he enter a vowel or consonant alphabit.
import 'dart:io';
void main(){
  print("Enter an alphabit");
  String? ch = stdin.readLineSync();
  if( ch == 'a'||
      ch == 'e' ||
      ch == 'i' ||
      ch == 'o' ||
      ch == 'u' ||
      ch == 'A' ||
      ch == 'E' ||
      ch == 'I' ||
      ch == 'O' ||
      ch == 'U' ){
        print("The alphabit is a vowel");
  }
  else{
    print("The alphabit is cosonant");
  }
}