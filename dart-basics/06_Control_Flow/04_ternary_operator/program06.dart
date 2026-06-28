//Greeting message using ternary operator
// void main(){
//   int time = DateTime.now().hour;
//   print(time);
//   String Greetings = time >= 5 && time < 12 ? "Good Morning":
//   time >=12 && time < 18 ? "Good Afternoon" :
//   time >= 18 && time < 22 ? "Good Evening" : "Good Night";
//   print(Greetings);
// }
//////////////////////////////////////// OR //////////////////////////////////////////////////////////////
/* void main(){
  DateTime time = DateTime.now();
  int now = time.hour;
  print(now);
  String Greetings = now >= 5 && now < 12 ? "Good Morning":
  now >=12 && now < 18 ? "Good Afternoon" :
  now >= 18 && now < 22 ? "Good Evening" : "Good Night";
  print(Greetings);
} */
//////////////////////////////////////// OR //////////////////////////////////////////////////////////////
void main(){
  // var time = DateTime.now().hour; or
  var time = DateTime.now();
  int currenttime = time.hour;
  print(currenttime);
  String Greetings = currenttime >= 5 && currenttime < 12 ? "Good Morning":
  currenttime >=12 && currenttime < 18 ? "Good Afternoon" :currenttime >= 18 && currenttime < 22 ? "Good Evening" : "Good Night";
  print(Greetings);

}