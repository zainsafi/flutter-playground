//Find sum of n numbers from 1 to n using for loop(increment operator)
//sum of numbers from 1 to n
//sum of even numbers from 1 to n
//sum of odd numbers from 1 to n
import 'dart:io';
void main(){
  int sum1 = 0,sum2 = 0,sum3 = 0;
  print('Enter a number: ');
  int num = int.parse(stdin.readLineSync()!);
  for(int i = 1;i <= num;i++){
    sum1 = sum1 + i;
    if(i % 2 == 0){
      sum2 = sum2 + i;
    }
    if(i % 2 != 0){
      sum3 = sum3 + i;
    }
  }
  print("The sum of numbers from 1 to $num is $sum1");
  print("The sum of even numbers from 1 to $num is $sum2");
  print("The sum of odd numbers from 1 to $num is $sum3");
}
