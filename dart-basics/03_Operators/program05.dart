//Types of operators
// Arithmetic Operators => (+,-,*,/,~/,%)
// Relational Operators => (<,>,==,<=,>=,!=)
// Type Test Operators  => (is,is!)
// Bitwise Operators    => (&,|,^,~,<<,>>,>>>(unsigne shift right))
// Assignment Operators => (=,??=)
// Logical Operators    => (&&,||,!)
// Conditional Operators => (condition ? expression1 : expersion2,expersion1 ?? exppression2	)
// Cascade Notation Operators => (..,..?)

// ignore_for_file: unnecessary_type_check

//Demomonstrating type test operators
void main(){
  int nums = 5;
  String st = "zain";

  print(nums is int);//true
  print(nums is! int);//false
  print(nums is String);//false

  print("");
  print(st is String);//true
  print(st is int);//false
  print(st is! String);//false

  print("");
  // type casting operator
  //as operator => converts (casts) an object to a specific type.
  dynamic value = "Hello";
  // TypeCast dynamic -> String
  String str= value as String;
  print(str);

}