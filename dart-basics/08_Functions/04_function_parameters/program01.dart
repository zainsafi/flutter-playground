// types of parameters
// In Dart, parameters are commonly divided into three types:
// Required Positional	()	
// Optional Positional	[]	
// Named Parameters	{}	


// Dart doesn't support overloading as cpp
// Instead, Dart provides similar behavior using:
// 1. Optional Positional Parameters
// 2. Optional Named Parameters
// 3. Default Parameters


// 1. Optional Positional Parameters
//Here num1 is required positional parameter while
// num2 and num3 are optional positional parameters
void calculate(int num1,[int? num2,int? num3]){
    if(num2 == null && num3 == null){
        print('sum is $num1');
    }
    else if(num3 == null){
        print('sum is ${num1 + num2!}');
    }
    else{
        print('sum is ${num1 + num2! + num3}');
    }
}

void main(){
    calculate(10); // 10
    calculate(10,20); // 30
    calculate(10,20,30); // 60
}

