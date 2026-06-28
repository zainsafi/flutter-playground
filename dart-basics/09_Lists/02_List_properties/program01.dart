//Some basic properties of lists are: 
void main(){
  List<int> num = [9,4,6,1,3,5];
  List<String> st = ["Hi"];
  List<double> db = [];
  List<int?> n = [null,2,null,3,null,0];
  List<String?> s = ["zain",null,'khan'];
  
  print("1.length of the list is ${num.length}");
  
  print("\n2.First element of the list is ${num.first}");
  
  print("\n3.Last element of the list is ${num.last}");
  
  print("\n4.Return True if the list is empty: ${num.isEmpty}");
  
  print("\n5.Return true if the list is not empty: ${num.isNotEmpty}");
  
  print("\n6.Reverse of the list is ${num.reversed}");
  
  print('\n7.print only the single element list: ${st.single}');
  
  print('\n8.print only the single or Null element list: ${st.singleOrNull}');//output: Hi
  
  print('\n9.print only the single or Null element list: ${db.singleOrNull}');//output: null
  
  print("\n10.if the list is not null then print it's first element ${num.firstOrNull}");
  
  print("\n11.if the list is not null then print it's lastl element ${num.lastOrNull}");
  
  print("\n12.The hashcode of the list is: ${num.hashCode}");
  
  print("\n13.Runtime type of the num list: ${num.runtimeType}");
  
  print("\n14.Runtime type of the st list: ${st.runtimeType}");
  
  print("\n15.Elements and their indeces: ${num.indexed}");
  
  print("First Element and their index: ${num.indexed.first}");
  
  print("Last Element and their index: ${num.indexed.last}");;
 
  // Acessing elements by index
  print("\n16.Element at index 2: ${num[2]}");
  
  // updating an element in a list
  num[3] = 49;
  
  print("\nUpdated List: $num");
  
  print("\n17.Non null elements of the list are: ");//return type is iterable
  print(n.nonNulls);
  print(s.nonNulls);
  
}