// 2. Optional named parameters

// Here name is required positional parameter,
// rollno is required named parameter while age and 
// department are optional named parameters

void studentDetails(String name,{required int rollno,int? age,String? department}){
  print('name: $name');
  print('rollno: $rollno');
  if (age != null){
    print('age: $age');
  }
  if(department != null){
    print("Department: $department");
  }
}

void main(){
  print('student1 details: ');
  studentDetails('Ali', rollno: 23);

  print('student2 details: ');
  studentDetails('alia', rollno: 3,age: 15);

  print('student3 details: ');
  studentDetails('zain', rollno: 9,age: 22,department: 'Software Engieering');
}