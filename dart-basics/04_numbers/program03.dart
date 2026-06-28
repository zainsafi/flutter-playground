//methods of numbers
import 'dart:math';

void main(){
  num num1 = 5;
  num num2 = -10.6;
  num num3 = 8.25;
  num num4 = 0;

// abs() function
// abs() returns the absolute (non-negative) value of a number.
// Positive numbers remain unchanged, while negative numbers
// are converted to their positive equivalent.
  print("Absolute Value:");
  print(num2.abs());//10.6
  print(-2.abs());//-2
  print((-2).abs());//2
  print((-99.109).abs());//99.109

  //floor function
  //floor function print whole number nearest to the number and also smaller than that number
  print("\nfloor function");
  print(num2.floor());//-11
  print(num3.floor());//8

  //ceil function
  //ceil function work inversly to that of the floor function
  //It also print whole number to it but greater than that number
  print("\nceiling the values");
  print(num2.ceil());//-10
  print(num3.ceil());//9

  //round function
  //round function round off the number according to rounding off rules
  print("\nRounding numbers");
  print(num3.round());//8
  print(num2.round());
  print(10.55673.round());

  // truncate() - Removes the decimal part,returning an integer
  print("\nUsing truncate function");
  print(num3.truncate());

  //compareTo()
  print("\ncomparing values");
  print(num1.compareTo(10));//-1 bcz num1 < 10
  print(2.compareTo(num4));//1 bcz 2 > num4

  //remainder
  print("\nremainder: ");
  print(5.remainder(2));//1
  print(10.remainder(2));//0
  print(15.remainder(10));//5

  //toDouble
  print("\nChanging int to double: ");
  print(num1.toDouble());
  print(1000.toDouble());

  //toInt
  print("\nChanging double to int");
  print(num2.toInt());

  //toString
  print("\nConvert number to string");//doesn't change the original value just return a new string
  num1.toString();//doesn't store the result
  print(num1.runtimeType);//int
  var num5 = num1.toString();
  print(num5);print(num5.runtimeType);

  print("\nmin function");
  //min function
  print(min(10, 20));
  print(min(20, min(25, 15)));
  
  //max function
  print("\nmax function");
  print(max(30, 40));

  // sqrt()
  print("\nsqrt function");
  print(sqrt(9));//3.0
  print(sqrt(100));
  //no built in method for cuber root so you can calculate it using pow function

  //pow()
  print("\npow function");
  print(pow(5, 2));

  //sin()
  //Should pass value in radians not in degrees
  //so if you have value in degrees first convert it into radian 
  //and for that we use "toRadians" function e.g sin 90
  print("\n sin function");
  double radians = 90 *(pi / 180);
  print(radians);
  print(sin(radians));

  //cos function
  //Should pass value in radians not in degrees
  //so if you have value in degrees first convert it into radian 
  //and for that we use "toRadians" function
  print("\n cos function");
  print(cos(radians));

  //tan function -> also take radians
  print("\n tan function");
  print(tan(radians));

  //pi
  print("\nValue of pi: ");
  print(pi);

  //Random()
  //generate random numbers from 0 to the max
  print("\nGenerating random numbers");
  print(Random().nextInt(10));
  print(Random().nextDouble());//generate value b/w 0.0 and 1.0 i-e 0.0 <= x < 1.0
  print(Random().nextDouble() * 10);//nextDouble() doesn't take any argument
  
}