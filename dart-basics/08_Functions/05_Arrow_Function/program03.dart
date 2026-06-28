//Two ways to define lambda function

//Method 1
Function addTwoNumbers = (int a, int b) {
  print("$a + $b = ${a + b}");
};

//best way to write like this => here we specify the return 
// type aswell as the type of argument it will recieve
int Function(int) multiplyByFour = (int num) {
  return num * 4;
};
//or you can also use var
// var multiplyByFour = (int num){
//   return num * 4;
// };

// or you can also write the addTwoNumbers function like this
//(best and most common way of writting a method in dart)
// int addTwoNumbers(int a,int b){
//   return a + b;
// }

//Method 2 -> Using short hand method or Fat arrow

int Function(int,int) subtractNumbers = (int a, int b) => a - b;
// Function subtractNumbers = (int a, int b) => a - b;

var divideNumbers = (double a, double b) => print(a / b);

// Normal Function
void addition(int a, int b) {
  print(a + b);
}

void main() {
  //calling method 1 lambda function
  addTwoNumbers(4, 5); //9
  print(multiplyByFour(5)); //20

  //calling method lambda function
  print(subtractNumbers(10, 5)); //5
  divideNumbers(50, 2); //25.0

  //calling Normal Function
  addition(9, 9); //18
}
